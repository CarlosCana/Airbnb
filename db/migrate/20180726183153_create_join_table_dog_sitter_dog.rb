class CreateJoinTableDogSitterDog < ActiveRecord::Migration[5.2]
  def change
    create_join_table :dogsitters, :dogs do |t|
    	t.index [:dogsitter_id, :dog_id]
    	t.index [:dog_id, :dogsitter_id]
    end
  end
end
