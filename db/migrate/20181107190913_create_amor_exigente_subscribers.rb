class CreateAmorExigenteSubscribers < ActiveRecord::Migration[5.1]
  def change
    create_table :amor_exigente_subscribers do |t|
      t.string :name
      t.string :cpf

      t.timestamps
    end
  end
end
