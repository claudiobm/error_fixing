Factory.define :user do |f|
  f.full_name { Factory.next :full_name }
  f.email { Factory.next :email }
  f.password "123456789"
  f.password_confirmation "123456789"
end

Factory.sequence(:email) {|n| "user_#{n}@gmail.com"}
Factory.sequence(:full_name) {|n| "User #{n}"}
