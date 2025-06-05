require 'rack/test'
require 'rspec'
require_relative '/home/melvin/cats' # Make sure this points to your actual Sinatra app file

RSpec.describe Cats::Web do
  include Rack::Test::Methods

  def app
    Cats::Web.new
  end

  describe 'GET /health' do
    it 'returns status 200 and OK' do
      get '/health'
      expect(last_response.status).to eq(200)
      expect(last_response.body).to eq('OK')
    end
  end
end


