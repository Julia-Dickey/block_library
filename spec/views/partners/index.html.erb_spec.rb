require 'rails_helper'

RSpec.describe "partners/index", type: :view do
  before(:each) do
    assign(:partners, [
      Partner.create!(
        :company => "Company",
        :partnership => "Partnership",
        :industry => "Industry",
        :website => "Website",
        :contactperson => "Contactperson",
        :phone => "Phone",
        :email => "Email",
        :since => "Since",
        :video => "Video"
      ),
      Partner.create!(
        :company => "Company",
        :partnership => "Partnership",
        :industry => "Industry",
        :website => "Website",
        :contactperson => "Contactperson",
        :phone => "Phone",
        :email => "Email",
        :since => "Since",
        :video => "Video"
      )
    ])
  end

  it "renders a list of partners" do
    render
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => "Partnership".to_s, :count => 2
    assert_select "tr>td", :text => "Industry".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Contactperson".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Since".to_s, :count => 2
    assert_select "tr>td", :text => "Video".to_s, :count => 2
  end
end
