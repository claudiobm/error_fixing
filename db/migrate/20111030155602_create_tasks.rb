class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :title
      t.string :url
      t.datetime :date_error
      t.text :description
      t.integer :status
      t.integer :author_id

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
