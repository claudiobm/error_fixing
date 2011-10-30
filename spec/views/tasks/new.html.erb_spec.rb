require 'spec_helper'

describe "tasks/new.html.erb" do
  before(:each) do
    assign(:task, stub_model(Task,
      :title => "MyString",
      :url => "MyString",
      :status => ""
    ).as_new_record)
  end

  it "renders new task form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => tasks_path, :method => "post" do
      assert_select "input#task_title", :name => "task[title]"
      assert_select "input#task_url", :name => "task[url]"
      assert_select "input#task_status", :name => "task[status]"
    end
  end
end
