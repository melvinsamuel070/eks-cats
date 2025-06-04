require 'rack/test'
require_relative '/home/melvin/cats' # update with your actual path

RSpec.describe Cats::Web do
  include Rack::Test::Methods


const promBundle = require("express-prom-bundle");
const metricsMiddleware = promBundle({ includeMethod: true });
app.use(metricsMiddleware);
// metrics available at /metrics

  def app
    Cats::Web.new
  end

  RSpec.describe 'Sinatra App' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end


  describe 'GET /health' do
    it 'returns status 200 and OK' do
      get '/health'
      expect(last_response.status).to eq(200)
      expect(last_response.body).to eq('OK')
    end
  end
end



