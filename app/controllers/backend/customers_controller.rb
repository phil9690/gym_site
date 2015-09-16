class Backend::CustomersController < Backend::BackendController

  def index
      @customers = Customer.all
      @customers = @customers.order("created_at DESC")
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to backend_customers_path
    else
      render 'new'
    end

  end

  def show
    @customer = Customer.find(params[:id])
    @appointments = @customer.appointments.all
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update_attributes(customer_params)
      redirect_to backend_customer_path(@customer)
    else
      render 'edit'
    end
  end


  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy

    redirect_to backend_customers_path

  end

  private

    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :address_line_1, :address_line_2, :address_line_3, :post_code, :telephone_number, :mobile_number, :email, :staff_log)
    end

end
