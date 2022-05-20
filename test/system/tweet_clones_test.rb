require "application_system_test_case"

class TweetClonesTest < ApplicationSystemTestCase
  setup do
    @tweet_clone = tweet_clones(:one)
  end

  test "visiting the index" do
    visit tweet_clones_url
    assert_selector "h1", text: "Tweet clones"
  end

  test "should create tweet clone" do
    visit tweet_clones_url
    click_on "New tweet clone"

    fill_in "Tweet clone", with: @tweet_clone.tweet_clone
    click_on "Create Tweet clone"

    assert_text "Tweet clone was successfully created"
    click_on "Back"
  end

  test "should update Tweet clone" do
    visit tweet_clone_url(@tweet_clone)
    click_on "Edit this tweet clone", match: :first

    fill_in "Tweet clone", with: @tweet_clone.tweet_clone
    click_on "Update Tweet clone"

    assert_text "Tweet clone was successfully updated"
    click_on "Back"
  end

  test "should destroy Tweet clone" do
    visit tweet_clone_url(@tweet_clone)
    click_on "Destroy this tweet clone", match: :first

    assert_text "Tweet clone was successfully destroyed"
  end
end
