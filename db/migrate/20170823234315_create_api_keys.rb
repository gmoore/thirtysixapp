class CreateApiKeys < ActiveRecord::Migration[5.1]
  def change
    create_table :api_keys do |t|
      t.string      :key_text
      t.timestamps

      t.index       :key_text
    end
  end
end
