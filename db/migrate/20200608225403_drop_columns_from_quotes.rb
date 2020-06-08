class DropColumnsFromQuotes < ActiveRecord::Migration[5.2]
  def change
    change_table :quotes do |t|
      t.remove :date
      t.remove :location
    end
  end
end
