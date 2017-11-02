require 'rails_helper'

RSpec.describe "listing_photos/edit", type: :view do
  before(:each) do
    @listing_photo = assign(:listing_photo, ListingPhoto.create!(
      :listing => nil,
      :photo_data => "MyString"
    ))
  end

  it "renders the edit listing_photo form" do
    render

    assert_select "form[action=?][method=?]", listing_photo_path(@listing_photo), "post" do

      assert_select "input[name=?]", "listing_photo[listing_id]"

      assert_select "input[name=?]", "listing_photo[photo_data]"
    end
  end
end
