# frozen_string_literal: true

class CreateTokens < ActiveRecord::Migration[5.2]
  def change
    create_table :tokens do |t|
      t.string :token
      t.timestamps
    end
  end
end
