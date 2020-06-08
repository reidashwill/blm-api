class AddQuotesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.column :content, :string
      t.column :author, :string
      t.column :date, :string
      t.column :location, :string
    end
  end
end
