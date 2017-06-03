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
end
