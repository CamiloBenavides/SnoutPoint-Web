class User < ActiveRecord::Base
    
    validates_presence_of :nombre, :message => '^ El nombre del usuario no puede estar en blanco'
    validates_presence_of :apellido, :message => '^ El apellido del usuario no puede estar en blanco'
    validates_presence_of :contrasenia,  :message => '^ La contraseña del usuario no puede estar en blanco'
    validates_presence_of :correo ,:message => '^ El correo del usuario no puede estar en blanco'
    validates_presence_of :fechaNacimiento ,:message => '^ La fecha del usuario no puede estar en blanco'
  
    validates_format_of :correo , :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, :message => '^ El correo no tiene el formato ****@***.***'
    
    validates_length_of :nombre, :maximum => 30
    validates_length_of :apellido, :maximum => 30
    validates_length_of :contrasenia, :in => 8..16, :too_long => '^ Contraseña mayor a 16 caracteres', :too_short => '^ Contraseña menor a 8 caracteres'
    
    validates_confirmation_of :contrasenia
    
    has_attached_file :image, :default_url => 't3.jpg', styles: { medium: '200x200>', thumb: '48x48>' } 
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
