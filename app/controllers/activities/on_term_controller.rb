class Activities::OnTermController < ApplicationController
  before_action :redirect_to_root_unless_signed_in

  def index
    @term_string = params[:term_string]
    @activities = current_user.activities.on(@term_string)
  end
end
