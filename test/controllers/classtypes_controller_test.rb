require 'test_helper'

class ClasstypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @classtype = classtypes(:one)
  end

  test "should get index" do
    get classtypes_url
    assert_response :success
  end

  test "should get new" do
    get new_classtype_url
    assert_response :success
  end

  test "should create classtype" do
    assert_difference('Classtype.count') do
      post classtypes_url, params: { classtype: { category: @classtype.category, classid: @classtype.classid, classname: @classtype.classname, classtime: @classtype.classtime, cost: @classtype.cost } }
    end

    assert_redirected_to classtype_url(Classtype.last)
  end

  test "should show classtype" do
    get classtype_url(@classtype)
    assert_response :success
  end

  test "should get edit" do
    get edit_classtype_url(@classtype)
    assert_response :success
  end

  test "should update classtype" do
    patch classtype_url(@classtype), params: { classtype: { category: @classtype.category, classid: @classtype.classid, classname: @classtype.classname, classtime: @classtype.classtime, cost: @classtype.cost } }
    assert_redirected_to classtype_url(@classtype)
  end

  test "should destroy classtype" do
    assert_difference('Classtype.count', -1) do
      delete classtype_url(@classtype)
    end

    assert_redirected_to classtypes_url
  end
end
