require 'rails_helper'

RSpec.describe "pets/show", type: :view do
  before(:each) do
    @pet = assign(:pet, Pet.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :birth_place => "Birth Place",
      :breed => "Breed",
      :tracking_uid => "Tracking Uid",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Birth Place/)
    expect(rendered).to match(/Breed/)
    expect(rendered).to match(/Tracking Uid/)
    expect(rendered).to match(//)
  end
end
