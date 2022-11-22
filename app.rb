# file: app.rb

require_relative 'lib/database_connection'
require_relative 'lib/books_repository'

# We need to give the database name to the method `connect`.
DatabaseConnection.connect('book_store_test')

# Perform a SQL query on the database and get the result set.
# sql = 'SELECT id, title, author_name FROM books'
# result = DatabaseConnection.exec_params(sql, [])

books_repository = BooksRepository.new

# Print out each record from the result set .
# result.each do |record|
#   p record
# end

books_repository.all.each do |book|
    puts "#{book.id} - #{book.title} - #{book.author_name}"
end


# 1 - Nineteen Eighty-Four - George Orwell
# 2 - Mrs Dalloway - Virginia Woolf
# 3 - Emma - Jane Austen
# 4 - Dracula - Bram Stoker
# 5 - The Age of Innocence - Edith Wharton