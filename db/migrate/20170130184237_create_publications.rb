class CreatePublications < ActiveRecord::Migration[5.0]
  def change
    create_table :publications do |t|
      t.string :titulo
      t.string :region
      t.string :comuna
      t.integer :precio
      t.string :tipo
      t.integer :superficie
      t.integer :dormitorio
      t.integer :baño
      t.integer :estacionamiento
      t.text :descripcion
      t.string :slug

      t.timestamps
    end
    add_index :publications, :slug, unique: true
  end
end
