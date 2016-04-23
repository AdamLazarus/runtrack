class AddRunToUser < ActiveRecord::Migration
  def change
    add_reference :users, :run, index: true, foreign_key: true
  end
end
