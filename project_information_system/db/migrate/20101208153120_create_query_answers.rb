class CreateQueryAnswers < ActiveRecord::Migration
  def self.up
    create_table :query_answers do |t|
      t.integer :query_question_id
      t.string :answer

      t.timestamps
    end
  end

  def self.down
    drop_table :query_answers
  end
end
