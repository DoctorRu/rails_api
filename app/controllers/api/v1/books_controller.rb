class Api::V1::BooksController < ApplicationController

    def index
        @books = Book.all.includes(:reviews)
        books_serializer = parse_json @books
        json_response "Index books successfully", true, {books: books_serializer}, :ok
    end

    def show
        book_serializer = parse_json @book
        json_response "Show books successfully", true, {book: book_serializer}, :ok
    end

    private

    def load_book
        @book = Book.find_by id: params[:id]

        unless @book.present?
            json_response "Can't get the book", false, {}, :not_found
        end
    end

end