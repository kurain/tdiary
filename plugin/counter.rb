# counter.rb $Revision: 1.4 $
#
# カウンタ表示プラグイン version 1.2.1
#
# 訪問者数を「全て」「今日」「昨日」に分けて表示します。
#
# 使う場所：
# ヘッダ、もしくはフッタ
# 
# 利用方法：
# counter: 全ての訪問者数を表示する
#	パラメタ：
#	 figure: 表示桁数。未指定時は5桁。
#	 filetype: ファイル種別(拡張子)。jpg, gif, png等。
#						 未指定時は、""(画像は使わない、CSSで外見を変える)。
#
# counter_today: 今日の訪問者数を表示する
# counter_yesterday: 昨日の訪問者数を表示する
#	パラメタ：
#	 figure: 表示桁数。未指定時は5桁。
#	 filetype: ファイル種別(拡張子)。jpg, gif, png等。
#              未指定時は、""(画像は使わない、CSSで外見を変える)。
#
# kiriban?: キリ番の時にtrueを返す(全て)。
# kiriban_today?: キリ番の時にtrueを返す(今日)。
#  パラメタ：なし。
#
# 使用例：
# counter
# counter 3
# coutner 3, "jpg"
# counter_today 4, "jpg"
# counter_yesterday
#
# オプションについて：
# 訪問間隔の指定
#   @options["counter.timer"] = 6
# 初期値の指定
#   @options["counter.init_num"] = 5
# ログの取得
#   @options["counter.log"] = true
# カウントアップ制限
#   @options['counter.deny_user_agents'] = ["w3m", "Mozilla/4"]
#   @options['counter.deny_remote_addrs'] = ["127.0", "10.0.?.1", "192.168.1.2"]
# キリ番
#   @options["counter.kiriban"] = [1000, 3000, 5000, 10000, 15000, 20000]
#   @options["counter.kiriban_today"] = [100, 200, 300, 400, 500, 600]
#
# CSSについて:
#	 counter: 対象文字列全体(全て)
#	 counter-today: 対象文字列全体(今日)
#	 counter-yesterday: 対象文字列全体(昨日)
#	 counter-0, ... : 1桁分(左から)
#	 counter-num-0, ... 9: 数字
#	 counter-kiriban: キリ番の数字の部分(全て)
#	 counter-kiriban-today: キリ番の数字の部分(今日)
#
# その他：
#   http://home2.highway.ne.jp/mutoh/tools/ruby/ja/counter.html
# を参照してください。
#
# 権利表示：
# Copyright (c) 2002 MUTOH Masao <mutoh@highway.ne.jp>
# You can redistribute it and/or modify it under GPL2.
# 
=begin ChangeLog
2002-05-05 MUTOH Masao  <mutoh@highway.ne.jp>
	* @debug = true 削除 :->
	* コメント変更
	* version 1.2.1

2002-05-04 MUTOH Masao  <mutoh@highway.ne.jp>
	* tlinkプラグインからのアクセスをカウントしてしまう不具合の修正
	* @options["counter.deny_user_agents"]追加
	* @options["counter.deny_remote_addrs"]追加
	* @options["counter.init_num"]追加。キリ番機能との関係で、counter
	* メソッドの引数のinit_numはobsoleteとします。
	* @options["counter.kiriban"], @options["counter.kiriban_today"]追加
	* キリ番機能追加(kiriban?,kiriban_today?メソッド追加)
	* version 1.2.0

2002-04-27 MUTOH Masao  <mutoh@highway.ne.jp>
	* add_header_procを使わないようにした
	* @options["counter.timer"]が有効にならない不具合の修正
	* @options["counter.log"]追加。trueを指定するとcounter.dat
	   と同じディレクトリにcounter.logというファイルを作成し
	   1日前のアクセス数を記録するようにした
	* cookieの値としてバージョン番号を入れるようにした
	* version 1.1.0

2002-04-25 MUTOH Masao  <mutoh@highway.ne.jp>
	* HEADでアクセスがあった場合に再びカウントされるように
		なってしまっていた不具合の修正(by NT<nt@24i.net>)
	* version 1.0.4

2002-04-24 MUTOH Masao  <mutoh@highway.ne.jp>
	* ツッコミを入れたときにエラーが発生する不具合の修正
	* version 1.0.3

2002-04-23 MUTOH Masao	<mutoh@highway.ne.jp>
	* データファイルを削除後、クッキーが有効期間中の端末から
		アクセスした場合に@todayが0になる不具合の修正
	* コメント入れたときに数字が表示されない不具合の修正
	* HEADでアクセスがあった場合はカウントしないようにした
		(reported by NT<nt@24i.net>, suggested a solution 
			by TADA Tadashi <sho@spc.gr.jp>)
	* version 1.0.2

2002-04-21 MUTOH Masao	<mutoh@highway.ne.jp>
	* CSSで_を使っているところを-に直した(reported by NT<nt@24i.net>)
	* TDiaryCountData#upで@allが+1されない不具合の修正
	* version 1.0.1

2002-04-14 MUTOH Masao	<mutoh@highway.ne.jp>
	* version 1.0.0
=end

@debug = true

	
if ["latest", "month", "day", "comment"].include?(@mode) and 
	@cgi.request_method =~ /POST|GET/ 

require 'date'

eval(<<TOPLEVEL_CLASS, TOPLEVEL_BINDING)
class TDiaryCountData
	attr_reader :today, :yesterday, :all, :newestday, :timer, :ignore_cookie
	attr_writer :ignore_cookie #means ALWAYS ignore a cookie.

	def initialize
		@today, @yesterday, @all = 0, 0, 0
		@newestday = nil
		@ignore_cookie = false
	end

	def up(now, cache_path, log)
		if now == @newestday
			@today += 1
		else
			log(@newestday, @today, cache_path) if log
			@yesterday = ((now - 1) == @newestday) ? @today : 0
			@today = 1
			@newestday = now
		end
		@all += 1
	end

	def log(day, value, path)
		return unless day
		open(path + "/counter.log", "a") do |io|
			io.print day, " : ", value, "\n"
		end
	end
end
TOPLEVEL_CLASS

module TDiaryCounter
	@version = "1.2.0"

	def run(cache_path, cgi, options)
		timer = options["counter.timer"] if options
		timer = 12 unless timer	# 12 hour
		@init_num = options["counter.init_num"] if options
		@init_num = 0 unless @init_num
		dir = cache_path + "/counter"
		path = dir + "/counter.dat"
		cookie = nil
	
		Dir.mkdir(dir, 0700) unless FileTest.exist?(dir)
	
		db = PStore.new(path)
		db.transaction do
			begin
				@cnt = db["countdata"]
			rescue PStore::Error
				@cnt = TDiaryCountData.new
				cgi.cookies = nil
			end

			allow = (cgi.user_agent !~ /tlink/ and
						allow?(cgi.user_agent, options, "user_agents") and
						allow?(cgi.remote_addr, options, "remote_addrs"))
			no_cookie = (! cgi.cookies or ! cgi.cookies.keys.include?("tdiary_counter"))

			if allow 
				changed = false
				if no_cookie || @cnt.ignore_cookie
					@cnt.up(Date.today, dir, (options and options["counter.log"]))
					cookie = CGI::Cookie.new({"name" => "tdiary_counter", 
														"value" => @version, 
														 "expires" => Time.now + timer * 3600})
					changed = true
				end
				if options["counter.kiriban"]
					@kiriban = options["counter.kiriban"].include?(@cnt.all + @init_num) 
				end
 				if ! @kiriban and options["counter.kiriban_today"]
					@kiriban_today = options["counter.kiriban_today"].include?(@cnt.today)
				end

				if @cnt.ignore_cookie
					@cnt.ignore_cookie = false
					changed = true
				end

				#when it is kiriban time, ignore the cookie next access time. 
				if @kiriban or @kiriban_today
					@cnt.ignore_cookie = true
					changed = true
				end

				db["countdata"] = @cnt if changed
			end
		end
		cookie
	end

	def allow?(cgi_value, options, option_name)
		allow = true
		if options and options["counter.deny_" + option_name] 
			options["counter.deny_" + option_name].each do |deny|
				if cgi_value =~ /#{deny}/
					allow = false
					break
				end
			end
		end
		allow 
	end

	def format(classtype, theme_url, cnt, figure = 5, filetype = "", init_num = 0, &proc)
		str = "%0#{figure}d" % (cnt + init_num)
		result = %Q[<span class="counter#{classtype}">]
		depth = 0
		str.scan(/./).each do |num|
			if block_given?
				result << %Q[<img src="#{theme_url}/#{yield(num)}" alt="#{num}" />]
			elsif filetype == ""
				result << %Q[<span class="counter-#{depth}"><span class="counter-num-#{num}">#{num}</span></span>]
			else 
				result << %Q[<img src="#{theme_url}/#{num}.#{filetype}" alt="#{num}" />]
			end
			depth += 1
		end
		result << "</span>"
	end

	def called?; @called; end
	def called; @called = true; end
	def all; @cnt.all + @init_num; end
	def today; @cnt.today; end
	def yesterday; @cnt.yesterday; end
	def kiriban?; @kiriban; end
	def kiriban_today?; @kiriban_today; end

	module_function :allow?, :all, :today, :yesterday, :format, :run, :kiriban?, :kiriban_today?
end

#init_num is deprecated.
#please replace it to @options["counter.init_num"]
def counter(figure = 5, filetype = "", init_num = 0, &proc) 
	TDiaryCounter.format("", theme_url, TDiaryCounter.all, figure, filetype, init_num, &proc)
end

def counter_today(figure = 5, filetype = "", &proc)
	TDiaryCounter.format("-today", theme_url, TDiaryCounter.today, figure, filetype, 0, &proc)
end

def counter_yesterday(figure = 5, filetype = "", &proc)
	TDiaryCounter.format("-yesterday", theme_url, TDiaryCounter.yesterday, figure, filetype, 0, &proc)
end

def kiriban?
	TDiaryCounter.kiriban?
end

def kiriban_today?
	TDiaryCounter.kiriban_today?
end

tdiary_counter_cookie = TDiaryCounter.run(@cache_path, @cgi, @options)
if tdiary_counter_cookie
	if defined?(add_cookie)
		add_cookie(tdiary_counter_cookie)
	else
		@cookie = tdiary_counter_cookie if tdiary_counter_cookie
	end
end

end
