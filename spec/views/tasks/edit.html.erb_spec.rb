require 'spec_helper'

describe "tasks/edit.html.erb" do
  before(:each) do
    @task = assign(:task, stub_model(Task,
      :new_record? => false,
      :title => "MyString",
      :url => "MyString",
      :status => ""
    ))
  end

  it "renders the edit task form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => task_path(@task), :method => "post" do
      assert_select "input#task_title", :name => "task[title]"
      assert_select "input#task_url", :name => "task[url]"
      assert_select "input#task_status", :name => "task[status]"
    end
  end
end
