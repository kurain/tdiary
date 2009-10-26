# -*- coding: utf-8 -*-
require 'tdiary/response'

# tDiaryのメインがcgiを対象としているので、cgiっぽい出力から
# Rackっぽいresponseを抽出するためのユーティリティ
# tDiaryが普通にresponseに対して出力するようになれば、不要になるはず。
module ResponseHelper
	class HTTPStatus
		attr_reader :code, :message
		def initialize(code, message)
			@code, @message = code.to_i, message
		end
	end

	class ResponseSpy
		def initialize(raw = StringIO.new)
			@raw = raw
			@body = ""
		end

		def body
			@body
		end

		def headers
			@headers
		end
		alias :header :headers

		def status
			@status
		end

		def status_code
			@status.code
		end

		def parse_raw_result!
			raw_header, @body = @raw.split(CGI::EOL * 2, 2)
			@headers ||= parse_headers(raw_header)
			@status = extract_status
		end

		private
		def parse_headers(raw_header)
			raw_header.split(CGI::EOL).inject({}) do |headers, entry|
				if (pair = /(.+?):\s(.+?)\Z/.match(entry))
					key, val = pair[1..-1]
					headers[key] = val
				end
				headers
			end
		end

		def extract_status
			if status = @headers.delete("Status")
				m = status.match(/(\d+)\s(.+)\Z/)
				HTTPStatus.new(*m[1..2])
			else
				HTTPStatus.new(200, "OK")
			end
		end
	end

	def parse(raw_result)
		res_spy = ResponseSpy.new(raw_result)
		res_spy.parse_raw_result!
		TDiary::Response.new(
			res_spy.body,
			res_spy.status_code,
			res_spy.headers)
	end
	module_function :parse
end
