require_relative 'controller'  # You need to create this file!
require_relative 'router'
require_relative "recipes"
require_relative "cookbook"
require_relative "display"

CSV_FILE = File.join(File.dirname(__FILE__), 'recipes.csv')
cookbook = Cookbook.new(CSV_FILE)
controller = Controller.new(cookbook)

router = Router.new(controller)

# Start the app
router.run
