require 'test_helper'

class StoriesControllerTest < ActionController::TestCase
  def test_should_show_index
    get :index
    assert_response :success
    assert_template 'index'
    assert_not_nil assigns(:story)
  end

  def test_should_show_new
    get :new
    assert_response :success
    assert_template 'new'
    assert_not_nil assigns(:story)
  end

  def test_should_show_new_form
    get :new
    assert_select 'form p', :count => 3
  end

  def test_should_add_story
    post :create, :story => {
      :name => 'test story',
      :link => 'http://www.test.com/'
    }
    assert ! assigns(:story).new_record?
    assert_redirected_to new_stories_path
    assert_not_nil flash[:notice]
  end

  def test_should_reject_missing_attribute
    post :create, :story => {
      :name => 'story without a link'
    }
    assert assigns(:story).errors.on(:link)
  end
end
