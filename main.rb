require './app'
require './menu'

def main
  menu = Menu.new
  app = App.new
  puts "\nWelcome to OOP School Library App!\n\n"
  menu.list_menu(app)
end
main
