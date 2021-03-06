class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.belongs_to :invoice, foreign_key: true
      t.string :credit_card_number
      t.string :credit_card_expiration_date
      t.string :result

      t.timestamps
    end
  end
end
