module ApplicationHelper

  def is_active(controller, action)
    params[:action] == action && params[:controller] == controller ? "active" : nil
  end

  def appointment_date_time(params)
    date_time = "#{params[:appointment][:appointment_date]} #{params[:appointment][:appointment_time]}"
    
    date_time = DateTime.parse(date_time)
    return date_time
  end


end
