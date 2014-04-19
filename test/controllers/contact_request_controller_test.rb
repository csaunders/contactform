require 'test_helper'

class ContactRequestControllerTest < ActionController::TestCase

  test "that a successful submission causes a contact request to be created and redirects" do
    assert_difference "ContactRequest.count", 1 do
      post :create, contact: {email: 'foo@bar.com', name: 'john smith', message: "hello there"}
    end
    assert_response :redirect
  end

  test "that an unsuccessful submission causes nothing to be created and redirects" do
    assert_no_difference "ContactRequest.count" do
      post :create, contact: {email: '', name: 'john smith', message: "hello there"}
    end
    assert_response :redirect
  end
end
