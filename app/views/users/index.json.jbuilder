json.array!(@users) do |user|
  json.extract! user, :id, :nombre, :apellido, :contrasenia, :correo, :fechaNacimiento
  json.url user_url(user, format: :json)
end
