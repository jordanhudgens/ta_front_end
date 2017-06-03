class StaticController < ApplicationController
  def home
    if params[:filter]
      @hand_raises = HandRaiseApiConnector.get_by_filter(params[:filter])
    else
      @hand_raises = HandRaiseApiConnector.get_by_filter('pending')
    end

    if params[:id]
      @hand_raise = HandRaiseApiConnector.get_by_id(params[:id])
    end
  end

  def resolution
    HandRaiseApiConnector.submit_resolution(params['id'], params['Status'], params['resolution'], current_user)
    redirect_to root_path, notice: 'Your resolution has been submitted'
  end
end
