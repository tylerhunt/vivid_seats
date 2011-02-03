require 'httparty'
require 'json'

module VividSeats
  class API
    Error = Class.new(StandardError)
    Timeout = Class.new(Error)
    Unauthorized = Class.new(Error)

    include HTTParty

    base_uri 'https://webservices.vividseats.com/rest/v2'
    default_params :accessId => ENV['VIVID_SEATS_ACCESS_ID']
    parser lambda { |body, format| JSON.parse(body) }

    if ENV['VIVID_SEATS_PROXY']
      http_proxy *ENV['VIVID_SEATS_PROXY'].split(':')
    end

    class << self
      def categories(query={})
        get('/getCategories', :query => query)
      end

      def performances(query={})
        get('/getEventPerformers', :query => query)
      end

      def events(query={})
        get('/getEvents', :query => query)
      end

      def performers(query={})
        get('/getPerformers', :query => query)
      end

      def get(*args)
        response = super

        case response.code
          when 412
            raise Unauthorized.new(response.body)
          else
            response
        end
      rescue Errno::ECONNRESET
        raise Error.new($!.message)
      rescue Errno::ETIMEDOUT
        raise Timeout.new($!.message)
      end
      private :get
    end
  end
end
