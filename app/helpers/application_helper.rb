module ApplicationHelper
  def copyright_generator
    DevcampViewTool::Renderer.copyright 'Jordan Hudgens', 'All rights reserved'
  end

  def active? path
    "active" if current_page? path
  end

  def alerts
    alert = (flash[:alert] || flash[:error] || flash[:notice])

    if alert
      alert_generator alert
    end
  end

  def alert_generator msg
    js add_gritter(msg, title: "Jordan Hudgens Portfolio", sticky: false)
  end
end
