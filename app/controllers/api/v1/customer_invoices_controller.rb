class Api::V1::CustomerInvoicesController < ApplicationController

  def index
    customer = Customer.find(params[:id])
    render json: customer.invoices.to_json( :only => [:customer_id, :id, :merchant_id, :status])
  end

end
