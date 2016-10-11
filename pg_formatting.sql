SET DEFINE OFF;
conn SALARY_MGMT/dbase @ xe;
CREATE OR REPLACE PROCEDURE page_formatting(p_page_part IN VARCHAR2)
AS
BEGIN
	IF UPPER(p_page_part) = 'BEFORE'
	THEN
		HTP.P('<html>');
			HTP.P('<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">');
			HTP.P('<html xmlns="http://www.w3.org/1999/xhtml">');
			HTP.P('<head>');
				HTP.P('<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />');
				HTP.P('<title>Dbase Payroll Application</title>');
				HTP.P('<meta name="keywords" content="IT Academic Record, Free XHTML CSS Template, Web Design" />');
				HTP.P('<meta name="description" content="IT Academic Record - Free XHTML CSS Template provided by dbasesoftware.com" />');
				HTP.LINKREL('stylesheet','D:/SALAPP/templatemo_style.css');
				--	HTP.P('<script language="javascript" type="text/javascript">
				--			HTP.P('function clearText(field)');
				--			HTP.P('{');
				--			    if (field.defaultValue == field.value) field.value = '';
				--			    else if (field.value == '') field.value = field.defaultValue;
				--			}');
				--	HTP.P('</script>');
			HTP.p('</head>');
			HTP.P(',<body>');
				HTP.P('<div align="center">');
					HTP.P('<div id="templatemo_container">');
						HTP.P('<div id="templatemo_banner">');
							HTP.P('<div id="search_section">');
								HTP.P('<form action="#" method="get">');
									HTP.P('&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;');HTP.P('<a href="bus.login" class="current style3">Login</a>');HTP.P('&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;');HTP.P('<a href="bus.register_user"  class="current style3"> Register Here</a>');
								HTP.P('</form>');
							HTP.P('</div>');
						HTP.P('</div>');
						HTP.P('<div id="templatemo_menu">');
							HTP.P('<ul>');
								HTP.P('<li><a href="#">Home</a></li>');
								HTP.P('<li><a href="#">SampleLable1</a></li>');
								HTP.P('<li><a href="#">SampleLable2</a></li>');
								HTP.P('<li><a href="#">SampleLable3</a></li>');
								HTP.P('<li><a href="#">SampleLable4</a></li>');
								--HTP.P('<li><a href="#" class="last">Contact</a></li>');
							HTP.P('</ul>');
						HTP.P('</div>'); -- end of menu -->
						HTP.P('<div id="templatemo_content">');
							HTP.P('<div class="section_w430 fl margin_right_40">');
								HTP.P('<div class="header_01"><strong></strong></div>');
									HTP.P('<p>');
	ELSIF UPPER(p_page_part) = 'AFTER'
	THEN

									
								HTP.P('</p>');
							HTP.P('</div>');
						HTP.P('</div>');
					--HTP.P('</div>');	-- end of content -->
					HTP.P('<div id="templatemo_footer">');
						HTP.P('<ul class="footer_list">');
							HTP.P('<li><a href="#">Home</a></li>');
							HTP.P('<li><a href="#">About Us</a></li>');
							HTP.P('<li class="last"><a href="#">Contact Us</a></li>');
						HTP.P('</ul>');
						
						HTP.P('<div class="margin_bottom_10">');
						HTP.P('</div>');
							HTP.P('Copyright � 2013 <a href="#">Dbase Bhopal</a> ');
						HTP.P('<div id="templatemo_footer_bottom">');
						HTP.P('</div>');
					HTP.P('</div>');
				HTP.P('</div>');
					HTP.P('<div align=center><a href="#">Dbase Sample Application </a>');
					HTP.P('</div>');
				HTP.P('</div>');
			HTP.P('</body>');
			HTP.P('</html>');
	END IF;
END page_formatting;
/
GRANT EXECUTE ON SALARY_MGMT.page_formatting TO ANONYMOUS;
SHOW ERROR;