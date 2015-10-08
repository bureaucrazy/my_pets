require 'rails_helper'

RSpec.describe "pets/index", type: :view do
  before(:each) do
    assign(:pets, [
      Pet.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :birth_place => "Birth Place",
        :breed => "Breed",
        :tracking_uid => "Tracking Uid",
        :user => nil
      ),
      Pet.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :birth_place => "Birth Place",
        :breed => "Breed",
        :tracking_uid => "Tracking Uid",
        :user => nil
      )
    ])
  end

  it "renders a list of pets" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Birth Place".to_s, :count => 2
    assert_select "tr>td", :text => "Breed".to_s, :count => 2
    assert_select "tr>td", :text => "Tracking Uid".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
