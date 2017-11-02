require 'rails_helper'

RSpec.describe "profile_photos/new", type: :view do
  before(:each) do
    assign(:profile_photo, ProfilePhoto.new(
      :profile => nil,
      :photo_data => "MyString"
    ))
  end

  it "renders new profile_photo form" do
    render

    assert_select "form[action=?][method=?]", profile_photos_path, "post" do

      assert_select "input[name=?]", "profile_photo[profile_id]"

      assert_select "input[name=?]", "profile_photo[photo_data]"
    end
  end
end
