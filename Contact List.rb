@contacts = ["Jonah", "Tess", "Matt"]
def main_menu
  puts "--- Ruby Contact List ---"
  puts "1) View Contacts"
  puts "2) Add Contact"
  puts "3) Edit Contact"
  puts "4) Delete Contact"
  puts "5) Exit"

  case gets.to_i
    when 1
      show_contacts
      main_menu
    when 2
      add_contact
      main_menu
    when 3
      edit_contact
      main_menu
    when 4
      delete_contact
      main_menu
    when 5 
      exit 
    else
      puts "wrong"
  end
end
def show_contacts
   @contacts.each_with_index do |person, index|
    puts "#{index + 1} #{person}"
end
end 

def add_contact
  puts "add contact"
  name = gets.strip
  @contacts.push(name) 
  main_menu
end
def edit_contact  
  puts "which contact would you like to edit?"
  show_contacts
  picks = gets.to_i-1
  puts "what do you want to change the name to?"
    print ">"
    @contacts[picks]=gets.strip
end
def delete_contact
 show_contacts
   name= gets.to_i-1
    @contacts.delete_at (name)
    puts "Contact Deleted"
  main_menu
end
def exit
  puts "exit"
  main_menu
end

main_menu



  

  


