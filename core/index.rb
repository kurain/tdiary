#!/usr/bin/env ruby
# -*- coding: utf-8; -*-
#
# index.rb $Revision: 1.35 $
#
# Copyright (C) 2001-2006, TADA Tadashi <sho@spc.gr.jp>
# You can redistribute it and/or modify it under GPL2.
#
BEGIN { $stdout.binmode }
begin
	Encoding::default_external = 'UTF-8'
rescue NameError
	$KCODE = 'n'
end

# TODO duplicated between index.rb and update.rb
def send_headers( status, headers )
	STDOUT.print "Status: #{status}\r\n"
	headers.each { |k, vs|
		vs.split( "\n" ).each { |v|
			STDOUT.print "#{k}: #{v}\r\n"
		}
	}
	STDOUT.print "\r\n"
	STDOUT.flush
end

def send_body( body )
	STDOUT.print body
	STDOUT.flush
end

begin
	if FileTest::symlink?( __FILE__ ) then
		org_path = File::dirname( File::readlink( __FILE__ ) ).untaint
	else
		org_path = File::dirname( __FILE__ ).untaint
	end
	$:.unshift( org_path ) unless $:.include?( org_path )
	require 'cgi'
	require 'tdiary/dispatcher'
	require 'tdiary/request'

	dispatcher = TDiary::Dispatcher.index
	request = TDiary::Request.new(ENV)
	status, headers, body = *dispatcher.dispatch_cgi( request.cgi, request )
	send_headers( status, headers )
	send_body( body )

rescue Exception
	print "Status: 500 Internal Server Error\n"
	print "Content-Type: text/html\n\n"

	puts "<h1>500 Internal Server Error</h1>"
	puts "<pre>"
	puts CGI::escapeHTML( "#{$!} (#{$!.class})" )
	puts ""
	puts CGI::escapeHTML( $@.join( "\n" ) )
	puts "</pre>"
	puts "<div>#{' ' * 500}</div>"
end
