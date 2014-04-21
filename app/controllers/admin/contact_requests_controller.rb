class Admin::ContactRequestsController < AdminAreaController
  helper_method :contact_requests, :contact_request

  def index
  end

  def show
  end

  def mark_read
    contact_request.mark_as_read!
  end

  private

  def contact_requests
    @contact_requests ||= ContactRequest.all
  end

  def contact_request
    @contact_request ||= ContactRequest.where(id: params[:id]).first
  end
end
