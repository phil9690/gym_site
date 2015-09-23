module AppointmentsHelper

  def appointment_time_indicator(appointment)

      difference = appointment.appointment_date.to_date - Date.today
      difference = difference.to_i
    
      if difference < 0 then
        return "blue"
      elsif difference == 0 then
        return "red"
      elsif difference == 1 then
        return "purple"
      elsif difference == 2 then
        return "orange"
      elsif difference > 2
        return "green"
      end

  end


end
