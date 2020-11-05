# frozen_string_literal: true

class AddClosesLeadToActions < ActiveRecord::Migration[5.2]
  def change
    add_column :actions, :closes_lead, :boolean
  end
end
