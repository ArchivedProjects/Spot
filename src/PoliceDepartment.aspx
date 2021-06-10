

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>Randleman, NC: Police Department</title>
	<link href="/includes/sheet.css" type="text/css" rel="stylesheet" />
	<script src="/includes/javascript.js" type="text/javascript"></script>
</head>

<body>
<form name="_ctl0" method="post" action="PoliceDepartment.aspx" id="_ctl0">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMzAyMjMyNjAxD2QWAmYPZBYCZg9kFgpmDw8WAh4PRW5hYmxlVmlld1N0YXRlZ2RkAgEPDxYCHwBnZGQCAg9kFgICAQ8PFgQfAGceB0VuYWJsZWRoZGQCAw8PFgIfAGdkZAIFDw8WAh8AZ2RkGAEFHl9fQ29udHJvbHNSZXF1aXJlUG9zdEJhY2tLZXlfXxYGBStIdG1sRWRpdG9yXzFkMWZkMzBmNzZlZTRjNWU4ZTI1NGE1OWY3MzQxNTI4BQVfY3RsMgUrSHRtbEVkaXRvcl8xZDBmZDMwZjc2ZWU0YzVlOGUyNTRhNTlmNzM0MTUyOAUFX2N0bDMFK0h0bWxFZGl0b3JfOGQwZmQzMGY3NmVlNGM1ZThlMjU0YTU5ZjczNDE1MjgFBV9jdGw0" />

<script language='javascript'>
			function Dialog_OpenDialog( url, title, args, w96dpi, h96dpi, scroll, resize, postback, id )
			{
				// Break strings into <4k parts.
				// showModalDialog has a 4k limit :(
				if( typeof(args) == 'string' && args.length > 2048 )
				{
					// Break into smaller chunks
					var chunks = new Array();
					var chunkSize = 2048;

					for(var i=0; i*chunkSize < args.length; ++i )
						chunks[i] = args.substring(i*chunkSize, Math.min( (i+1)*chunkSize, args.length) );

					args = new Object();
					args.__isChunkedArgs = true;
					args.chunks = chunks;
				}

				var supportsScaling = typeof(screen.deviceXDPI) == 'number';
				var w = w96dpi * (supportsScaling ? (screen.deviceXDPI / 96.0) : 1.0);
				var h = h96dpi * (supportsScaling ? (screen.deviceYDPI / 96.0) : 1.0);

				var result = window.showModalDialog( '/aspnet_client/vc3_web/1_0/DialogHost.aspx?s=-0-&t=-1-&scroll=-2-'.replace('-0-', escape(url)).replace('-1-', escape(title)).replace('-2-', (scroll?'yes':'no')), args, 'dialogWidth:' + w + 'px;dialogHeight:' + h + 'px;status:no;scroll:yes;resizable:' + (resize?'yes':'no') + ';help:no;');
				if(typeof(result) != 'undefined' && result != null )
				{
					if( result.type == 'refresh' )
					{
						window.location.href = window.location.href;
					}
					else if( result.type == 'redirect' )
					{
						window.location.href = result.value;
					}
					else if( postback )
					{
						__doPostBack(id,result.type + '|' + result.value)
					}
				}
			}
			</script><script language='javascript'>
					var ManagementMenu1_submitForApprovalDialog = 
					{
						OpenDialog: function()
						{
							var url = null;
							var title = '';
							var dialogArgument = '';
							var width = 700;
							var height = 500;
							var scrollable = true;
							var resizable = true;
							var postback = true;
							var uniqueId = 'ManagementMenu1:submitForApprovalDialog';

							Dialog_OpenDialog(url, title, dialogArgument, width, height, scrollable, resizable, postback, uniqueId);
						}
					}
				</script>
				<script language='javascript'>
					var ManagementMenu1_pagePropertiesDialog = 
					{
						OpenDialog: function()
						{
							var url = null;
							var title = '';
							var dialogArgument = '';
							var width = 700;
							var height = 245;
							var scrollable = false;
							var resizable = true;
							var postback = false;
							var uniqueId = 'ManagementMenu1:pagePropertiesDialog';

							Dialog_OpenDialog(url, title, dialogArgument, width, height, scrollable, resizable, postback, uniqueId);
						}
					}
				</script>
				

<!--Begin management menu-->



    <style type="text/css">

        .cmsPageSection
        {
        	BORDER-RIGHT: #3366cc 1px solid; 
        	PADDING-RIGHT: 0px; 
        	BORDER-TOP: #3366cc 1px solid; 
        	PADDING-LEFT: 0px; 
        	BACKGROUND-IMAGE: none; 
        	PADDING-BOTTOM: 0px; 
        	MARGIN: 0px; 
        	BORDER-LEFT: #3366cc 1px solid; 
        	PADDING-TOP: 0px; 
        	BORDER-BOTTOM: #3366cc 1px solid; 
        	BACKGROUND-COLOR: transparent;
        	
        	}
        	
        .cmsPageSectionHeader
        {
        	FONT-WEIGHT: bold; 
        	FONT-SIZE: x-small; 
        	FONT-FAMILY: tahoma; 
        	COLOR: white; 
        	BACKGROUND-COLOR:#3366cc
        }	
        
        .cmsBlock
        {
        	BORDER-RIGHT: #003366 1px solid; 
        	PADDING-RIGHT: 0px; 
        	BORDER-TOP: #003366  1px solid; 
        	PADDING-LEFT: 0px; 
        	BACKGROUND-IMAGE: none; 
        	PADDING-BOTTOM: 0px; 
        	MARGIN: 0px; 
        	BORDER-LEFT: #003366  1px solid; 
        	PADDING-TOP: 0px; 
        	BORDER-BOTTOM: #003366  1px solid; 
        	BACKGROUND-COLOR: transparent;
        	
        	}
        
        .cmsBlockTop
        {
            FONT-WEIGHT: bold; 
            FONT-SIZE: x-small; 
            FONT-FAMILY: tahoma; 
            COLOR: white; 
            BACKGROUND-COLOR: #003366;	
        	}

        .cmsBlockTitle
        {
         color:White;
        }

        .cmsBlockButtons{}

        .cmsBlockButtons img{
	        margin: 2px;
        }
        
        .itemHover, adminMenuIcon{
			cursor: pointer;
        }
        		
		#cmsMenuBar{
			position: absolute;
			width: 100%;
			top: 0px;
			background: url(/cms/product/management/img/menu/barback.gif) repeat-x left top;
		}
		.disabled{
			display: none;
		}
		
		.adminMenuIcon{
			border: none;
		}
		.adminMenu_Group {background-color:#bcbdac;border:1px;border-color:#98998b;border-top-color:#e4e5db;border-style:solid;padding:4px 8px;}
		.adminMenu_Item {color:#333333;font-family:verdana;font-size:11px;cursor:pointer;border-left:4px solid #d1d1c1;}
		.adminMenu_ItemHover {background-color:#d1d1c1;color:#000000;font-family:verdana;font-size:11px;cursor:pointer;border-left:4px solid #d1d1c1;}
		.adminMenu_ItemActive {background-color:#FFFFFF;color:#333333;font-family:verdana;font-size:11px;cursor:pointer;}
    </style>
    
<!--End management menu-->
	

<table width="100%" cellpadding="0" cellspacing="0" border="0">

<tr class="tools">
<td colspan="3"><img src='/images/spacer.gif' width="6" height="6" alt="" border="0"></td>
</tr>

<tr class="tools">
<td></td>
<td>

	<table width="100%" cellpadding="0" cellspacing="0" border="0">
	
	<tr>
	<td>&nbsp;</td>
	<td><script language="JavaScript">
		<!--
		   document.write(customDateString(new Date()))
		// --></script>&nbsp;&nbsp;&nbsp;&nbsp;<script type="text/javascript">displayTime();</script></td>
	<td align="right"><a href='/Events.aspx'>City Calendar</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href='/Sitemap.aspx'>Site Map</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href='/ContactUs.aspx'>Contact Us</a></td>
	<td>&nbsp;</td>
	</tr>
	
	</table>
	</td>
<td></td>
</tr>


<tr>
<td class="lines"><img src='/images/spacer.gif' width="6" height="6" alt="" border="0"></td>
<td>
<table width="100%" cellpadding="0" cellspacing="0" border="0">

<tr class="mainnav">
<td colspan="2" width="167"><span id="_ctl1__ctl1_NavBar">
        <div>
	<table id="_ctl1__ctl1__ctl1__ctl1_NavBar_navigationTemplateContainer_Menu1" class="TopGroup" cellpadding="0" border="0" class="TopGroup" cellspacing="0">
		<tr>
			<td title=""><a href="/CityServices.aspx"><img border="0" alt="" src="/images/nav-services1.gif" /></a></td><td title=""><a href="/CityOrdinance.aspx"><img border="0" alt="" src="/images/nav-ordinance1.gif" /></a></td><td title=""><a href="/History.aspx"><img border="0" alt="" src="/images/nav-history1.gif" /></a></td><td title=""><a href="/Aldermen.aspx"><img border="0" alt="" src="/images/nav-aldermen1.gif" /></a></td><td title=""><a href="/employment.aspx"><img border="0" alt="" src="/images/nav-employment1.gif" /></a></td><td title=""><a href="/Mayors.aspx"><img border="0" alt="" src="/images/nav-mayors1.gif" /></a></td><td title=""><a href="/Default.aspx"><img border="0" alt="" src="/images/nav-home1.gif" /></a></td>
		</tr>
	</table>
</div>
      </span>      


	<!-- <table cellspacing="0" cellpadding="0" border="0">
	
	<tr>
	<td><a href='/CityServices.aspx'><img src='/images/nav-services2.gif' border="0"></a></td>
	<td><a href='/CityOrdinance.aspx'><img src='/images/nav-ordinance1.gif' border="0" onmouseover="this.src='/images/nav-ordinance2.gif';" onmouseout="this.src='/images/nav-ordinance1.gif';"></a></td>
	<td><a href='/History.aspx'><img src='/images/nav-history1.gif' border="0" onmouseover="this.src='/images/nav-history2.gif';" onmouseout="this.src='/images/nav-history1.gif';"></a></td>
	<td><a href='/Aldermen.aspx'><img src='/images/nav-aldermen1.gif' border="0" onmouseover="this.src='/images/nav-aldermen2.gif';" onmouseout="this.src='/images/nav-aldermen1.gif';"></a></td>
	<td><a href='/employment.aspx'><img src='/images/nav-p&p1.gif' border="0" onmouseover="this.src='/images/nav-p&p2.gif';" onmouseout="this.src='/images/nav-p&p1.gif';"></a></td>
	<td><a href='/Mayors.aspx'><img src='/images/nav-mayors1.gif' border="0" onmouseover="this.src='/images/nav-mayors2.gif';" onmouseout="this.src='/images/nav-mayors1.gif';"></a></td>
	<td><a href='/Default.aspx'><img src='/images/nav-home1.gif' border="0" onmouseover="this.src='/images/nav-home2.gif';" onmouseout="this.src='/images/nav-home1.gif';"</a></td>
	</tr>
	
	</table> -->

</td>
</tr>

<tr>
<td colspan="2">

	<table width="100%" cellpadding="0" cellspacing="0" border="0">
	
	<tr class="masthead">
	<td width="336"><a href='/CityServices.aspx'><img src='/images/headers/cityservices.gif' width="336" height="42" alt="City Services" border="0"></a></td>
	<td align="right" class="date"></td>
	</tr>
	
	</table>
	
</td>
</tr>

<tr>
<td width="167" class="nav" valign="top"><img src='/images/spacer.gif' width="167" height="1" alt="" border="0"><br>
<table width="100%">
<tr>
<td class="nav"></td>
<td>&nbsp;&nbsp;</td>
</tr></table>


<span style="display:inline-block;">
<span id="HtmlEditor_1d1fd30f76ee4c5e8e254a59f7341528" style="display:inline-block;">
<p>&nbsp;</p>
</span>
</span>
</td>
<td>

	<table width="100%" cellpadding="0" cellspacing="0" border="0">
	
	<tr class="curve">
	<td background='/images/cornerbg.gif'><img src='/images/corner.gif' width="15" height="38" alt="" border="0"><img src='/images/cornerbg.gif' width="538" height="38" alt="" border="0"></td>
	</tr>
	
	<tr>
	<td class="content">
<table width="100%" cellpadding="0" cellspacing="0" border="0">

<tr>
<td class="noprint"><img src="/images/spacer.gif" width="40" height="146" alt="" border="0"></td>
<td>
	<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr>
	<td><img src="/images/spacer.gif" width="40" height="20" alt="" border="0"><br>
	<span style="display:inline-block;">
<span id="HtmlEditor_1d0fd30f76ee4c5e8e254a59f7341528" style="display:inline-block;">

<h2 align="center">Randleman Police Department</h2>
<p align="center"><strong>100 Hillary Street<br>
Randleman, NC 27317<br>
(336) 495-7510/FAX(336) 495-7513</strong></p>

</span>
</span>
	<hr>
	</td>
	<td width="150"><img src='/images/Main.jpg' width="150" height="150" alt="" border="0"></td>
	</tr>
	</table>
</td>
</tr>

<tr>
<td class="noprint"><img src="/images/spacer.gif" width="40" height="20" alt="" border="0"></td>
<td><img src="/images/spacer.gif" width="480" height="20" alt="" border="0"></td>
</tr>

<tr>
<td class="noprint"><img src="/images/spacer.gif" width="40" height="250" alt="" border="0"></td>
<td valign="top">
<!-- copy starts here -->

<span style="display:inline-block;">
<span id="HtmlEditor_8d0fd30f76ee4c5e8e254a59f7341528" style="display:inline-block;"><TABLE cellSpacing=0 cellPadding=4 width=160 align=right border=1>
<TBODY>
<TR>
<TD>
<P align=center><STRONG>Administration</STRONG></P></TD></TR>
<TR>
<TD>
<P align=center><STRONG>Chief</STRONG><BR></P>
<P align=center><STRONG>Captain</STRONG><BR>Steve Leonard</P>
<P align=center><FONT size=1><FONT size=2><STRONG>Administrative-Assist. / Police Officer</STRONG><BR>Sharon L. Hardison</FONT><BR><BR></FONT></P></TD></TR>
<TR>
<TD>
<P align=center><STRONG>Patrol Division</STRONG></P></TD></TR>
<TR>
<TD>
<P align=center><FONT size=1><BR><BR></FONT>&nbsp;</P></TD></TR>
<TR>
<TD>
<P align=center><STRONG>Detective Division</STRONG></P></TD></TR>
<TR>
<TD>
<P align=center><FONT size=1><FONT size=2><STRONG>Detective</STRONG><BR>Lieutenant Gene Henderson<BR></FONT><BR></FONT></P></TD></TR></TBODY></TABLE>
<P><IMG height=147 alt="" src="/client_resources/police/rpdbuilding.gif" width=279 border=1></P></span>
</span>

<!-- copy ends here -->

<br>&nbsp;</td>
			<td><img src='/images/spacer.gif' width="33" height="1" alt="" border="0"></td>
			</tr>
			
			</table>
		
		</td>
		</tr>
		
		</table>
	
	</td>
	</tr>
	
	<tr>
	<td colspan="2" class="lines"><img src='/images/spacer.gif' width="720" height="6" alt="" border="0"></td>
	</tr>
	</table>

</td>
<td class="lines"><img src='/images/spacer.gif' width="6" height="6" alt="" border="0"></td>
</tr>

<tr>
<td colspan="3" class="navlinks" align="center"><img src='/images/spacer.gif' width="1" height="5" alt="" border="0"><br>
      <a href='/CityServices.aspx'>City Services</a>
      | <a href='/CityOrdinance.aspx'>City Ordinances</a>
      | <a href='/History.aspx'>History of Randleman</a>
      | <a href='/Aldermen.aspx'>Board of Aldermen</a>
      | <a href='/employment.aspx'>Employment</a>
      | <a href='/Mayors.aspx'>Mayors Past & Present</a>
	  | <a href='/Default.aspx'>Home</a><br>
	  <img src='/images/spacer.gif' width="1" height="5" alt="" border="0"></td>
</tr>
</table>


</form>
</body>
</html>
