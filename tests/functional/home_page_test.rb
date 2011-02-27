require_relative "../test_helper"

class HomePageTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    WikgitApp
  end

  def test_returns_a_list_of_spaces
    get '/'
    assert last_response.ok?
  end

end
