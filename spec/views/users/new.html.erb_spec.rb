require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :password_digest => "MyString",
      :address => "MyText",
      :home_phone => "MyString",
      :cell_phone => "MyString",
      :longitude => 1.5,
      :latitude => 1.5
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_first_name[name=?]", "user[first_name]"

      assert_select "input#user_last_name[name=?]", "user[last_name]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_password_digest[name=?]", "user[password_digest]"

      assert_select "textarea#user_address[name=?]", "user[address]"

      assert_select "input#user_home_phone[name=?]", "user[home_phone]"

      assert_select "input#user_cell_phone[name=?]", "user[cell_phone]"

      assert_select "input#user_longitude[name=?]", "user[longitude]"

      assert_select "input#user_latitude[name=?]", "user[latitude]"
    end
  end
end
