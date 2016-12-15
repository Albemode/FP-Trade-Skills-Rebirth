class CreateLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :logs do |t|
      t.string   :lesson
      t.datetime :lesson_duration
      t.date     :time_of_day
      t.references :master, foreign_key: true
      t.references :apprentice, foreign_key: true

      t.timestamps
    end
  end
end
