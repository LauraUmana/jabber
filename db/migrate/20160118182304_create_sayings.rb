class CreateSayings < ActiveRecord::Migration
  def change
    create_table :sayings do |t|

    	t.string :quote
    	t.string :celebrity

      t.timestamps
    end
  end
end
