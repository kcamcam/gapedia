class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.integer :accuracy

      t.timestamps
    end
  end
end
