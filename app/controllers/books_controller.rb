class BooksController < ApplicationController

  # Index
  get '/books' do
    @books = Book.all
    erb :'books/index.html'
  end

  # New
  get '/books/new' do
    erb :'books/new.html'
  end

  # Create
  post '/books' do
    book = Book.create(title: params[:title], snippet: params[:snippet])
    redirect "/books/#{book.id}"
  end

  # Show
  get '/books/:id' do
    @book = Book.find(params[:id])
    erb :'books/show.html'
  end

  post '/books/:id/add_comment' do

  end
end
