# frozen_string_literal: true

class AddGeneratesWarningToActions < ActiveRecord::Migration[5.2]
  def change
    add_column :actions, :generates_warning, :boolean
  end
end
