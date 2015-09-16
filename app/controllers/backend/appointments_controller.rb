class Backend::AppointmentsController < Backend::BackendController

  def index
    @appointments = Appointment.all
  end
  
  def new
    @customer = Customer.find(params[:customer_id])
    @appointment = @customer.appointments.build
  end

  def create
    @customer = Customer.find(params[:customer_id])
    @appointment = @customer.appointments.new(appointment_params)
    if @appointment.save
      redirect_to backend_appointment_path(@appointment)
    else
      render new
    end
  end

  def edit
    @customer = Customer.find(params[:customer_id])
    @appointment = @customer.appointments.find(params[:id])
    #@appointment = Appointment.find(params[:id])
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def update
    binding.pry
    @appointment = Appointment.find(params[:id])
    #@customer = Customer.find(params[:customer_id])
    #@appointment = @customer.events.find(params[:id])
    if @appointment.update_attributes(appointment_params)
      redirect_to backend_appointment_path(@appointment)
    else
      render 'edit'
    end
 
  end
  
  def destroy
  end 

  private

  def appointment_params
    params.require(:appointment).permit(:appointment_date, :user_id, :customer_id)
  end



end
