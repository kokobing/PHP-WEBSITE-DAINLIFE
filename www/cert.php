<?php
require "./inc/config.php";

$strSQL = "select opicname from pagesetpic where id_pageset='7' order by id_pagesetpic asc " ;
$objDB->Execute($strSQL);
$page_content=$objDB->getrows();
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
    <tr><TD width="165" height="300" valign="top"><table width="98%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td colspan="3">&nbsp;</td>
      </tr>
      <?php if(sizeof($page_content)<4){?>
      <tr>
        <td><img src="/upload/layout/<?=$page_content[0][opicname];?>" width="290" height="410" /></td>
        <td><img src="/upload/layout/<?=$page_content[1][opicname];?>" width="290" height="410" /></td>
        <td><img src="/upload/layout/<?=$page_content[2][opicname];?>" width="290" height="410" /></td>
      </tr>
      <?php }?>
      <?php if(sizeof($page_content)>3 && sizeof($page_content)<7){?>
      <tr>
        <td><img src="/upload/layout/<?=$page_content[0][opicname];?>" width="290" height="410" /></td>
        <td><img src="/upload/layout/<?=$page_content[1][opicname];?>" width="290" height="410" /></td>
        <td><img src="/upload/layout/<?=$page_content[2][opicname];?>" width="290" height="410" /></td>
      </tr>
      <tr>
        <td><img src="/upload/layout/<?=$page_content[3][opicname];?>" width="290" height="410" /></td>
        <td><img src="/upload/layout/<?=$page_content[4][opicname];?>" width="290" height="410" /></td>
        <td><img src="/upload/layout/<?=$page_content[5][opicname];?>" width="290" height="410" /></td>
      </tr>
      <?php }?>
      <?php if(sizeof($page_content)>6){?>
      <tr>
      <tr>
        <td><img src="/upload/layout/<?=$page_content[0][opicname];?>" width="290" height="410" /></td>
        <td><img src="/upload/layout/<?=$page_content[1][opicname];?>" width="290" height="410" /></td>
        <td><img src="/upload/layout/<?=$page_content[2][opicname];?>" width="290" height="410" /></td>
      </tr>
      <tr>
        <td><img src="/upload/layout/<?=$page_content[3][opicname];?>" width="290" height="410" /></td>
        <td><img src="/upload/layout/<?=$page_content[4][opicname];?>" width="290" height="410" /></td>
        <td><img src="/upload/layout/<?=$page_content[5][opicname];?>" width="290" height="410" /></td>
      </tr>
        <td><img src="/upload/layout/<?=$page_content[6][opicname];?>" width="290" height="410" /></td>
        <td><img src="/upload/layout/<?=$page_content[7][opicname];?>" width="290" height="410" /></td>
        <td><img src="/upload/layout/<?=$page_content[8][opicname];?>" width="290" height="410" /></td>
      </tr>
      
      <?php }?>
    </table></TD>
      </TR>
  <tr><td></TBODY></TABLE>
</div>

<? require "footer.php"; ?>

</body>
</html>
