class CreateQueryQuestions < ActiveRecord::Migration
  def self.up
    create_table :query_questions do |t|
      t.string :question

      t.timestamps
    end
  end

  def self.down
    drop_table :query_questions
  end
end
