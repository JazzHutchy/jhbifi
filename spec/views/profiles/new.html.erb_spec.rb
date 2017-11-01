require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
      :user_id => nil,
      :name => "MyString",
      :phone_number => "MyString",
      :address => "MyText",
      :city => "MyString",
      :state => "MyString",
      :country_code => "MyString",
      :avatar => "MyString"
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "input[name=?]", "profile[user_id_id]"

      assert_select "input[name=?]", "profile[name]"

      assert_select "input[name=?]", "profile[phone_number]"

      assert_select "textarea[name=?]", "profile[address]"

      assert_select "input[name=?]", "profile[city]"

      assert_select "input[name=?]", "profile[state]"

      assert_select "input[name=?]", "profile[country_code]"

      assert_select "input[name=?]", "profile[avatar]"
    end
  end
end
