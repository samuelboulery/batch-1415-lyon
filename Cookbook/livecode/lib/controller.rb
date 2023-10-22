require_relative 'view'
require_relative 'recipe'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    recipes = @cookbook.all
    @view.display_list(recipes)
  end

  def add
    name = @view.name_recipe
    description = @view.description_recipe
    recipe = Recipe.new(name, description)
    @cookbook.create(recipe)
  end

  def remove
    list
    index = @view.index_recipe
    @cookbook.destroy(index)
  end
end