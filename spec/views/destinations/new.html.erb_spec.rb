require 'rails_helper'

RSpec.describe "destinations/new", type: :view do
  before(:each) do
    assign(:destination, Destination.new(
      :name => "MyString",
      :address => "MyText",
      :longitude => 1.5,
      :latitude => 1.5,
      :pet => nil
    ))
  end

  it "renders new destination form" do
    render

    assert_select "form[action=?][method=?]", destinations_path, "post" do

      assert_select "input#destination_name[name=?]", "destination[name]"

      assert_select "textarea#destination_address[name=?]", "destination[address]"

      assert_select "input#destination_longitude[name=?]", "destination[longitude]"

      assert_select "input#destination_latitude[name=?]", "destination[latitude]"

      assert_select "input#destination_pet_id[name=?]", "destination[pet_id]"
    end
  end
end
