require 'rails_helper'

RSpec.describe "destinations/index", type: :view do
  before(:each) do
    assign(:destinations, [
      Destination.create!(
        :name => "Name",
        :address => "MyText",
        :longitude => 1.5,
        :latitude => 1.5,
        :pet => nil
      ),
      Destination.create!(
        :name => "Name",
        :address => "MyText",
        :longitude => 1.5,
        :latitude => 1.5,
        :pet => nil
      )
    ])
  end

  it "renders a list of destinations" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
