# typed: false
# frozen_string_literal: true

class ProfilesController < ApplicationV6Controller
  def show
    Rails.logger.info "[For Measure] start: ProfilesController#show"
    controller_start_time = Time.now

    set_page_category PageCategory::PROFILE

    @user = User.only_kept.find_by!(username: params[:username])
    @profile = @user.profile

    @activity_groups = @user
      .activity_groups
      .order(created_at: :desc)
      .page(params[:page])
      .per(30)
      .without_count

    @work_ids = if @activity_groups.present?
      Rails.logger.info "[For Measure] start: @activity_groups.flat_map.with_prelude"
      start_time = Time.now
      @activity_groups.flat_map.with_prelude { |ags| ags.first_item.work_id }.uniq
      Rails.logger.info "[For Measure] work_ids took: #{(Time.now - start_time).round(3)} seconds"
      Rails.logger.info "\e[1;34m[For Measure] \e[0m\e[1;32mProfilesController#show took: \e[0m\e[1;33m#{(Time.now - controller_start_time).round(3)} seconds\e[0m"
    else
      []
    end
  end
end
