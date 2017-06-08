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
    HandRaiseApiConnector.submit_resolution(params['id'], params['Status'], current_user, params['resolution'])
    redirect_to root_path, notice: 'Your resolution has been submitted'
  end

  def take_question
    HandRaiseApiConnector.submit_resolution(params['id'], 'in_progress', current_user, nil)
    redirect_to root_path(id: params['id']), alert: 'The ticket is now in progress'
  end
end
