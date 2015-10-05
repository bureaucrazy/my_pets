require 'rails_helper'

RSpec.describe "locations/new", type: :view do
  before(:each) do
    assign(:location, Location.new(
      :longitude => 1.5,
      :latitude => 1.5,
      :pet => nil
    ))
  end

  it "renders new location form" do
    render

    assert_select "form[action=?][method=?]", locations_path, "post" do

      assert_select "input#location_longitude[name=?]", "location[longitude]"

      assert_select "input#location_latitude[name=?]", "location[latitude]"

      assert_select "input#location_pet_id[name=?]", "location[pet_id]"
    end
  end
end
