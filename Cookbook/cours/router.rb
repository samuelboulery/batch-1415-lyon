class Router
  def initialize(view, controller)
    @view = view
    @controller = controller
  end

  def run
    loop do
      # 1 - demander à l'utilisateur ce qu'il veut faire
      # 2 - afficher toutes les actions possibles
      @view.display_all_possible_actions
      # 3 - récupérer ce que l'utilisateur a mis
      action_number = gets.chomp.to_i
      # 4 - éxecuter l'action correspondante
      case action_number
      when 1 then @controller.add_task
      when 2 then @controller.display_all_tasks
      end
    end
  end
end
