require_relative 'entry'

class AddressBook
  attr_accessor :entries

  def initialize
    @entries = []
  end

  def remove_entry(name, phone_number, email)
    delete_entry = nil #Why does it = nil

    @entries.each do |entry|
      if name == entry.name && phone_number == entry.phone_number && email == entry.email
        delete_entry = entry # i'm getting confused with entry and entries
      end
    end

    @entries.delete(delete_entry) #What does this do?
  end

  def add_entry(name, phone_number, email)
    index = 0 # What does this do?
    @entries.each do |entry|
      if name < entry.name
        break
      end
      index += 1
   end
   @entries.insert(index, Entry.new(name, phone_number,email))# Need this explained
  end
end
