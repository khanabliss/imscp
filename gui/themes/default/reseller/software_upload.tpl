<?xml version="1.0" encoding="{THEME_CHARSET}" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset={THEME_CHARSET}" />
        <meta http-equiv="X-UA-Compatible" content="IE=8" />
        <title>{TR_UPLOAD_SOFTWARE_PAGE_TITLE}</title>
        <meta name="robots" content="nofollow, noindex" />
        <link href="{THEME_COLOR_PATH}/css/imscp.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="{THEME_COLOR_PATH}/js/imscp.js"></script>
        <script type="text/javascript" src="{THEME_COLOR_PATH}/js/jquery.js"></script>
		<script type="text/javascript" src="{THEME_COLOR_PATH}/js/jquery.imscpTooltips.js"></script>
        <!--[if IE 6]>
        <script type="text/javascript" src="{THEME_COLOR_PATH}/js/DD_belatedPNG_0.0.8a-min.js"></script>
        <script type="text/javascript">
            DD_belatedPNG.fix('*');
        </script>
         <![endif]-->
        <script language="JavaScript" type="text/JavaScript">
        /*<![CDATA[*/
			$(document).ready(function(){
				// Tooltips - begin
				$('a.swtooltip').sw_iMSCPtooltips('a.title');
				// Tooltips - end
			});
			$(document).ready(function(){
				// Tooltips - begin
				$('a.swtooltipstatus').iMSCPtooltips('a.title');
				// Tooltips - end
			});
			function action_delete() {
				if (!confirm("{TR_MESSAGE_DELETE}"))
				return false;
			}
		/*]]>*/
		</script>
	</head>

    <body>

		<div class="header">
			{MAIN_MENU}

			<div class="logo">
				<img src="{THEME_COLOR_PATH}/images/imscp_logo.png" alt="i-MSCP logo" />
				<img src="{THEME_COLOR_PATH}/images/imscp_webhosting.png" alt="i-MSCP" />
			</div>
		</div>

		<div class="location">
			<div class="location-area icons-left">
				<h1 class="general">{GENERAL_INFO}</h1>
			</div>
			<ul class="location-menu">
				<!-- <li><a class="help" href="#">Help</a></li> -->
				<li><a class="backadmin" href="change_user_interface.php?action=go_back">{YOU_ARE_LOGGED_AS}</a></li>
				<li><a class="logout" href="../index.php?logout">{TR_MENU_LOGOUT}</a></li>
			</ul>
			<ul class="path">
				<li><a href="software_upload.php">{TR_SOFTWARE_MENU}</a></li>
			</ul>
		</div>

		<div class="left_menu">
			{MENU}
		</div>

		<div class="body">
		
			<!-- BDP: page_message -->
			<div class="warning">{MESSAGE}</div>
			<!-- EDP: page_message -->
			
			<h2 class="apps_installer"><span>{TR_UPLOADED_SOFTWARE}</span></h2>
			<table>
            	<tr>
					<th><div style="float:left">{TR_SOFTWARE_NAME}</div><div style="float:right"><a href="{TR_SOFTWARE_NAME_ASC}"><img src="{THEME_COLOR_PATH}/images/icons/asc.gif" width="16" height="16" border="0" /></a><a href="{TR_SOFTWARE_NAME_DESC}"><img src="{THEME_COLOR_PATH}/images/icons/desc.gif" width="16" height="16" border="0" /></a></div></th>
					<th width="100">{TR_SOFTWARE_VERSION}</th>
					<th width="130"><div style="float:left">{TR_SOFTWARE_LANGUAGE}</div><div style="float:right"><a href="{TR_LANGUAGE_ASC}"><img src="{THEME_COLOR_PATH}/images/icons/asc.gif" width="16" height="16" border="0" /></a><a href="{TR_LANGUAGE_DESC}"><img src="{THEME_COLOR_PATH}/images/icons/desc.gif" width="16" height="16" border="0" /></a></div></th>
					<th width="130"><div style="float:left">{TR_SOFTWARE_STATUS}</div><div style="float:right"><a href="{TR_SOFTWARE_STATUS_ASC}"><img src="{THEME_COLOR_PATH}/images/icons/asc.gif" width="16" height="16" border="0" /></a><a href="{TR_SOFTWARE_STATUS_DESC}"><img src="{THEME_COLOR_PATH}/images/icons/desc.gif" width="16" height="16" border="0" /></a></div></th>
					<th width="130"><div style="float:left">{TR_SOFTWARE_TYPE}</div><div style="float:right"><a href="{TR_SOFTWARE_TYPE_ASC}"><img src="{THEME_COLOR_PATH}/images/icons/asc.gif" width="16" height="16" border="0" /></a><a href="{TR_SOFTWARE_TYPE_DESC}"><img src="{THEME_COLOR_PATH}/images/icons/desc.gif" width="16" height="16" border="0" /></a></div></th>
					<th align="center" width="100">{TR_SOFTWARE_DELETE}</th>
				</tr>
				<!-- BDP: no_software_list -->
				<tr>
					<td colspan="6"><div class="warning">{NO_SOFTWARE}</div></td>
				</tr>
				<!-- EDP: no_software_list -->
				<!-- BDP: list_software -->
				<tr>
					<td><img src="{THEME_COLOR_PATH}/images/icons/cd.png" width="16" height="16" align="middle" />&nbsp;<a href="#" class="swtooltip" title="{SW_DESCRIPTION}"><font color="{LINK_COLOR}">{SW_NAME}</font></a></td>
					<td>{SW_VERSION}</td>
					<td>{SW_LANGUAGE}</td>
					<td><a href="#" class="swtooltipstatus" title="{SW_INSTALLED}"><font color="{LINK_COLOR}">{SW_STATUS}</font></a></td>
					<td>{SW_TYPE}</td>
					<td><img src="{THEME_COLOR_PATH}/images/icons/{SOFTWARE_ICON}.png" width="16" height="16" border="0" align="middle" /> <a href="{DELETE}" onclick="return action_delete()">{TR_DELETE}</a></td>
				</tr>
				<!-- EDP: list_software -->
				<tr>
					<th colspan="6">{TR_SOFTWARE_COUNT}:&nbsp;{TR_SOFTWARE_NUM}</th>
				</tr>
			</table>
			<br />
			<h2 class="apps_installer"><span>{TR_UPLOAD_SOFTWARE}</span></h2>
			<table>
				<tr>
					<td>
						<form action="software_upload.php" method="post" enctype="multipart/form-data">
							<table>
								<tr>
									<td width="200">{TR_SOFTWARE_FILE}</td>
									<td><input type="file" name="sw_file" size="60" /></td>
								</tr>
								<tr>
									<td width="200">{TR_SOFTWARE_URL}</td>
									<td><input type="text" name="sw_wget" value="{VAL_WGET}" size="60" /></td>
								</tr>
								<tr>
									<td><input name="upload" type="submit" value="{TR_UPLOAD_SOFTWARE_BUTTON}" />
									<input type="hidden" name="send_software_upload_token" id="send_software_upload_token" value="{SOFTWARE_UPLOAD_TOKEN}" />
									</td>
								</tr>
							</table>	
						</form>
					</td>
				</tr>
			</table>
			
		</div>

		<div class="footer">
			i-MSCP {VERSION}<br />build: {BUILDDATE}<br />Codename: {CODENAME}
		</div>

	</body>
</html>