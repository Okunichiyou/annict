# frozen_string_literal: true
# == Schema Information
#
# Table name: collection_items
#
#  id              :bigint           not null, primary key
#  aasm_state      :string           default("published"), not null
#  comment         :text
#  deleted_at      :datetime
#  position        :integer          default(0), not null
#  reactions_count :integer          default(0), not null
#  title           :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  collection_id   :integer          not null
#  user_id         :integer          not null
#  work_id         :integer          not null
#
# Indexes
#
#  index_collection_items_on_collection_id              (collection_id)
#  index_collection_items_on_collection_id_and_work_id  (collection_id,work_id) UNIQUE
#  index_collection_items_on_deleted_at                 (deleted_at)
#  index_collection_items_on_user_id                    (user_id)
#  index_collection_items_on_work_id                    (work_id)
#
# Foreign Keys
#
#  fk_rails_...  (collection_id => collections.id)
#  fk_rails_...  (user_id => users.id)
#  fk_rails_...  (work_id => works.id)
#

class CollectionItem < ApplicationRecord
  include AASM

  acts_as_list scope: :collection_id

  aasm do
    state :published, initial: true
    state :hidden

    event :hide do
      transitions from: :published, to: :hidden
    end
  end

  belongs_to :user
  belongs_to :collection, touch: true
  belongs_to :work
  has_many :reactions, dependent: :destroy

  validates :title, presence: true, length: { maximum: 50 }
  validates :comment, length: { maximum: 1000 }
end
