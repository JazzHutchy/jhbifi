require 'rails_helper'

RSpec.describe "reviews/edit", type: :view do
  before(:each) do
    @review = assign(:review, Review.create!(
      :buyer_id => nil,
      :seller_id => nil,
      :rating => 1,
      :content => "MyText"
    ))
  end

  it "renders the edit review form" do
    render

    assert_select "form[action=?][method=?]", review_path(@review), "post" do

      assert_select "input[name=?]", "review[buyer_id_id]"

      assert_select "input[name=?]", "review[seller_id_id]"

      assert_select "input[name=?]", "review[rating]"

      assert_select "textarea[name=?]", "review[content]"
    end
  end
end
