require 'rails_helper'

RSpec.describe "profile_photos/show", type: :view do
  before(:each) do
    @profile_photo = assign(:profile_photo, ProfilePhoto.create!(
      :profile => nil,
      :photo_data => "Photo Data"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Photo Data/)
  end
end
