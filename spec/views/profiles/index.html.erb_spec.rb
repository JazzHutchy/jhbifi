require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :user_id => nil,
        :name => "Name",
        :phone_number => "Phone Number",
        :address => "MyText",
        :city => "City",
        :state => "State",
        :country_code => "Country Code",
        :avatar => "Avatar"
      ),
      Profile.create!(
        :user_id => nil,
        :name => "Name",
        :phone_number => "Phone Number",
        :address => "MyText",
        :city => "City",
        :state => "State",
        :country_code => "Country Code",
        :avatar => "Avatar"
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Country Code".to_s, :count => 2
    assert_select "tr>td", :text => "Avatar".to_s, :count => 2
  end
end
