class Task < ActiveRecord::Base
  STATUS = {
    :open => 0,
    :in_progress => 1,
    :done => 2
  }
end
