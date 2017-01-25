require 'test_helper'

class ConstructionplansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @constructionplan = constructionplans(:one)
  end

  test "should get index" do
    get constructionplans_url
    assert_response :success
  end

  test "should get new" do
    get new_constructionplan_url
    assert_response :success
  end

  test "should create constructionplan" do
    assert_difference('Constructionplan.count') do
      post constructionplans_url, params: { constructionplan: { description: @constructionplan.description, header: @constructionplan.header, picture: @constructionplan.picture } }
    end

    assert_redirected_to constructionplan_url(Constructionplan.last)
  end

  test "should show constructionplan" do
    get constructionplan_url(@constructionplan)
    assert_response :success
  end

  test "should get edit" do
    get edit_constructionplan_url(@constructionplan)
    assert_response :success
  end

  test "should update constructionplan" do
    patch constructionplan_url(@constructionplan), params: { constructionplan: { description: @constructionplan.description, header: @constructionplan.header, picture: @constructionplan.picture } }
    assert_redirected_to constructionplan_url(@constructionplan)
  end

  test "should destroy constructionplan" do
    assert_difference('Constructionplan.count', -1) do
      delete constructionplan_url(@constructionplan)
    end

    assert_redirected_to constructionplans_url
  end
end
