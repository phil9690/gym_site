class Backend::SessionsController < Backend::BackendController

  include SessionsHelper

  def new
    if logged_in?
      redirect_to backend_user_path(current_user)
    end 
  end

  def create
    user = User.find_by(username: params[:session][:username].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to backend_user_path(user)
    else
      flash.now[:danger] = 'Invalid email/password combination' #not right
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

end
