require 'rails_helper'

RSpec.describe "photos/edit", type: :view do
  before(:each) do
    @photo = assign(:photo, Photo.create!(
      :listing_id => nil,
      :profile_id => nil,
      :photo => "MyString"
    ))
  end

  it "renders the edit photo form" do
    render

    assert_select "form[action=?][method=?]", photo_path(@photo), "post" do

      assert_select "input[name=?]", "photo[listing_id_id]"

      assert_select "input[name=?]", "photo[profile_id_id]"

      assert_select "input[name=?]", "photo[photo]"
    end
  end
end
