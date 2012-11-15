require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post :create, student: { city: @student.city, firstname: @student.firstname, fullname: @student.fullname, gender: @student.gender, goal: @student.goal, graduation_year: @student.graduation_year, i_want_to_become: @student.i_want_to_become, image: @student.image, lastname: @student.lastname, province: @student.province, reached_goal: @student.reached_goal, school: @student.school, school_id: @student.school_id, stories: @student.stories, story: @student.story, twitter: @student.twitter, user_id: @student.user_id, video: @student.video }
    end

    assert_redirected_to student_path(assigns(:student))
  end

  test "should show student" do
    get :show, id: @student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student
    assert_response :success
  end

  test "should update student" do
    put :update, id: @student, student: { city: @student.city, firstname: @student.firstname, fullname: @student.fullname, gender: @student.gender, goal: @student.goal, graduation_year: @student.graduation_year, i_want_to_become: @student.i_want_to_become, image: @student.image, lastname: @student.lastname, province: @student.province, reached_goal: @student.reached_goal, school: @student.school, school_id: @student.school_id, stories: @student.stories, story: @student.story, twitter: @student.twitter, user_id: @student.user_id, video: @student.video }
    assert_redirected_to student_path(assigns(:student))
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete :destroy, id: @student
    end

    assert_redirected_to students_path
  end
end
