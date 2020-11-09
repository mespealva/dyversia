require 'rails_helper'

RSpec.describe "blogs/index", type: :view do
  before(:each) do
    assign(:blogs, [
      Blog.create!(
        name: "Name",
        description: "Description",
        body: ""
      ),
      Blog.create!(
        name: "Name",
        description: "Description",
        body: ""
      )
    ])
  end

  it "renders a list of blogs" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
  end
end
