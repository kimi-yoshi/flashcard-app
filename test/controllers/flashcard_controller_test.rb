require 'test_helper'

class FlashcardControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get flashcard_top_url
    assert_response :success
  end

  test "should get play" do
    get flashcard_play_url
    assert_response :success
  end

end
