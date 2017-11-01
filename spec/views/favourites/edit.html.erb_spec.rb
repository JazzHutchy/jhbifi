require 'rails_helper'

RSpec.describe "favourites/edit", type: :view do
  before(:each) do
    @favourite = assign(:favourite, Favourite.create!(
      :user_id => nil,
      :listing_id => nil
    ))
  end

  it "renders the edit favourite form" do
    render

    assert_select "form[action=?][method=?]", favourite_path(@favourite), "post" do

      assert_select "input[name=?]", "favourite[user_id_id]"

      assert_select "input[name=?]", "favourite[listing_id_id]"
    end
  end
end
