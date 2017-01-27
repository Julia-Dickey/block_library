require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :brand => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "input#profile_brand[name=?]", "profile[brand]"

      assert_select "textarea#profile_body[name=?]", "profile[body]"
    end
  end
end
