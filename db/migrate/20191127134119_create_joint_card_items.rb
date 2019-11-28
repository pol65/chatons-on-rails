class CreateJointCardItems < ActiveRecord::Migration[5.2]
  def change
    create_table :joint_card_items do |t|
      t.belongs_to :cart,  index: true
      t.belongs_to :item, index: true 
      t.timestamps
    end
  end
end
