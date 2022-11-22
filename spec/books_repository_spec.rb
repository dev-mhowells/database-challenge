require 'books_repository'

RSpec.describe BooksRepository do
    it 'return books data' do

        repo = BooksRepository.new

        books = repo.all # array of each book

        expect(books[0].id).to eq '1' # =>  1
        expect(books[0].title).to eq 'Nineteen Eighty-Four' # =>  'Nineteen Eighty-Four'
        expect(books[0].author_name).to eq 'George Orwell' # =>  'George Orwell'

        expect(books[1].id).to eq '2' # =>  1
        expect(books[1].title).to eq 'Mrs Dalloway' # =>  'Nineteen Eighty-Four'
        expect(books[1].author_name).to eq 'Virginia Woolf' # =>  'George Orwell'

    end 

end