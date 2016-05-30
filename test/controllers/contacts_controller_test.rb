require 'test_helper'

class ContactsControllerTest < ActionController::TestCase
  setup do
    @contact = contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact" do
    assert_difference('Contact.count') do
      post :create, contact: { city: @contact.city, country_region: @contact.country_region, email: @contact.email, first_name: @contact.first_name, last_name: @contact.last_name, nick_name: @contact.nick_name, personal_web_page: @contact.personal_web_page, phone_mobile: @contact.phone_mobile, phone_work: @contact.phone_work, state_province: @contact.state_province, street: @contact.street, zip_postal_code: @contact.zip_postal_code }
    end

    assert_redirected_to contact_path(assigns(:contact))
  end

  test "should show contact" do
    get :show, id: @contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact
    assert_response :success
  end

  test "should update contact" do
    patch :update, id: @contact, contact: { city: @contact.city, country_region: @contact.country_region, email: @contact.email, first_name: @contact.first_name, last_name: @contact.last_name, nick_name: @contact.nick_name, personal_web_page: @contact.personal_web_page, phone_mobile: @contact.phone_mobile, phone_work: @contact.phone_work, state_province: @contact.state_province, street: @contact.street, zip_postal_code: @contact.zip_postal_code }
    assert_redirected_to contact_path(assigns(:contact))
  end

  test "should destroy contact" do
    assert_difference('Contact.count', -1) do
      delete :destroy, id: @contact
    end

    assert_redirected_to contacts_path
  end
end
