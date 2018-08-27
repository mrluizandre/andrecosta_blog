class CreateMelhorConsoles < ActiveRecord::Migration[5.1]
  def change
    create_table :melhor_consoles do |t|
      t.string :elim_nintendo
      t.string :elim_sega
      t.string :elim_sony
      t.string :elim_microsoft
      t.string :elim_outros
      t.string :semi_1
      t.string :semi_2
      t.string :final

      t.timestamps
    end
  end
end
