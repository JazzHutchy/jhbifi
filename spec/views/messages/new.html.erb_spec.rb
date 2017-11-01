require 'rails_helper'

RSpec.describe "messages/new", type: :view do
  before(:each) do
    assign(:message, Message.new(
      :conversation_id => nil,
      :buyer_id => nil,
      :seller => nil,
      :content => "MyText"
    ))
  end

  it "renders new message form" do
    render

    assert_select "form[action=?][method=?]", messages_path, "post" do

      assert_select "input[name=?]", "message[conversation_id_id]"

      assert_select "input[name=?]", "message[buyer_id_id]"

      assert_select "input[name=?]", "message[seller_id]"

      assert_select "textarea[name=?]", "message[content]"
    end
  end
end
