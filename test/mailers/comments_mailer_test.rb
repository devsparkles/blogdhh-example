require "test_helper"

class CommentsMailerTest < ActionMailer::TestCase
  test "submitted" do
    mail = CommentsMailer.submitted comments(:one)
    assert_equal "New comment", mail.subject
    assert_equal ["blog-owner@example.com"], mail.to
  end

end
