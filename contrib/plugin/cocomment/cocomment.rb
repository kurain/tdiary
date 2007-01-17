# cocomment.rb $Revision: 1.3 $
#
# Copyright (C) 2006 by Hiroshi SHIBATA
# You can redistribute it and/or modify it under GPL2.
#
if @mode == 'day' and not bot? then
   add_body_enter_proc do |date|
		<<-SCRIPT
      <script type="text/javascript">
      coco =
      {
      var blogTool               = "tDiary";
      var blogURL                = "#{h @conf.base_url}";
      var blogTitle              = "#{h @conf.html_title}";
      var postURL                = "#{h @conf.base_url}#{anchor( date.strftime( '%Y%m%d' ) )}";
      var postTitle              = "#{h( apply_plugin( @diaries[date.strftime('%Y%m%d')].title, true ) )}";
      var commentAuthorFieldName = "name";
      var commentAuthorLoggedIn  = false;
      var commentFormName        = "comment-form";
      var commentTextFieldName   = "body";
      var commentButtonName      = "comment";
      }
      <script id="cocomment-fetchlet" src="http://www.cocomment.com/js/enabler.js" type="text/javascript">
      </script>
		SCRIPT
	end
end

# Local Variables:
# mode: ruby
# indent-tabs-mode: t
# tab-width: 3
# ruby-indent-level: 3
# End:
# vi: ts=3 sw=3
