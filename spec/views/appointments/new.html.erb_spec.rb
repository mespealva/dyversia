require 'rails_helper'

RSpec.describe "appointments/new", type: :view do
  before(:each) do
    assign(:appointment, Appointment.new(
      name: "MyString",
      desc: "MyString",
      acta: "MyText"
    ))
  end

  it "renders new appointment form" do
    render

    assert_select "form[action=?][method=?]", appointments_path, "post" do

      assert_select "input[name=?]", "appointment[name]"

      assert_select "input[name=?]", "appointment[desc]"

      assert_select "textarea[name=?]", "appointment[acta]"
    end
  end
end
