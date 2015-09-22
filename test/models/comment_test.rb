require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test 'humanized rating' do
    comment = Comment.new(rating: '3_stars')
    assert_equal comment.humanized_rating, 'three stars'
  end
end
