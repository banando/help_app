require 'test_helper'

class EmployersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employer = employers(:one)
  end

  test "should get index" do
    get employers_url
    assert_response :success
  end

  test "should get new" do
    get new_employer_url
    assert_response :success
  end

  test "should create employer" do
    assert_difference('Employer.count') do
      post employers_url, params: { employer: { bio: @employer.bio, city: @employer.city, company_name: @employer.company_name, company_website: @employer.company_website, email: @employer.email, first_name: @employer.first_name, industy: @employer.industy, last_name: @employer.last_name, location: @employer.location, social_media_links: @employer.social_media_links } }
    end

    assert_redirected_to employer_url(Employer.last)
  end

  test "should show employer" do
    get employer_url(@employer)
    assert_response :success
  end

  test "should get edit" do
    get edit_employer_url(@employer)
    assert_response :success
  end

  test "should update employer" do
    patch employer_url(@employer), params: { employer: { bio: @employer.bio, city: @employer.city, company_name: @employer.company_name, company_website: @employer.company_website, email: @employer.email, first_name: @employer.first_name, industy: @employer.industy, last_name: @employer.last_name, location: @employer.location, social_media_links: @employer.social_media_links } }
    assert_redirected_to employer_url(@employer)
  end

  test "should destroy employer" do
    assert_difference('Employer.count', -1) do
      delete employer_url(@employer)
    end

    assert_redirected_to employers_url
  end
end
