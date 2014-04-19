require 'test_helper'

class RootAndCatchallTest < ActionDispatch::IntegrationTest

  test "accessing the root URL redirects to the defined landing page" do
    get "/"
    assert_redirected_to "http://example.com"
  end

  test "accessing any unspecified URL redirects to the defined landing page" do
    get "/doodle/poodle/strudel"
    assert_redirected_to "http://example.com"
  end

  test "attempting to post to any unspecified URL redirects to defined landing page" do
    post "/doodle/poodle/strudel"
    assert_redirected_to "http://example.com"
  end
end
