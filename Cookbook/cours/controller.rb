class Controller
  def initialize(view, repository)
    @view = view
    @repository = repository
  end

  def add_task
    # 1 - Demander le nom de la tache
    @view.ask_for_name
    name = gets.chomp
    # 2 - Demander la description de la tache
    @view.ask_for_description
    description = gets.chomp
    # 3 - Créer la tâche
    task = Task.new(name, description)
    # 4 - Sauvegarder la tâche
    @repository.add_task(task)
  end

  def display_all_tasks
    # 1 - Récupérer toutes les tâches
    tasks = @repository.tasks
    # 2 - Affiche les tâches
    @view.display_tasks(tasks)
  end
end
