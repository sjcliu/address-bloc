require_relative '../models/address_book'

RSpec.describe AddressBook do
  describe "attributes"do
    it "should respond to entries" do
      book = AddressBook.new
      expect(book).to respond_to(:entries)
    end

    it "should initialize entries as an array" do
      book = AddressBook.new
      expect(book.entries).to be_a(Array)
    end

    it "should initialize entries as empty" do
      book = AddressBook.new
      expect(book.entries.size).to eq(0)
    end
  end

  describe "#add_entry" do
    it "add only one entry to the address book" do
      book = AddressBook.new
      book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')

      expect(book.entries.size).to eq(1)
    end

    it "adds the correct information to entries" do
      book = AddressBook.new
      book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
      new_entry = book.entries[0]

      expect(new_entry.name).to eq('Ada Lovelace')
      expect(new_entry.phone_number).to eq('010.012.1815')
      expect(new_entry.email).to eq ('augusta.king@lovelace.com')
    end
  end
  ## This is what i did
  # describe "#remove_entry" do
  #   it "should remove one entry from the address book" do
  #     book = AddressBook.new
  #     book.remove_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
  #
  #     expect(book.entries.size).to eq(0)
  #   end
  #
  #   it "confirms entry has been deleted" do
  #     book = AddressBook.new
  #     book.remove_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
  #     new_entry = book.entries[0]
  #
  #     expect(remove_entry.name).to eq()
  #     expect(remove_entry.phone_number).to eq()
  #     expect(remove_entry.email).to eq()
  #   end
  # end
  describe "#remove_entry" do
    it "should remove on entry from the address book" do
      book = AddressBook.new
      # I dont understand the logic here why will we add an entry
      book.add_entry("name", "phone_number","email")

      #Why do we do the code below?
      name = "Ada Lovelace"
      phone_number = "010.012.1815"
      email = "augusta.king@lovelace.com"
      book.add_entry(name, phone_number, email)

      #what does the .size and eq do, Where did "entries" come from?
      expect(book.entries.size).to eq 2
      book.remove_entry(name, phone_number, email)
      expect(book.entries.size).to eq 1
      expect(book.entries.first.name).to eq("name")
    end
  end
end
