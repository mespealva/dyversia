require 'rails_helper'

RSpec.describe "horarios/new", type: :view do
  before(:each) do
    assign(:horario, Horario.new(
      user: nil
    ))
  end

  it "renders new horario form" do
    render

    assert_select "form[action=?][method=?]", horarios_path, "post" do

      assert_select "input[name=?]", "horario[user_id]"
    end
  end
end
