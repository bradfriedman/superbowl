class AddScoreLastBetColumn < ActiveRecord::Migration
  def change
    add_column :users, :scoreLastBet, :integer
  end
end
