=begin
= �����Υ�󥯸��⤦����äȤ��������ץ饰����((-$Id: disp_referrer.rb,v 1.4 2003-10-21 17:45:15 zunda Exp $-))
���ܸ�꥽����

== ����
����ƥʤ���Υ�󥯡����������󥸥�θ�����̤��̾�Υ�󥯸��β��ˤ�
�Ȥ��ɽ�����ޤ������������󥸥�θ�����̤ϡ���������ˤޤȤ���ޤ���

�ǿ���������ɽ���Ǥϡ��̾�Υ�󥯸��ʳ��Υ�󥯸��򱣤��ޤ���

== ����
��������(1.1.2.39����)���饳���ɤΤۤȤ�ɤ�������ʤ��������ᡢ
* �������󥸥�˴ؤ���ư��㤦
* �ѻߤ��줿���ץ���󤬤���
* ���ץ����̾���ѹ����줿
�Ȥ�����ߴ�������ޤ�������Ū�������WWW�֥饦������Ǥ���褦�ˤʤä�
���ޤ��Τǡ��������Ƥ������������ߤޤ���

�������Ǥ���٤�ȡ�
* ����å���ˤ��ɽ������®�����줿((-�긵�Ǥϡ�����å����Ȥ�ʤ���
  ��ˤ���٤ơ�1��ʬ��2/3�ۤɡ��ǿ�3��ʬ��1/2�ۤɤμ»��֤�����������
  ����ޤ���-))�����ε�ǽ�ϻ�ǰ�ʤ��顢��󥿥������ʤ�secure=true������
  �ǤϻȤ��ޤ���
* ��󥯸��ִ��ꥹ�Ȥˤʤ�URL�����Ū��ñ��WWW�֥饦������ꥹ�Ȥ��ɲä�
  ����褦�ˤʤä�
* �ִ����ʸ����κǽ��[]�ǰϤޤ줿ʸ��������뤳�Ȥˤ�äơ��桼����
  �����ƥ��꡼�����ߤǤ���褦�ˤʤä���((-tDiary���ΤȤϰ㤤�����Ĥ�
  URL�ϣ��ĤΥ��ƥ��꡼�������Ƥʤ����Ȥˤ����դ���������-))
* ����Ū�������WWW�֥饦������Ǥ���褦�ˤʤä�
* disp_referrer.rb��̵���Ƥ�Ȥ���
* Uconv�饤�֥���Nora�饤�֥�꤬����Ф���ʤ�ˡ�̵����Фʤ��ʤ��
  ư���
�Ȥ�������������ޤ���

== �Ȥ���
���Υץ饰����򥤥󥹥ȡ��뤹�뤳�Ȥǡ��ǥե���ȤǤϡ�
* ����ʬ��������ɽ���ǡ��������Υ�󥯸��פ�����ƥʡ��������󥸥󡢤���
  ¾�ˤޤȤ��ɽ�������褦�ˤʤ�ޤ����ִ����ʸ����κǸ��()�������
  �����ȥ�ǥ��롼�פ��ޤ����ޤ����������󥸥󤫤�Υ�󥯤ϡ��������
  �̤ˤޤȤ���ޤ���
* �ǿ���������ɽ���ǡ��������Υ�󥯸��פ˥���ƥʤ両�����󥸥󤫤�Υ�
  �󥯤�ɽ������ʤ��ʤ�ޤ���
��󥯸�URL�Υ����ȥ�ؤ��ִ��ϡ�tDiary���ΤΥ�󥯸��ִ��ꥹ�Ȥ�Ȥ���
����

���ץ����ˤĤ��Ƥϲ���������������������Ū�ʥ��ץ����ϡ�tDiary����
����̤��顢�֥�󥯸��⤦����äȶ����פ򥯥�å����뤳�Ȥ�����Ǥ��ޤ���
�������ꤹ����ˤϡ�
  Insecure: can't modify hash (SecurityError)
�Ȥ������顼���Ф��ǽ��������ޤ��������tDiary������Ǥ������ξ��ˤϡ�
tDiary�򿷤�������1.5.5.20030806�ʹߤ�Ȥ������ִ��ܡפ��鲿���ѹ����� 
�ˡ�OK�פ򲡤����Ȥǥ��顼�����Ǥ���Ǥ��礦��

��󥯸��ִ��ꥹ�Ȥ䥪�ץ������ѹ��������ϡ�����å���ǥ��쥯�ȥ�
�ˤ��륭��å���ե�����disp_referrer2.cache��disp_referrer2.cache~���
�饰�����������̤��鹹������ɬ�פ�����ޤ������Υץ饰�����������̤�
���ѹ��������ܤˤĤ��Ƥϡ��ѹ����˥���å���ι����⤷�ޤ���

��󥯸��ϡ��ʲ��Τ褦�ʴ���ʬ�व��ޤ���

: �̾�Υ�󥯸�(�������Υ�󥯸���)
  ��󥯸��ִ��ꥹ�Ȥˤ��ƤϤޤ�URL�Τ����������ʳ��Τ�Ρ�
  @options['disp_referrer2.unknown.divide']=false�ξ��ϡ���󥯸��ִ�
  �ꥹ�Ȥˤ��ƤϤޤ�ʤ�URL�⤳���˴ޤޤ�ޤ���

  ����ˡ���󥯸��ִ��ꥹ�Ȥˤ�ä��ִ����줿���ʸ����κǽ��[]�ǰϤ�
  �줿ʸ���󤬤�����ϡ�����򥫥ƥ��꡼�Ȳ�ᤷ�ƥ��ƥ��꡼�̤�ɽ����
  ʬ���ޤ������ε�ǽ����������ˤϡ�WWW�֥饦������������̤����Ѥ��뤫��
  tdiary.conf��@options['disp_referrer2.normal.categorize']=false�ˤ���
  �������������Υ��ץ������ѹ��������ˤϥ���å���򹹿�����ɬ�פ���
  ��ޤ���

: ����ƥ�
  URL�� /a/ antenna/ antenna. �ʤɤ�ʸ���󤬴ޤޤ�뤫���ִ����ʸ����ˡ�
  ����ƥ� links �ʤɤ�ʸ���󤬴ޤޤ���󥯸��Ǥ��������ξ��ϡ�
  @options['disp_referrer2.antenna.url']��
  @options['disp_referrer2.antenna.title']�ˤ�ä��ѹ��Ǥ��ޤ���
  tdiary.conf���Խ����Ƥ�������������å���򹹿�����ɬ�פ�����ޤ���

: ����¾
  ��󥯸��ִ��ꥹ�Ȥˤʤ��ä�URL�Ǥ������ޤ�Ĺ��URL�ϡ�tDiary���Τ��ִ�
  �ꥹ�Ȥˤ�ä��̾�Υ�󥯸���ʬ�व��Ƥ��ޤ���ǽ��������ޤ���

: ����
  ���Υץ饰����˴ޤޤ�븡�����󥸥�Υꥹ�Ȥ˰��פ���URL�Ǥ����ꥹ��
  ��DispRef2Setup::Engines�ˤ���ޤ������ޤ��������󥸥��ǧ������ʤ�
  URL�ϡ��ۤȤ�ɤξ�硢�̾�Υ�󥯸��˺����ä�ɽ������Ƥ��ޤ��Ǥ���
  �������Τ褦�ʾ��ϡ�URL��
  ((<URL:http://tdiary-users.sourceforge.jp/cgi-bin/wiki.cgi?disp_referrer2.rb>))
  ���Τ餻�Ƥ���������Ⱥ�Ԥ���Ӥޤ���

=== �Ķ�
ruby-1.6.7��1.8.0��ư����ǧ���Ƥ��ޤ�������ʳ��ΥС�������Ruby�Ǥ�
ư��뤫�⤷��ޤ���

tdiary-1.5.3-20030509�ʹߤǻȤ��ޤ������������tDiary-1.5�Ǥϡ�
00default.rb��bot?�᥽�åɤ��������Ƥ��ʤ����ᡢ�������󥸥�Υ�������
���Ф��ƥ�󥯸���ɽ������Ƥ��ޤ��ޤ���

secure�⡼�ɤǤ�Ȥ��ޤ�������å���ˤ���®�����Ǥ��ޤ���

mod_ruby�Ǥ�ư��Ϻ��ΤȤ�����ǧ���Ƥ��ޤ���

=== ���󥹥ȡ�����ˡ
���Υե������tDiary��plugin�ǥ��쥯�ȥ���˥��ԡ����Ƥ������������Υץ�
������κǿ��Ǥϡ�
((<URL:http://zunda.freeshell.org/d/plugin/disp_referrer2.rb>))
�ˤ���Ϥ��Ǥ���

�ޤ���Nora�饤�֥�꤬���󥹥ȡ��뤵��Ƥ�����ˤϡ�URL�β���HTML��
���������פˡ�Ruby��ɸ��ź�դ�CGI�饤�֥��������Nora�饤�֥����
�Ѥ��ޤ�������ˤ�ꡢ����®�٤��㴳®���ʤ�ޤ�((-�긵�ǻ���Ȥ�����
����ʬ��ɽ���ˤ�������֤�1������û�����ʤ�ޤ�����-))��Nora�ˤĤ��Ƥξ�
�٤ϡ�((<URL:http://raa.ruby-lang.org/list.rhtml?name=Nora>))�򻲾Ȥ���
����������

=== ���ץ����
��������������Ǥ��륪�ץ����ΰ����ϡ�DispRef2Setup::Defaults�ˤ����
���������Υ��ץ�����key�κǽ�ˡ���disp_referrer2.�פ��ɲä��뤳��
�ǡ�tdiary.conf��@options��key�Ȥʤꡢtdiary.conf��������Ǥ���褦�ˤ�
��ޤ��������Υ��ץ����Τ�����DispRef2URL::Cached_options�˵󤲤��
�Ƥ����Τϡ��ѹ��κݤ˥���å���ι�����ɬ�פǤ���

�ޤ���tDiary��������̤���֥�󥯸��⤦����äȶ����פ����֤��Ȥ�WWW��
�饦����������Ǥ�����ܤ⤢��ޤ���

== �ռ�
���Υץ饰����ϡ�
* UTF-8ʸ�����EUCʸ����ؤ��Ѵ���ǽ
* �����θ������󥸥�̾�Ȥ���URL
* �������󥸥�Υ��ܥåȤΥ�������󥰤κݤ˥�󥯸���ɽ�����ʤ���ǽ
��MUTOH Masao�����disp_referrer.rb���饳�ԡ����Խ����ƻȤ碌�Ƥ�����
���Ƥ��ޤ���(�������󥸥�Υ��ܥåȤ˴ؤ��뵡ǽ�ϸ��ߤ�tDiary���ΤˤȤ�
���ޤ�Ƥ��ޤ���)

�ޤ���URL���᤹�뵡ǽ�ΰ�����Ruby����°��cgi.rb���饳�ԡ����Խ�����
�Ȥ碌�Ƥ��������Ƥ��ޤ���

����ˡ��̾�Υ�󥯸���[]�ǰϤޤ줿ʸ�����Ȥäƥ��ƥ���ʬ�����륢����
�����ϡ�kazuhiko����Τ�ΤǤ���

���ͤ˴��դ������ޤ���

== Todos
* secure=true�ǥ�󥯸��ִ��ꥹ�ȤΥƥ����ȥե�����ɤǥ꥿����򲡤����ݤ�ư��
* parse_as_search��®��: hostname�Υ���å��塩

== ����ˤĤ���
Copyright (C) 2003 zunda <zunda at freeshell.org>

Please note that some methods in this plugin are written by other
authors as written in the comments.

Permission is granted for use, copying, modification, distribution, and
distribution of modified versions of this work under the terms of GPL
version 2 or later.
=end

=begin ChangeLog
See ../ChangeLog for changes after this.

* Mon Sep 29, 2003 zunda <zunda at freeshell.org>
- forgot to change arguments after changing initialize()
* Thu Sep 25, 2003 zunda <zunda at freeshell.org>
- name.untaint to eval name
* Thu Sep 25, 2003 zunda <zunda at freeshell.org>
- use to_native instead of to_euc
* Mon Sep 19, 2003 zunda <zunda at freeshell.org>
- disp_referrer2.rb,v 1.1.2.104 commited as disp_referrer.rb
* Mon Sep  1, 2003 zunda <zunda at freeshell.org>
- more strcit check for infoseek search enigne
* Wed Aug 27, 2003 zunda <zunda at freeshell.org>
- rd.yahoo, Searchalot, Hotbot added
* Tue Aug 12, 2003 zunda <zunda at freeshell.org>
- search engine list cleaned up
* Mon Aug 11, 2003 zunda <zunda at freeshell.org>
- instance_eval for e[2] in the search engine list
* Wed Aug  7, 2003 zunda <zunda at freeshell.org>
- WWW browser configuration interface
  - ����å���ι�������μ¤ˤ���褦�ˤ��ޤ�����WWW�֥饦�������ִ�
    �ꥹ�Ȥ��ä����ˤϥꥹ�Ȥκǽ���ɲä���ޤ���
  - secure=true�������Ǥ���¾�Υ�󥯸��ꥹ�Ȥ�ɽ���Ǥ���褦�ˤʤ�ޤ�����
- Regexp generation for Wiki sites
* Wed Aug  6, 2003 zunda <zunda at freeshell.org>
- WWW browser configuration interface
  - ��ʥ��ץ����ȥ�󥯸��ִ��ꥹ�Ȥθ�ΨŪ���Խ���WWW�֥饦�������
    ����褦�ˤʤ�ޤ�����secure=true�������Ǥϰ����ε�ǽ�ϻȤ��ޤ���
* Sat Aug  2, 2003 zunda <zunda at freeshell.org>
- Second version
- basic functions re-implemented
  - ���ץ�����̿̾���ʤ����ޤ������ޤ����פʥ��ץ�����ä��ޤ�����
    tdiary.conf���Խ����Ƥ������ϡ�������Ǥ�������򤷤ʤ����Ƥ���������
  - Nora�饤�֥��ȥ���å�������Ѥǹ�®�����ޤ�����
  - �������󥸥�Υꥹ�Ȥ�ץ饰����ǻ��Ĥ褦�ˤʤ�ޤ�����&��;��ޤม
    ��ʸ���������̤����ФǤ��ޤ���
* Mon Feb 17, 2003 zunda <zunda at freeshell.org>
- First version
=end

# Message strings
Disp_referrer2_name = '��󥯸��⤦����äȶ���'
Disp_referrer2_abstract = <<'_END'
	����ƥʤ���Υ�󥯡����������󥸥�θ�����̤�
	�̾�Υ�󥯸��β��ˤޤȤ��ɽ�����ޤ���
	���������󥸥�θ�����̤ϡ���������ˤޤȤ���ޤ���
_END
Disp_referrer2_with_Nora = <<'_END'
<p>
	Nora�饤�֥���ȤäƤ��ޤ��Τǡ�ɽ��������®���Ϥ��Ǥ���
</p>
_END
Disp_referrer2_without_Nora = <<'_END'
<p>
	ɽ��®�٤����ˤʤ���ϡ�
	<a href="http://raa.ruby-lang.org/list.rhtml?name=Nora">Nora</a>
	�饤�֥��򥤥󥹥ȡ��뤷�ƤߤƤ���������
</p>
_END
Disp_referrer2_updated_urls = <<'_END'
<p>����å���Τ�����%d�Ĥ�URL����������ޤ�����</p>
_END
Disp_referrer2_cache_info = <<'_END'
<p>
	���ߡ�����å�����礭����%1$s�Х��ȡ�
	%2$s�Ĥ�URL������å��夵��Ƥ��ޤ���
</p>
_END
Disp_referrer2_update_info = <<'_END'
<p>
	��<a href="#{@conf.update}?conf=referer">��󥯸�</a>�פ��ѹ��θ�ˤ�
	<a href="#{@conf.update}?conf=disp_referrer2;dr2.cache.update=force;dr2.current_mode=#{@current_mode}">����å���ι���</a>
	��ɬ�פ��⤷��ޤ���
</p>
_END
Disp_referrer2_move_to_refererlist = <<'_END'
	����¾�Υ�󥯸����ִ��ꥹ�Ȥ��Խ���<a href="#{@conf.update}?conf=disp_referrer2;dr2.new_mode=#{RefList};dr2.change_mode=true">�ܤ�</a>��
_END
Disp_referrer2_move_to_config = <<'_END'
	����Ū�������<a href="#{@conf.update}?conf=disp_referrer2;dr2.new_mode=#{Options};dr2.change_mode=true">�ܤ�</a>��
_END
Disp_referrer2_also_todayslink = <<'_END'
	��󥯸��ִ��ꥹ�Ȥϡ�<a href="%s?conf=referer">��󥯸�</a>�פ�����Խ��Ǥ��ޤ���
_END
Disp_referrer2_antenna_label = '����ƥ�'
Disp_referrer2_unknown_label = '����¾�Υ�󥯸�'
Disp_referrer2_search_label = '����'
Disp_referrer2_search_unknown_keyword = '�����������'
Disp_referrer2_cache_label = '(%s�Υ���å���)'

class DispRef2SetupIF

	# show options
	def show_options
		r = <<-_HTML
			<h4>��󥯸���ʬ���ɽ��</h4>
			<p>
				<input name="dr2.current_mode" value="#{Options}" type="hidden">
				��󥯸��ִ��ꥹ�Ȥˤʤ���󥯸���
				<input name="dr2.unknown.divide" value="true" type="radio"#{' checked'if @setup['unknown.divide']}>#{@setup['unknown.label']}�Ȥ���ʬ���� /
				<input name="dr2.unknown.divide" value="false" type="radio"#{' checked'if not @setup['unknown.divide']}>�̾�Υ�󥯸��Ⱥ����롣
			</p>
			<p>
				#{@setup['unknown.label']}��
				<input name="dr2.unknown.hide" value="false" type="radio"#{' checked'if not @setup['unknown.hide']}>ɽ������ /
				<input name="dr2.unknown.hide" value="true" type="radio"#{' checked'if @setup['unknown.hide']}>������
			</p>
			<p>
				��󥯸��ִ��ꥹ�Ȥ��ִ����ʸ����κǽ��[]�򥫥ƥ��꡼ʬ����
				<input name="dr2.normal.categorize" value="true" type="radio"#{' checked'if @setup['normal.categorize']}>�Ȥ� /
				<input name="dr2.normal.categorize" value="false" type="radio"#{' checked'if not @setup['normal.categorize']}>�Ȥ�ʤ���
			</p>
			<p>
				����ʬ��ɽ���ǡ��̾�Υ�󥯸��ʳ��Υ�󥯸���
				<input name="dr2.long.only_normal" value="false" type="radio"#{' checked'if not @setup['long.only_normal']}>ɽ������ /
				<input name="dr2.long.only_normal" value="true" type="radio"#{' checked'if @setup['long.only_normal']}>������
			</p>
			<p>
				�ǿ���ɽ���ǡ��̾�Υ�󥯸��ʳ��Υ�󥯸���
				<input name="dr2.short.only_normal" value="false" type="radio"#{' checked'if not @setup['short.only_normal']}>ɽ������ /
				<input name="dr2.short.only_normal" value="true" type="radio"#{' checked'if @setup['short.only_normal']}>������
				(ɽ��������ˤϡ����Υץ饰����̵�����Ȥޤä���Ʊ��ɽ���ˤʤ�ޤ���)
			</p>
			<h4>�̾�Υ�󥯸��Υ��롼�ײ�</h4>
			<p>
				�̾�Υ�󥯸���
				<input name="dr2.normal.group" value="true" type="radio"#{' checked'if @setup['normal.group']}>�ִ����ʸ����ǤޤȤ�� /
				<input name="dr2.normal.group" value="false" type="radio"#{' checked'if not @setup['normal.group']}>URL���ʬ���롣
			</p>
			<p>
				�̾�Υ�󥯸����ִ����ʸ����ǤޤȤ����ˡ��Ǹ��()��
				<input name="dr2.normal.ignore_parenthesis" value="true" type="radio"#{' checked'if @setup['normal.ignore_parenthesis']}>̵�뤹�� /
				<input name="dr2.normal.ignore_parenthesis" value="false" type="radio"#{' checked'if not @setup['normal.ignore_parenthesis']}>̵�뤷�ʤ���
			</p>
			<h4>����ƥʤ���Υ�󥯤Υ��롼�ײ�</h4>
			<p>
				����ƥʤ���Υ�󥯤�
				<input name="dr2.antenna.group" value="true" type="radio"#{' checked'if @setup['antenna.group']}>�ִ����ʸ����ǤޤȤ�� /
				<input name="dr2.antenna.group" value="false" type="radio"#{' checked'if not @setup['antenna.group']}>URL���ʬ���롣
			</p>
			<p>
				����ƥʤ���Υ�󥯤��ִ����ʸ����ǤޤȤ����ˡ��Ǹ��()��
				<input name="dr2.antenna.ignore_parenthesis" value="true" type="radio"#{' checked'if @setup['antenna.ignore_parenthesis']}>̵�뤹�� /
				<input name="dr2.antenna.ignore_parenthesis" value="false" type="radio"#{' checked'if not @setup['antenna.ignore_parenthesis']}>̵�뤷�ʤ���
			</p>
			<h4>����������ɤ�ɽ��</h4>
			<p>
				�������󥸥�̾��
				<input name="dr2.search.expand" value="true" type="radio"#{' checked'if @setup['search.expand']}>ɽ������ /
				<input name="dr2.search.expand" value="false" type="radio"#{' checked'if not @setup['search.expand']}>ɽ�����ʤ���
			</p>
		_HTML
		unless @setup.secure then
		r << <<-_HTML
			<h4>����å���</h4>
			<p>
				����å����
				<input name="dr2.no_cache" value="false" type="radio"#{' checked'if not @setup['no_cache']}>���Ѥ��� /
				<input name="dr2.no_cache" value="true" type="radio"#{' checked'if @setup['no_cache']}>���Ѥ��ʤ���
			</p>
			<p>����������ѹ��ǡ�����å����
				<input name="dr2.cache.update" value="force" type="radio">�������� /
				<input name="dr2.cache.update" value="auto" type="radio" checked>ɬ�פʤ鹹������ /
				<input name="dr2.cache.update" value="never" type="radio">�������ʤ���
			</p>
			<p>
				����å���ι����ˤ�¿���λ��֤��������礬����ޤ���
				OK�ܥ���򲡤����餷�Ф餯���Ԥ�����������
				����������å���򹹿����ʤ���ɽ����̷�⤬�����뤳�Ȥ�����ޤ���
			</p>
		_HTML
		end # unless @setup.secure
		r
	end

	# shows URL list to be added to the referer_table or no_referer
	def show_unknown_list
		if @setup.secure then
			urls = DispRef2Latest_cache.unknown_urls
		elsif @setup['no_cache'] then
			urls = DispRef2Latest.new( @cgi, 'latest.rhtml', @conf, @setup ).unknown_urls
		else
			urls = DispRef2Cache.new( @setup ).unknown_urls
		end
		r = <<-_HTML
			<h4>��󥯸��ִ��ꥹ��</h4>
			<input name="dr2.current_mode" value="#{RefList}" type="hidden">
		_HTML
		if @cache then
			r << "<p>#{@setup['unknown.label']}�ϥ���å�����椫��õ���Ƥ��ޤ���"
		else
			r << "<p>#{@setup['unknown.label']}�Ϻǿ�ɽ������������õ���Ƥ��ޤ���"
		end
		r << <<-_HTML
			��󥯸������ꥹ�Ȥ�̵��ꥹ�Ȥ˰��פ���URL�Ϥ����ˤ�ɽ������ޤ���
		</p>
		<p>
			��󥯸��ִ��ꥹ�Ȥ䵭Ͽ�����ꥹ�Ȥˤ����줿���ʤ�URL�ϡ�
			̵��ꥹ�Ȥ�����Ƥ������Ȥǡ�
			�����Υꥹ�Ȥ˸���ʤ��ʤ�ޤ���
			̵��ꥹ�Ȥϡ�
			�����Υꥹ�Ȥ�URL��ɽ�����뤫�ɤ�����Ƚ�Ǥˤ����Ȥ��ޤ���
			<input name="dr2.clear_ignore_urls" value="true" type="checkbox">̵��ꥹ�Ȥ���ˤ�����ϥ����å����Ʋ�������
		</p>
		_HTML
		if urls.size > 0 then
			r << <<-_HTML
				<p>��󥯸��ִ��ꥹ�Ȥˤʤ�������URL��
					��󥯸��ִ��ꥹ�Ȥ��������ϡ�
					���ʤζ���˥����ȥ�����Ϥ��Ƥ���������
					�ޤ�����󥯸���Ͽ�����ꥹ�Ȥ��ɲä���ˤϡ�
					�����å��ܥå���������å����Ƥ���������
				</p>
				<p>
					����ɽ���ϥ�󥯸��ִ��ꥹ�Ȥ��ɲä���Τ�Ŭ���ʤ�ΤˤʤäƤ��ޤ���
					��ǧ���ơ��Զ�礬������Խ����Ƥ���������
					��󥯸��ִ��ꥹ�Ȥˤ����ɲä�����ˤϡ�
					�⤦�����ޥå��ξ�郎�ˤ���ΤǤ⤫�ޤ��ޤ���
				</p>
				<p>
					�Ǹ�ζ���ϡ���󥯸��ִ��ꥹ�Ȥ��ɲä���ݤΥ����ȥ�Ǥ���
					URL��˸��줿��(��)�פϡ�
					�ִ�ʸ������ǡ�\\1�פΤ褦�ʡֿ����פ����ѤǤ��ޤ���
					�ޤ���sprintf('[tdiary:%d]', $1.to_i+1) �Ȥ��ä���
					������ץ��Ҥ����ѤǤ��ޤ���
				</p>
			_HTML
			if ENV['AUTH_TYPE'] and ENV['REMOTE_USER'] and @setup['configure.use_link'] then
				r << <<-_HTML
					<p>
						���줾���URL�ϥ�󥯤ˤʤäƤ��ޤ���������򥯥�å����뤳�Ȥǡ�
						�����ˡ����������ι����������Ѥ�URL���Τ��뤳�Ȥˤʤ�ޤ���
						Ŭ�ڤʥ����������¤�̵�����ˤϥ���å����ʤ��褦�ˤ��Ƥ���������
					</p>
				_HTML
			end
			r << <<-_HTML
				<p>
					�����ˤʤ�URL�ϡ�<a href="#{@conf.update}?conf=referer">��󥯸�</a>�פ��齤�����Ƥ���������
				</p>
				<dl>
			_HTML
			i = 0
			urls.sort.each do |url|
				shown_url = DispRef2String::escapeHTML( @setup.to_native( DispRef2String::unescape( url ) ) )
				if ENV['AUTH_TYPE'] and ENV['REMOTE_USER'] and @setup['configure.use_link'] then
					r << "<dt><a href=\"#{url}\">#{shown_url}</a>"
				else
					r << "<dt>#{shown_url}"
				end
				r << <<-_HTML
					<dd>
						<input name="dr2.#{i}.noref" value="true" type="checkbox">�����ꥹ�Ȥ��ɲ�
						<input name="dr2.#{i}.ignore" value="true" type="checkbox">̵��ꥹ�Ȥ��ɲ�<br>
						<input name="dr2.#{i}.reg" value="#{DispRef2String::escapeHTML( DispRef2String::url_regexp( url ) )}" type="text" size="70"><br>
						<input name="dr2.#{i}.title" value="" type="text" size="70">
				_HTML
				i += 1
			end
			r << <<-_HTML
				<input name="dr2.urls" type="hidden" value="#{i}">
				</dl>
			_HTML
			unless @setup.secure or @setup['no_cache'] then
				r << <<-_HTML
					<p>
						����å���ι����ˤ�¿���λ��֤��������礬����ޤ���
						OK�ܥ���򲡤����餷�Ф餯���Ԥ�����������
					</p>
				_HTML
			end
		else
			r << <<-_HTML
				<p>���ߡ�#{@setup['unknown.label']}�Ϥ���ޤ���</p>
			_HTML
		end
		r << <<-_HTML
			<h4>����ƥʤΤ��������ɽ��</h4>
			<p>����ƥʤ�URL���ִ����ʸ����˥ޥå���������ɽ���Ǥ���
				����������ɽ���˥ޥå������󥯸��ϡ֥���ƥʡפ�ʬ�व��ޤ���</p>
			<ul>
			<li>URL:
				<input name="dr2.antenna.url" value="#{DispRef2String::escapeHTML( @setup.to_native( @setup['antenna.url'] ) )}" type="text" size="70">
				<input name="dr2.antenna.url.default" value="true" type="checkbox">�ǥե���Ȥ��᤹
			<li>�ִ����ʸ����:<input name="dr2.antenna.title" value="#{DispRef2String::escapeHTML( @setup.to_native( @setup['antenna.title'] ) )}" type="text" size="70">
				<input name="dr2.antenna.title.default" value="true" type="checkbox">�ǥե���Ȥ��᤹
			</ul>
			_HTML
		r
	end
end

# Hash table of search engines
# key: company name
# value: array of:
# [0]:url regexp [1]:title [2]:keys for search keyword [3]:cache regexp
DispReferrer2_Google_cache = /cache:[^:]+:([^+]+)+/
DispReferrer2_Engines = {
	'google' => [
		[%r{^http://.*?\bgoogle\.([^/]+)/(search|custom|ie)}i, '".#{$1}��Google����"', ['as_q', 'q', 'as_epq'], DispReferrer2_Google_cache],
		[%r{^http://.*?\bgoogle\.([^/]+)/.*url}i, '".#{$1}��Google��URL����?"', ['as_q', 'q'], DispReferrer2_Google_cache],
		[%r{^http://.*?\bgoogle/search}i, '"���֤�Google����"', ['as_q', 'q'], DispReferrer2_Google_cache],
		[%r{^http://eval.google\.([^/]+)}i, '".#{$1}��Google Accounts"', [], nil],
		[%r{^http://.*?\bgoogle\.([^/]+)}i, '".#{$1}��Google����"', [], nil],
	],
	'yahoo' => [
		[%r{^http://.*?\.rd\.yahoo\.([^/]+)}i, '".#{$1}��Yahoo�Υ�����쥯��"', 'split(/\*/)[1]', nil],
		[%r{^http://.*?\.yahoo\.([^/]+)}i, '".#{$1}��Yahoo!����"', ['p', 'va', 'vp'], DispReferrer2_Google_cache],
	],
	'netscape' => [[%r{^http://.*?\.netscape\.([^/]+)}i, '".#{$1}��Netscape����"', ['search', 'query'], DispReferrer2_Google_cache]],
	'msn' => [[%r{^http://.*?\.MSN\.([^/]+)}i, '".#{$1}��MSN������"', ['q', 'MT'], nil ]],
	'metacrawler' => [[%r{^http://.*?.metacrawler.com}i, '"MetaCrawler"', ['q'], nil ]],
	'metabot' => [[%r{^http://.*?\.metabot\.ru}i, '"MetaBot.ru"', ['st'], nil ]],
	'altavista' => [[%r{^http://.*?\.altavista\.([^/]+)}i, '".#{$1}��AltaVista����"', ['q'], nil ]],
	'infoseek' => [[%r{^http://(www\.)?infoseek\.co\.jp}i, '"����ե�������"', ['qt'], nil ]],
	'odn' => [[%r{^http://.*?\.odn\.ne\.jp}i, '"ODN����"', ['QueryString', 'key'], nil ]],
	'lycos' => [[%r{^http://.*?\.lycos\.([^/]+)}i, '".#{$1}��Lycos"', ['query', 'q', 'qt'], nil ]],
	'fresheye' => [[%r{^http://.*?\.fresheye}i, '"�ե�å��奢��"', ['kw'], nil ]],
	'goo' => [
		[%r{^http://.*?\.goo\.ne\.jp}i, '"goo"', ['MT'], nil ],
		[%r{^http://.*?\.goo\.ne\.jp}i, '"goo"', [], nil ],
	],
	'nifty' => [
		[%r{^http://search\.nifty\.com}i, '"@nifty/@search"', ['q', 'Text'], DispReferrer2_Google_cache],
		[%r{^http://srchnavi\.nifty\.com}i, '"@nifty�Υ�����쥯��"', ['title'], nil ],
	],
	'eniro' => [[%r{^http://.*?\.eniro\.se}i, '"Eniro"', ['q'], DispReferrer2_Google_cache]],
	'excite' => [[%r{^http://.*?\.excite\.([^/]+)}i, '".#{$1}��Excite"', ['search', 's', 'query', 'qkw'], nil ]],
	'biglobe' => [
		[%r{^http://.*?search\.biglobe\.ne\.jp}i, '"BIGLOBE������"', ['q'], nil ],
		[%r{^http://.*?search\.biglobe\.ne\.jp}i, '"BIGLOBE������"', [], nil ],
	],
	'dion' => [[%r{^http://dir\.dion\.ne\.jp}i, '"Dion"', ['QueryString', 'key'], nil ]],
	'naver' => [[%r{^http://.*?\.naver\.co\.jp}i, '"NAVER Japan"', ['query'], nil ]],
	'webcrawler' => [[%r{^http://.*?\.webcrawler\.com}i, '"WebCrawler"', ['qkw'], nil ]],
	'euroseek' => [[%r{^http://.*?\.euroseek\.com}i, '"Euroseek.com"', ['string'], nil ]],
	'aol' => [[%r{^http://.*?\.aol\.}i, '"AOL������"', ['query'], nil ]],
	'alltheweb' => [
		[%r{^http://.*?\.alltheweb\.com}i, '"AlltheWeb.com"', ['q'], nil ],
		[%r{^http://.*?\.alltheweb\.com}i, '"AlltheWeb.com"', [], nil ],
	],
	'kobe-u' => [
		[%r{^http://bach\.scitec\.kobe-u\.ac\.jp/cgi-bin/metcha.cgi}i, '"��å��㸡�����󥸥�"', ['q'], nil ],
		[%r{^http://bach\.istc\.kobe-u\.ac\.jp/cgi-bin/metcha.cgi}i, '"��å��㸡�����󥸥�"', ['q'], nil ],
	],
	'tocc' => [[%r{^http://www\.tocc\.co\.jp/search/}i, '"TOCC/Search"', ['QRY'], nil ]],
	'yappo' => [[%r{^http://i\.yappo\.jp/}i, '"iYappo"', [], nil ]],
	'suomi24' => [[%r{^http://.*?\.suomi24\.([^/]+)/.*query}i, '"Suomi24"', ['q'], DispReferrer2_Google_cache]],
	'earthlink' => [[%r{^http://search\.earthlink\.net/search}i, '"EarthLink Search"', ['as_q', 'q', 'query'], DispReferrer2_Google_cache]],
	'infobee' => [[%r{^http://infobee\.ne\.jp/}i, '"�������󸡺�"', ['MT'], nil ]],
	't-online' => [[%r{^http://brisbane\.t-online\.de/}i, '"T-Online"', ['q'], DispReferrer2_Google_cache]],
	'walla' => [[%r{^http://find\.walla\.co\.il/}i, '"Walla! Channels"', ['q'], nil ]],
	'mysearch' => [[%r{^http://.*?\.mysearch\.com/}i, '"My Search"', ['searchfor'], nil ]],
	'jword' => [[%r{^http://search\.jword.jp/}i, '"JWord"', ['name'], nil ]],
	'nytimes' => [[%r{^http://query\.nytimes\.com/search}i, '"New York Times: Search"', ['as_q', 'q', 'query'], DispReferrer2_Google_cache]],
	'aaacafe' => [[%r{^http://search\.aaacafe\.ne\.jp/search}i, '"AAA!CAFE"', ['key'], nil]],
	'virgilio' => [[%r{^http://search\.virgilio\.it/search}i, '"VIRGILIO Ricerca"', ['qs'], nil]],
	'ceek' => [[%r{^http://www\.ceek\.jp}i, '"ceek.jp"', ['q'], nil]],
	'cnn' => [[%r{^http://websearch\.cnn\.com}i, '"CNN.com"', ['query', 'as_q', 'q', 'as_epq'], DispReferrer2_Google_cache]],
	'webferret' => [[%r{^http://webferret\.search\.com}i, '"WebFerret"', 'split(/,/)[1]', nil]],
	'eniro' => [[%r{^http://www\.eniro\.se}i, '"Eniro"', ['query', 'as_q', 'q'], DispReferrer2_Google_cache]],
	'passagen' => [[%r{^http://search\.evreka\.passagen\.se}i, '"Eniro"', ['q', 'as_q', 'query'], DispReferrer2_Google_cache]],
	'redbox' => [[%r{^http://www\.redbox\.cz}i, '"RedBox"', ['srch'], nil]],
	'odin' => [[%r{^http://odin\.ingrid\.org}i, '"ODiN����"', ['key'], nil]],
	'kensaku' => [[%r{^http://www\.kensaku\.}i, '"kensaku.jp����"', ['key'], nil]],
	'hotbot' => [[%r{^http://www\.hotbot\.}i, '"HotBot Web Search"', ['MT'], nil ]],
	'searchalot' => [[%r{^http://www\.searchalot\.}i, '"Searchalot"', ['q'], nil ]],
	'cometsystems' => [[%r{^http://search\.cometsystems\.com}i, '"Comet Web Search"', ['qry'], nil ]],
	'www' => [[%r{^http://www\.google/search}i, '"Google����?"', ['as_q', 'q'], DispReferrer2_Google_cache]],	# TLD missing
	'planet' => [[%r{^http://www\.planet\.nl/planet/}i, '"Planet-Zoekpagina"', ['googleq', 'keyword'], DispReferrer2_Google_cache]], # googleq parameter has a strange prefix
	'216' => [[%r{^http://(\d+\.){3}\d+/search}i, '"Google����?"', ['as_q', 'q'], DispReferrer2_Google_cache]],	# cache servers of google?
}