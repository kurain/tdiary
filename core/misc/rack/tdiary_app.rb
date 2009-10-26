$:.unshift(File.expand_path("../../", File.dirname(__FILE__)))
require 'cgi'
require 'tdiary/dispatcher'
require 'tdiary/request'
require 'tdiary/response'

# FIXME too dirty hack :-<
class CGI
	def env_table_rack
		$RACK_ENV
	end

	alias :env_table_orig :env_table
	alias :env_table :env_table_rack
end

module Rack
	class TDiaryApp
		def initialize( target )
			@dispatcher = TDiary::Dispatcher.__send__(target)
		end

		def call(env)
			adopt_rack_request_to_plain_old_tdiary_style(env)
			response = @dispatcher.dispatch_cgi(CGI.new)
			response.to_a
		end

		private
		def adopt_rack_request_to_plain_old_tdiary_style(env)
			req = TDiary::Request.new(env)
			$RACK_ENV = req.env
			env["rack.input"].rewind
			fake_stdin_as_params
		end

		def fake_stdin_as_params
			stdin_spy = StringIO.new("")
			# FIXME dirty hack
			if $RACK_ENV && $RACK_ENV['rack.input']
				stdin_spy.print($RACK_ENV['rack.input'].read)
				stdin_spy.rewind
			end
			$stdin = stdin_spy
		end
	end
end
