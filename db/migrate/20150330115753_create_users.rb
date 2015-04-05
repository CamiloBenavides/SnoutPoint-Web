class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :apellido
      t.string :contrasenia
      t.string :correo
      t.date :fechaNacimiento

      t.timestamps
    end
  end
end
