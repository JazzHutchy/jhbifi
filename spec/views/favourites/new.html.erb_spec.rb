require 'rails_helper'

RSpec.describe "favourites/new", type: :view do
  before(:each) do
    assign(:favourite, Favourite.new(
      :user_id => nil,
      :listing_id => nil
    ))
  end

  it "renders new favourite form" do
    render

    assert_select "form[action=?][method=?]", favourites_path, "post" do

      assert_select "input[name=?]", "favourite[user_id_id]"

      assert_select "input[name=?]", "favourite[listing_id_id]"
    end
  end
end
