require 'rails_helper'

RSpec.describe "favourites/index", type: :view do
  before(:each) do
    assign(:favourites, [
      Favourite.create!(
        :user_id => nil,
        :listing_id => nil
      ),
      Favourite.create!(
        :user_id => nil,
        :listing_id => nil
      )
    ])
  end

  it "renders a list of favourites" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
