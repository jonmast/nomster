require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test 'show user dashboard' do
    user = FactoryGirl.create(:user)
    sign_in user
    get :show, id: user.id
    assert_response :success
    assert_select 'h1', user.email
  end
end
