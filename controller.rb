require('json')
require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/word_formatter')

get '/' do
  erb(:home)
end

get '/address' do
  content_type(:json)
  address = {
    address: '3 ARGYLE HOUSE',
    building: 'CODEBASE',
    postcode: 'e13 zqf',
    phone: '0131558030'
  }
  return WordFormatter.new(address).postcode_upper_case.to_json
end

get '/camel_case/:input' do
  content_type(:json)
  result = WordFormatter.new(params[:input].to_s).camel_case
  return result.to_json
end