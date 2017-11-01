require 'rails_helper'

RSpec.describe "conversations/edit", type: :view do
  before(:each) do
    @conversation = assign(:conversation, Conversation.create!(
      :buyer_id => nil,
      :seller_id => nil,
      :listing_id => nil
    ))
  end

  it "renders the edit conversation form" do
    render

    assert_select "form[action=?][method=?]", conversation_path(@conversation), "post" do

      assert_select "input[name=?]", "conversation[buyer_id_id]"

      assert_select "input[name=?]", "conversation[seller_id_id]"

      assert_select "input[name=?]", "conversation[listing_id_id]"
    end
  end
end
