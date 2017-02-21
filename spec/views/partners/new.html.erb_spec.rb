require 'rails_helper'

RSpec.describe "partners/new", type: :view do
  before(:each) do
    assign(:partner, Partner.new(
      :company => "MyString",
      :partnership => "MyString",
      :industry => "MyString",
      :website => "MyString",
      :contactperson => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :since => "MyString",
      :video => "MyString"
    ))
  end

  it "renders new partner form" do
    render

    assert_select "form[action=?][method=?]", partners_path, "post" do

      assert_select "input#partner_company[name=?]", "partner[company]"

      assert_select "input#partner_partnership[name=?]", "partner[partnership]"

      assert_select "input#partner_industry[name=?]", "partner[industry]"

      assert_select "input#partner_website[name=?]", "partner[website]"

      assert_select "input#partner_contactperson[name=?]", "partner[contactperson]"

      assert_select "input#partner_phone[name=?]", "partner[phone]"

      assert_select "input#partner_email[name=?]", "partner[email]"

      assert_select "input#partner_since[name=?]", "partner[since]"

      assert_select "input#partner_video[name=?]", "partner[video]"
    end
  end
end
