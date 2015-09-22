require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test 'must be signed in' do
    place = FactoryGirl.create(:place)
    assert_no_difference 'Comment.count' do
      post :create, place_id: place.id, comment: {
        message: 'Nice place',
        rating: '5_stars'
      }
    end
    assert_redirected_to new_user_session_path
  end

  test 'adds a comment' do
    place = FactoryGirl.create(:place)
    user = FactoryGirl.create(:user)
    sign_in user
    assert_difference 'Comment.count' do
      post :create, place_id: place.id, comment: {
        message: 'Nice place',
        rating: '5_stars'
      }
    end
    assert_redirected_to place_path(place)
  end
end
