require 'rails_helper'

RSpec.describe "horarios/edit", type: :view do
  before(:each) do
    @horario = assign(:horario, Horario.create!(
      user: nil
    ))
  end

  it "renders the edit horario form" do
    render

    assert_select "form[action=?][method=?]", horario_path(@horario), "post" do

      assert_select "input[name=?]", "horario[user_id]"
    end
  end
end
