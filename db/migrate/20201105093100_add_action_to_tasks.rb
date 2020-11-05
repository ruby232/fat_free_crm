# frozen_string_literal: true

class AddActionToTasks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :action, foreign_key: true
  end
end
