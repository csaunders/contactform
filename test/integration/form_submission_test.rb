require 'test_helper'

class FormSubmissionTest < ActionDispatch::IntegrationTest

  test "submitting a successful form" do
    data = {name: "John", email: "smith@example.com", message: "Please get in touch with me"}
    post "/contact", contact: data
    assert_redirected_to "http://example.com/success"
  end

  test "submitting partially invalid data" do
    data = {name: "John", message: "Tell me more please"}
    post "/contact", contact: data
    message = URI.escape("Email can't be blank")
    assert_redirected_to "http://example.com/failure?fields=email&message=#{message}"
  end
end
