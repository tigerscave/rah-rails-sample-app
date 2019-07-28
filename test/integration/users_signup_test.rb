require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name:  "Rezaei",
                                         email: "hoge@gmail",
                                         password: "hoge",
                                         password_confirmation: "hoge" } }
    end
    assert_template 'users/new'
    # assert_select 'div<CSS id for error explanation>'
    # assert_select 'div.<CSS class for field with error>'
  end

  test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_path, params: { user: { name:  "Rahmat",
                                         email: "rah@gmail.com",
                                         password: "hoge12",
                                         password_confirmation: "hoge12" } }
    end
    follow_redirect!
    assert_template 'users/show'
    assert is_logged_in?

  end
end
