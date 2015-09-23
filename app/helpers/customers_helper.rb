module CustomersHelper

  def customer_tel(customer)
    if customer.mobile_number.present?
      return customer.mobile_number
    else
      return customer.telephone_number
    end
  end

  def appointment_time_indicator_customer(customer)
    if customer.appointments.present?

      appointment = customer.appointments.last
      difference = appointment.appointment_date.to_date - Date.today
      difference = difference.to_i
    
      if difference < 0 
        return "blue"
      elsif difference == 0 
        return "red"
      elsif difference == 1
        return "purple"
      elsif difference == 2 
        return "orange"
      elsif difference > 2 
        return "green"
      end

    end   
  end

end
