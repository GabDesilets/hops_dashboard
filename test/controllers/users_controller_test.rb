require 'minitest/autorun'
class UsersControllerTest < ActionController::TestCase

  def test_should_not_signup_without_password_digest
    @user = User.new
    @user.email = 'abc@abc.com'
    assert_not @user.save
  end
end
