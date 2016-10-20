require 'test_helper'

class UserSubjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_subject = user_subjects(:one)
  end

  test "should get index" do
    get user_subjects_url, as: :json
    assert_response :success
  end

  test "should create user_subject" do
    assert_difference('UserSubject.count') do
      post user_subjects_url, params: { user_subject: { semester: @user_subject.semester, subject_id: @user_subject.subject_id, user_id: @user_subject.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show user_subject" do
    get user_subject_url(@user_subject), as: :json
    assert_response :success
  end

  test "should update user_subject" do
    patch user_subject_url(@user_subject), params: { user_subject: { semester: @user_subject.semester, subject_id: @user_subject.subject_id, user_id: @user_subject.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy user_subject" do
    assert_difference('UserSubject.count', -1) do
      delete user_subject_url(@user_subject), as: :json
    end

    assert_response 204
  end
end
