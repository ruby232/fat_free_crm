# frozen_string_literal: true

class CreateActions < ActiveRecord::Migration[5.2]
  def self.up
    create_table :actions do |t|
      t.integer :type, null: false, default: 0
      t.string :name, null: false, default: ""

      t.timestamps
    end
  end

  def self.down
    drop_table :actions
  end
end
