Factory.define :task do |f|
  f.title "Title of task"
  f.url "http://localhost:3000"
  f.association :status, User::STATUS[:open]
  f.association :author, :factory => :user
  f.date_error Time.now-1.day
  
  f.description %{
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris egestas, quam eu mattis sagittis, 
    nisl tortor sagittis erat, at ornare metus lectus sed magna. Proin nec metus dui. 
    Maecenas ut nunc non ligula euismod, Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  }
end