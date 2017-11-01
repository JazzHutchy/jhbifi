require 'rails_helper'

RSpec.describe "photos/new", type: :view do
  before(:each) do
    assign(:photo, Photo.new(
      :listing_id => nil,
      :profile_id => nil,
      :photo => "MyString"
    ))
  end

  it "renders new photo form" do
    render

    assert_select "form[action=?][method=?]", photos_path, "post" do

      assert_select "input[name=?]", "photo[listing_id_id]"

      assert_select "input[name=?]", "photo[profile_id_id]"

      assert_select "input[name=?]", "photo[photo]"
    end
  end
end
