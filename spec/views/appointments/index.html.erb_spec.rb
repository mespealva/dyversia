require 'rails_helper'

RSpec.describe "appointments/index", type: :view do
  before(:each) do
    assign(:appointments, [
      Appointment.create!(
        name: "Name",
        desc: "Desc",
        acta: "MyText"
      ),
      Appointment.create!(
        name: "Name",
        desc: "Desc",
        acta: "MyText"
      )
    ])
  end

  it "renders a list of appointments" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Desc".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
