# typed: false
# frozen_string_literal: true

# == Schema Information
#
# Table name: likes
#
#  id             :bigint           not null, primary key
#  recipient_type :string(510)      not null
#  created_at     :timestamptz
#  updated_at     :timestamptz
#  recipient_id   :bigint           not null
#  user_id        :bigint           not null
#
# Indexes
#
#  likes_user_id_idx  (user_id)
#
# Foreign Keys
#
#  likes_user_id_fk  (user_id => users.id) ON DELETE => cascade
#

class Like < ApplicationRecord
  counter_culture :recipient

  belongs_to :recipient, polymorphic: true
  belongs_to :user
  has_many :notifications, as: :trackable, dependent: :destroy

  after_create :save_notification

  def self.find_by_resource!(resource)
    unless resource.likeable?
      raise Annict::Errors::NotLikeableError
    end

    recipient = case resource
    when Record
      resource.episode_record? ? resource.episode_record : resource.work_record
    else
      resource
    end

    find_by(recipient: recipient)
  end

  def send_notification_to(user)
    unless recipient.is_a?(EpisodeRecord)
      return
    end

    Deprecated::EmailNotificationService.send_email(
      "liked_episode_record",
      user,
      user.id,
      recipient.id
    )
  end

  private

  def save_notification
    return if user.id == recipient.user.id

    Notification.create do |n|
      n.user = recipient.user
      n.action_user = user
      n.trackable = self
      n.action = "likes.create"
    end
  end
end
