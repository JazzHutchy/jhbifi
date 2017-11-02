require 'rails_helper'

RSpec.describe "profile_photos/index", type: :view do
  before(:each) do
    assign(:profile_photos, [
      ProfilePhoto.create!(
        :profile => nil,
        :photo_data => "Photo Data"
      ),
      ProfilePhoto.create!(
        :profile => nil,
        :photo_data => "Photo Data"
      )
    ])
  end

  it "renders a list of profile_photos" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Photo Data".to_s, :count => 2
  end
end
