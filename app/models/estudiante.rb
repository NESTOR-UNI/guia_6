class Estudiante < ApplicationRecord
  # Validar que los campos no estén vacíos
  validates :nombres, :apellidos, :carrera, :carnet, :fecha_nacimiento, :edad, :celular, presence: true

  # Validar que la edad y el celular sean números enteros
  validates :edad, numericality: { only_integer: true, less_than_or_equal_to: 999 }
  # ERROR CORREGIDO: Espacio añadido antes de '}'
  validates :celular, numericality: { only_integer: true, less_than_or_equal_to: 88888888 }
  # (Opcional) Validar que la edad tenga máximo 3 dígitos
  validates :edad, length: { maximum: 3 }
  # ERROR CORREGIDO: Espacio añadido antes de '}'
  validates :celular, length: { maximum: 8 }
end # ERROR CORREGIDO: Se eliminó la línea vacía antes de 'end'
