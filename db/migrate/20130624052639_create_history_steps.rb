class CreateHistorySteps < ActiveRecord::Migration
  def change
    create_table :history_steps do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
