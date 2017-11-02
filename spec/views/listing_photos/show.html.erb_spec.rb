require 'rails_helper'

RSpec.describe "listing_photos/show", type: :view do
  before(:each) do
    @listing_photo = assign(:listing_photo, ListingPhoto.create!(
      :listing => nil,
      :photo_data => "Photo Data"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Photo Data/)
  end
end
