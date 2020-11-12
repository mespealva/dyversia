require 'rails_helper'

RSpec.describe "horarios/index", type: :view do
  before(:each) do
    assign(:horarios, [
      Horario.create!(
        user: nil
      ),
      Horario.create!(
        user: nil
      )
    ])
  end

  it "renders a list of horarios" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
