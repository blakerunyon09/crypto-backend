class CreateCryptocurrencies < ActiveRecord::Migration[6.1]
  def change
    create_table :cryptocurrencies do |t|
      t.string :name_id
      t.string :symbol
      t.string :name

      t.timestamps
    end
  end
end
