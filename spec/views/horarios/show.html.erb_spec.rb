require 'rails_helper'

RSpec.describe "horarios/show", type: :view do
  before(:each) do
    @horario = assign(:horario, Horario.create!(
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
