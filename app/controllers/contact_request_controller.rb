class ContactRequestController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    contact_request = ContactRequest.new(contact_request_params)
    if contact_request.save
      redirect_to successful_submission
    else
      redirect_to unsuccessful_submission(contact_request)
    end
  end

  private
  def contact_request_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
