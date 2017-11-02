require 'rails_helper'

RSpec.describe "profile_photos/edit", type: :view do
  before(:each) do
    @profile_photo = assign(:profile_photo, ProfilePhoto.create!(
      :profile => nil,
      :photo_data => "MyString"
    ))
  end

  it "renders the edit profile_photo form" do
    render

    assert_select "form[action=?][method=?]", profile_photo_path(@profile_photo), "post" do

      assert_select "input[name=?]", "profile_photo[profile_id]"

      assert_select "input[name=?]", "profile_photo[photo_data]"
    end
  end
end
