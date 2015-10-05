require 'rails_helper'

RSpec.describe "pets/new", type: :view do
  before(:each) do
    assign(:pet, Pet.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :birth_place => "MyString",
      :breed => "MyString",
      :tracking_uid => "MyString",
      :user => nil
    ))
  end

  it "renders new pet form" do
    render

    assert_select "form[action=?][method=?]", pets_path, "post" do

      assert_select "input#pet_first_name[name=?]", "pet[first_name]"

      assert_select "input#pet_last_name[name=?]", "pet[last_name]"

      assert_select "input#pet_birth_place[name=?]", "pet[birth_place]"

      assert_select "input#pet_breed[name=?]", "pet[breed]"

      assert_select "input#pet_tracking_uid[name=?]", "pet[tracking_uid]"

      assert_select "input#pet_user_id[name=?]", "pet[user_id]"
    end
  end
end
