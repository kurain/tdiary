# -*- coding: utf-8 -*-

# taken from hiki/response.rb(rack branch in hiki), originated by okkez.
module TDiary
  if Object.const_defined?(:Rack)
    Response = ::Rack::Response
  else
    class Response
      attr_reader :body, :status, :headers
      def initialize(body = [], status = 200, headers = {}, &block)
        @cgi = CGI.new
        @body = body
        @status = status
        @headers = headers
        yield self if block_given?
      end

      def header
        @cgi.header(@headers)
      end
    end
  end
end
