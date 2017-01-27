require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
      :brand => "MyString",
      :body => "MyText"
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "input#profile_brand[name=?]", "profile[brand]"

      assert_select "textarea#profile_body[name=?]", "profile[body]"
    end
  end
end
