class CreateEngineOnRailsPosts < ActiveRecord::Migration
  def change
    create_table :engine_on_rails_posts do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
