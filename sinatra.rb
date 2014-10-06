require 'sinatra'
require 'json'
require_relative 'anagram'

get '/anagram/?' do
  output = {}

  first = params[:word1]
  second = params[:word2]

  this = Anagram.new(first, second)

  output[:Anagram] = this.anagram?
  output.to_json
end
