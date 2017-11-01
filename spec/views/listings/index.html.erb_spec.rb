require 'rails_helper'

RSpec.describe "listings/index", type: :view do
  before(:each) do
    assign(:listings, [
      Listing.create!(
        :user_id => nil,
        :title => "MyText",
        :description => "MyText",
        :price => 2,
        :charge_identifier => "Charge Identifier"
      ),
      Listing.create!(
        :user_id => nil,
        :title => "MyText",
        :description => "MyText",
        :price => 2,
        :charge_identifier => "Charge Identifier"
      )
    ])
  end

  it "renders a list of listings" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Charge Identifier".to_s, :count => 2
  end
end
