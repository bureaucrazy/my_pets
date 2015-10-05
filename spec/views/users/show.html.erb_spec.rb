require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :email => "Email",
      :password_digest => "Password Digest",
      :address => "MyText",
      :home_phone => "Home Phone",
      :cell_phone => "Cell Phone",
      :longitude => 1.5,
      :latitude => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Password Digest/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Home Phone/)
    expect(rendered).to match(/Cell Phone/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
  end
end
