class Backend::BackendController < ApplicationController

  layout 'backend'

def new
  @customer = Customer.new
end

end
