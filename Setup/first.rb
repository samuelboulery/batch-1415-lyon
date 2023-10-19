# Nous faisons la fonction circle_area avec le parametre radius
def circle_area(radius)
  # Nous renvoyons 0 si jamais le radius est négatif
  return 0 if radius.negative?

  # Sinon je renvois avec le calcul de l'aire
  return 3.14 * (radius**2)
end
