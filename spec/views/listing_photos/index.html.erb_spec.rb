require 'rails_helper'

RSpec.describe "listing_photos/index", type: :view do
  before(:each) do
    assign(:listing_photos, [
      ListingPhoto.create!(
        :listing => nil,
        :photo_data => "Photo Data"
      ),
      ListingPhoto.create!(
        :listing => nil,
        :photo_data => "Photo Data"
      )
    ])
  end

  it "renders a list of listing_photos" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Photo Data".to_s, :count => 2
  end
end
