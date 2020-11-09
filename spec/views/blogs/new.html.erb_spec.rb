require 'rails_helper'

RSpec.describe "blogs/new", type: :view do
  before(:each) do
    assign(:blog, Blog.new(
      name: "MyString",
      description: "MyString",
      body: ""
    ))
  end

  it "renders new blog form" do
    render

    assert_select "form[action=?][method=?]", blogs_path, "post" do

      assert_select "input[name=?]", "blog[name]"

      assert_select "input[name=?]", "blog[description]"

      assert_select "input[name=?]", "blog[body]"
    end
  end
end
