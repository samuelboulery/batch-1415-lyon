def calcul(nombre1, nombre2, operateur)
  case operateur
  when '+', 'addition'
    nombre1 + nombre2
  when '-'
    nombre1 - nombre2
  when '/'
    nombre1 / nombre2
  when '*'
    nombre1 * nombre2
  else
    'Opérateur invalide'
  end
end
