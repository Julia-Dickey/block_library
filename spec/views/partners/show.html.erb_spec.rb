require 'rails_helper'

RSpec.describe "partners/show", type: :view do
  before(:each) do
    @partner = assign(:partner, Partner.create!(
      :company => "Company",
      :partnership => "Partnership",
      :industry => "Industry",
      :website => "Website",
      :contactperson => "Contactperson",
      :phone => "Phone",
      :email => "Email",
      :since => "Since",
      :video => "Video"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Company/)
    expect(rendered).to match(/Partnership/)
    expect(rendered).to match(/Industry/)
    expect(rendered).to match(/Website/)
    expect(rendered).to match(/Contactperson/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Since/)
    expect(rendered).to match(/Video/)
  end
end
