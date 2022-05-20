require "test_helper"

class TweetClonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tweet_clone = tweet_clones(:one)
  end

  test "should get index" do
    get tweet_clones_url
    assert_response :success
  end

  test "should get new" do
    get new_tweet_clone_url
    assert_response :success
  end

  test "should create tweet_clone" do
    assert_difference("TweetClone.count") do
      post tweet_clones_url, params: { tweet_clone: { tweet_clone: @tweet_clone.tweet_clone } }
    end

    assert_redirected_to tweet_clone_url(TweetClone.last)
  end

  test "should show tweet_clone" do
    get tweet_clone_url(@tweet_clone)
    assert_response :success
  end

  test "should get edit" do
    get edit_tweet_clone_url(@tweet_clone)
    assert_response :success
  end

  test "should update tweet_clone" do
    patch tweet_clone_url(@tweet_clone), params: { tweet_clone: { tweet_clone: @tweet_clone.tweet_clone } }
    assert_redirected_to tweet_clone_url(@tweet_clone)
  end

  test "should destroy tweet_clone" do
    assert_difference("TweetClone.count", -1) do
      delete tweet_clone_url(@tweet_clone)
    end

    assert_redirected_to tweet_clones_url
  end
end
