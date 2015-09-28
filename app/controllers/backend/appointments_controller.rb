class Backend::AppointmentsController < Backend::BackendController

  include AppointmentsHelper
  include ApplicationHelper


  before_action :logged_in_user

  def index
    if params[:appointment_date]
      @appointments = Appointment.search([params[:appointment_date]])
    else
      @appointments = Appointment.all
      #@customers = @customers.order("created_at DESC")
    end
  end

  
  def new
    @customer = Customer.find(params[:customer_id])
    @appointment = @customer.appointments.build
  end

  def create
    @customer = Customer.find(params[:customer_id])
    @appointment = @customer.appointments.new(appointment_params)
    @appointment.appointment_date = appointment_date_time(params)
    if @appointment.save
      redirect_to backend_appointment_path(@appointment)
    else
      render new
    end
  end

  def edit
    #@customer = Customer.find(params[:customer_id])
    #@appointment = @customer.appointments.find(params[:id])
    @appointment = Appointment.find(params[:id])
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])
    #@customer = Customer.find(params[:customer_id])
    #@appointment = @customer.events.find(params[:id])
    if @appointment.update_attributes(appointment_params)
      @appointment.appointment_date = appointment_date_time(params)
      @appointment.save!
      redirect_to backend_appointment_path(@appointment)
    else
      render 'edit'
    end
 
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    if @appointment.destroy
      redirect_to backend_appointments_path
    end
  end


  private

  def appointment_params
    params.require(:appointment).permit(:appointment_date, :user_id, :customer_id)
  end



end
