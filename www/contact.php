<?php
require "./inc/config.php";

//page_content
$strSQL = "select a.*,b.opicname from pageset as a left join pagesetpic as b on a.id_pageset=b.id_pageset where a.id_pageset='6' " ;
$objDB->Execute($strSQL);
$page_content=$objDB->fields();

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="keywords" content="<?php echo $setinfo[keywords];?>" />
<meta name="description" content="<?php echo $setinfo[description];?>" />
<title><?php echo $setinfo[title];?></title>
<link href="inc/css/css1.css" rel="stylesheet" type="text/css">
</head>
<body>

<? require "header.php"; ?>

<div id="contact_content">
<TABLE width="898" border=0 align="center" cellPadding=0 cellSpacing=0>
  <TBODY>
    <tr><TD width="165" height="300">&nbsp;</TD>
      <TD width="733" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="100%">&nbsp;</td>
        </tr>
        <tr>
          <td height="59" class="contact_contenttitle"><?=$page_content[title];?></td>
        </tr>
        <tr>
          <td class="contact_contenttxt"><?=$page_content[content];?></td>
        </tr>
        <tr>
          <td height="25"><img src="/upload/layout/<?=$page_content[opicname];?>" width="564" height="404" /></td>
        </tr>
      </table></TD>
    </TR>
  <tr><td colspan="2"></TBODY></TABLE>
</div>

<? require "footer.php"; ?>

</body>
</html>
