# -*- coding: utf-8 -*-

Before do
end

After do
end

Given "最低限のtdiary.conf" do
	fixture_dir = File.expand_path("../fixtures", File.dirname(__FILE__))
	work_data_dir = File.expand_path("../data", File.dirname(__FILE__))
	sources = Dir.glob("#{fixture_dir}/just_installed/data/*")

	unless sources.empty?
		FileUtils.cp_r sources, work_data_dir, :verbose => true
	end

	@driver = TDiaryDriver.configure do |conf|
		conf.data_path File.expand_path(
			"../fixtures/just_installed/tdiary.conf", File.dirname(__FILE__))
	end
end

# FIXME paramのハンドリングをもう少しまともにやること
Given "デフォルトの基本設定項目" do
	@driver.append_param("html_title=")
#	@driver.append_params("author_name")
	@driver.append_param("author_mail=")
	@driver.append_param("index_page=")
	@driver.append_param("description=")
	@driver.append_param("icon=")
	@driver.append_param("banner=")
	@driver.append_param("base_url=")
end

Given /(?:クエリ|フォーム)パラメータは (.*)/ do |param|
	@driver.append_param(param)
end

When /(.*) に(?:アクセス|ポスト)した/ do |uri|
	@status, @header, @response = @driver.__send__(:invoke,  uri)
end

Then /ステータスコードは (.*) である/ do |status|
	@status.to_s.should == status
end

Then /ボディの (.*) タグは (.*) を含む/ do |hpricot_path, content|
	@response.should have_tag(hpricot_path, /#{content}/)
end

Then /ボディに (.*) へのリンクがある/ do |link|
	@response.should have_tag("a[@href=#{link}]")
end

Then /ボディに (.*) タグがある/ do |hpricot_path|
	@response.should have_tag(hpricot_path)
end
