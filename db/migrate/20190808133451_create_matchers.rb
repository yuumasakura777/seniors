class CreateMatchers < ActiveRecord::Migration[5.2]
  def change
    create_table :matchers do |t|
      t.references :user, null:false, foreign_key: true
      t.references :talk, null:false, foreign_key: true

      t.timestamps
    end
  end
end
