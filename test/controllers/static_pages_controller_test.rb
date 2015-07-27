require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  def setup
      @base_title = "Ruby on Rails Tutorial Sample App"
  end

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
    skip
    get :help
    assert_response :success
    assert_select "title", "Help | Ruby on Rails Tutorial"
  end

  test "should get about" do
    skip
    get :about
    assert_response :success
    assert_select "title", "About | Ruby on Rails Tutorial"
  end

end