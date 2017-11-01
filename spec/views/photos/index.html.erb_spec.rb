require 'rails_helper'

RSpec.describe "photos/index", type: :view do
  before(:each) do
    assign(:photos, [
      Photo.create!(
        :listing_id => nil,
        :profile_id => nil,
        :photo => "Photo"
      ),
      Photo.create!(
        :listing_id => nil,
        :profile_id => nil,
        :photo => "Photo"
      )
    ])
  end

  it "renders a list of photos" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Photo".to_s, :count => 2
  end
end
