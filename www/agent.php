<?php
require "./inc/config.php";

//网络代理店
$strSQL = "select * from pageset where id_pageset='9' " ;
$objDB->Execute($strSQL);
$wldlpage_content=$objDB->fields();

//实体店
$strSQL = "select * from pageset where id_pageset='8' " ;
$objDB->Execute($strSQL);
$stdpage_content=$objDB->fields();

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

<div id="about_content">
<TABLE width="898" border=0 align="center" cellPadding=5 cellSpacing=5>
  <TBODY>
    <tr><TD width="469" align="left" valign="top">&nbsp;</TD>
      <TD width="394" height="30" align="left" valign="top">&nbsp;</TD>
    </TR>
  <tr><td rowspan="2" align="left" valign="top"><table width="98%" border="0" cellpadding="0" cellspacing="0" class="contact_contenttitle">

    <tr>
      <td width="16%" rowspan="2">&nbsp;</td>
      <td width="84%" height="40"><p><br />
          </p>
        <p>&nbsp;</p>
        <p><?php echo $wldlpage_content[title];?><br />
          </p>
        <p>&nbsp;</p>        </td>
    </tr>
    <tr>
      <td><?php echo $wldlpage_content[content];?></td>
    </tr>
  </table>
    <td align="left" valign="top" class="contact_contenttitle"><?php echo $stdpage_content[title];?><br />
      <br />
      <tr>
    <td align="left" valign="top" class="txt"><?php echo $stdpage_content[content];?></td><tr>
    <td colspan="2">  
  </TBODY></TABLE>
</div>

<? require "footer.php"; ?>

</body>
</html>
