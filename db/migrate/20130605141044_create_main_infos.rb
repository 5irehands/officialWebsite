class CreateMainInfos < ActiveRecord::Migration
  def change
    create_table :main_infos do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
