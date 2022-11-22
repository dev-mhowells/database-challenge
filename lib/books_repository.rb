# require 'database_connection'
require_relative './book'

class BooksRepository

    def all
        sql = 'SELECT id, title, author_name FROM books'
        result_set = DatabaseConnection.exec_params(sql, [])

        books = []

        result_set.each do |book|

            newbook = Book.new
            newbook.id = book['id']
            newbook.title = book['title']
            newbook.author_name = book['author_name']

            books << newbook

        end
        # p result_set
        return books
    end

end

# test = BooksRepository.new
# test.all