Bundler.setup
require 'reactor'
require 'minitest/autorun'
require 'wrong'
require 'wrong/adapters/minitest'
Wrong.config.alias_assert :expect

class StubServer
  module Server
    attr_accessor :response, :delay
    def receive_data(data)
      EM.add_timer(@delay) {
        send_data @response
        close_connection_after_writing
      }
    end
  end

  def initialize(response, delay = 0, port=8081)
    @sig = EventMachine::start_server("127.0.0.1", port, Server) { |s|
      s.response = response
      s.delay = delay
    }
  end

  def stop
    EventMachine.stop_server @sig
  end
end

require 'reactor/system'

describe 'Reactor with EventMachine' do
  it 'sleeps for a bit' do
    EM.synchrony do
      sleep 0.000001
      EM.stop
    end
  end
end
