class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.decimal :amount, scale: 3, precision: 15
      t.integer :currency
      t.belongs_to :customer

      t.timestamps
    end
  end
end
