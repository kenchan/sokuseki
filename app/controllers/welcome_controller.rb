class WelcomeController < ApplicationController
  def index
    if signed_in?
      @activities = current_user.activities
      @yearly_activities = (0..12).each_with_object([]) do |month_amount, activities|
        target_month = month_amount.month.ago.year.to_s + "-" + sprintf("%02d", month_amounth.month.ago.month.to_s)
        activity = { on: target_month, activity: @activities.on_month_ago(month_amount) }
        activities.push(activity)
      end
      @yearly_activities.reverse!

      current_user.authentications.each(&:fetch_activities) if @activities.count.zero?
    end
  end
end
