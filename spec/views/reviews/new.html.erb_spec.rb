require 'rails_helper'

RSpec.describe "reviews/new", type: :view do
  before(:each) do
    assign(:review, Review.new(
      :buyer_id => nil,
      :seller_id => nil,
      :rating => 1,
      :content => "MyText"
    ))
  end

  it "renders new review form" do
    render

    assert_select "form[action=?][method=?]", reviews_path, "post" do

      assert_select "input[name=?]", "review[buyer_id_id]"

      assert_select "input[name=?]", "review[seller_id_id]"

      assert_select "input[name=?]", "review[rating]"

      assert_select "textarea[name=?]", "review[content]"
    end
  end
end
