require 'rails_helper'

RSpec.describe "events/new", type: :view do
  before(:each) do
    assign(:event, Event.new(
      name: "MyString",
      description: "MyString",
      price: "9.99"
    ))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "input[name=?]", "event[name]"

      assert_select "input[name=?]", "event[description]"

      assert_select "input[name=?]", "event[price]"
    end
  end
end
