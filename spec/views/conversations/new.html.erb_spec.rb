require 'rails_helper'

RSpec.describe "conversations/new", type: :view do
  before(:each) do
    assign(:conversation, Conversation.new(
      :buyer_id => nil,
      :seller_id => nil,
      :listing_id => nil
    ))
  end

  it "renders new conversation form" do
    render

    assert_select "form[action=?][method=?]", conversations_path, "post" do

      assert_select "input[name=?]", "conversation[buyer_id_id]"

      assert_select "input[name=?]", "conversation[seller_id_id]"

      assert_select "input[name=?]", "conversation[listing_id_id]"
    end
  end
end
