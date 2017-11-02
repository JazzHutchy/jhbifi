require 'rails_helper'

RSpec.describe "listing_photos/new", type: :view do
  before(:each) do
    assign(:listing_photo, ListingPhoto.new(
      :listing => nil,
      :photo_data => "MyString"
    ))
  end

  it "renders new listing_photo form" do
    render

    assert_select "form[action=?][method=?]", listing_photos_path, "post" do

      assert_select "input[name=?]", "listing_photo[listing_id]"

      assert_select "input[name=?]", "listing_photo[photo_data]"
    end
  end
end
