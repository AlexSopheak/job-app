class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.integer :total_employees
      t.text :description
      t.text :requirement
      t.string :term
      t.string :location
      t.decimal :salary
      t.datetime :deadline
      t.datetime :approved_date
      t.string :approved_state
      t.string :status
      t.text :remark

      t.timestamps
    end
  end
end
