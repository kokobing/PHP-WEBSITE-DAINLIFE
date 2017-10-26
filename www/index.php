<?php
require "./inc/config.php";

//首页 产品展示
$strSQL = "select title,intro,url,opicname from  layoutpic  where id_layout='9' order by id_layoutpic asc" ;
$objDB->Execute($strSQL);
$sy_cpzs=$objDB->GetRows();

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

<? require "mainadv.php"; ?>

<div id="maincontent">
<TABLE width="898" border=0 align="center" cellPadding=0 cellSpacing=0>
  <TBODY>
    <TD height=35 align="left" class="txt_black">[ Product ]</TD>
    </TR>
  <TR>
    <TD>
      <TABLE border=0 cellSpacing=5 cellPadding=0>
        <TBODY>
        <TR>
          <TD style="TEXT-ALIGN: center" height=121 width=220><A 
            href="<?=$sy_cpzs[0][url];?>"><IMG 
            style="WIDTH: 130px; HEIGHT: 130px" alt="" 
            src="/upload/layout/<?=$sy_cpzs[0][opicname];?>"></A></TD>
          <TD style="TEXT-ALIGN: center" rowSpan=3 width=1><IMG 
            src="temp_/dot_height.gif"></TD>
          <TD style="TEXT-ALIGN: center" width=220><A 
            href="<?=$sy_cpzs[1][url];?>"><IMG 
            style="WIDTH: 130px; HEIGHT: 130px" alt="" 
            src="/upload/layout/<?=$sy_cpzs[1][opicname];?>"></A></TD>
          <TD style="TEXT-ALIGN: center" rowSpan=3 width=1><IMG 
            src="temp_/dot_height.gif"></TD>
          <TD style="TEXT-ALIGN: center" width=220><A 
            href="<?=$sy_cpzs[2][url];?>"><IMG 
            style="WIDTH: 130px; HEIGHT: 130px" alt="" 
            src="/upload/layout/<?=$sy_cpzs[2][opicname];?>"></A></TD>
          <TD style="TEXT-ALIGN: center" rowSpan=3 width=1><IMG 
            src="temp_/dot_height.gif"></TD>
          <TD style="TEXT-ALIGN: center" width=220><A 
            href="<?=$sy_cpzs[3][url];?>"><IMG 
            style="WIDTH: 130px; HEIGHT: 130px" alt="" 
            src="/upload/layout/<?=$sy_cpzs[3][opicname];?>"></A></TD></TR>
        <TR>
          <TD 
            width=220 height=30 align="center" class="txt_black" ><?=$sy_cpzs[0][title];?></TD>
          <TD width=220 align="center" class="txt_black"><?=$sy_cpzs[1][title];?></TD>
          <TD width=220  align="center" class="txt_black"><?=$sy_cpzs[2][title];?></TD>
          <TD width=220  align="center" class="txt_black"><?=$sy_cpzs[3][title];?></TD>
        </TR>
        <TR>
          <TD width=220 height=69><p class="maincontent_txt" style="width:200px; margin-left:10px;"><?=$sy_cpzs[0][intro];?></p></TD>
          <TD width=220><p class="maincontent_txt" style="width:200px; margin-left:10px;"><?=$sy_cpzs[1][intro];?></p></TD>
          <TD width=220><p class="maincontent_txt" style="width:200px; margin-left:10px;"><?=$sy_cpzs[2][intro];?></p></TD>
          <TD width=220><p class="maincontent_txt" style="width:200px; margin-left:10px;"><?=$sy_cpzs[3][intro];?></p></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
            
</div>
  
<div id="spanline"></div>    
  <div id="spannone20"></div>   
         
<div id="maincontent2">         
<TABLE width="898" border=0 align="center" cellPadding=0 cellSpacing=5>
  <TBODY>
  <TR>
    <TD style="TEXT-ALIGN: center" height=121 width=220>
    <A href="<?=$sy_cpzs[4][url];?>"><IMG style="WIDTH: 130px; HEIGHT: 130px" alt="" src="/upload/layout/<?=$sy_cpzs[4][opicname];?>"></A></TD>
    <TD style="TEXT-ALIGN: center" rowSpan=3 width=1><IMG 
      src="temp_/dot_height.gif"></TD>
    <TD style="TEXT-ALIGN: center" width=220>
    <A href="<?=$sy_cpzs[5][url];?>"><IMG style="WIDTH: 130px; HEIGHT: 130px" alt="" src="/upload/layout/<?=$sy_cpzs[5][opicname];?>"></A></TD>
    <TD style="TEXT-ALIGN: center" rowSpan=3 width=1><IMG 
      src="temp_/dot_height.gif"></TD>
    <TD style="TEXT-ALIGN: center" width=220>
    <A href="<?=$sy_cpzs[6][url];?>"><IMG style="WIDTH: 130px; HEIGHT: 130px" alt="" src="/upload/layout/<?=$sy_cpzs[6][opicname];?>"></A></TD>
    <TD style="TEXT-ALIGN: center" rowSpan=3 width=1><IMG 
      src="temp_/dot_height.gif"></TD>
    <TD style="TEXT-ALIGN: center" width=220>
    <A href="<?=$sy_cpzs[7][url];?>"><IMG style="WIDTH: 130px; HEIGHT: 130px" alt="" src="/upload/layout/<?=$sy_cpzs[7][opicname];?>"></A></TD></TR>
  <TR>
    <TD width=220 height=30  align="center" class="txt_black"><?=$sy_cpzs[4][title];?></TD>
    <TD width=220  align="center" class="txt_black"><?=$sy_cpzs[5][title];?></TD>
    <TD width=220  align="center" class="txt_black"><?=$sy_cpzs[6][title];?></TD>
    <TD width=220  align="center" class="txt_black"><?=$sy_cpzs[7][title];?></TD>
  </TR>
  <TR>
    <TD height=69 width=220><p class="maincontent_txt" style="width:200px; margin-left:10px;"><?=$sy_cpzs[4][intro];?></p></TD>
    <TD  width=220><p class="maincontent_txt" style="width:200px; margin-left:10px;"><?=$sy_cpzs[5][intro];?></p></TD>
    <TD  width=220><p class="maincontent_txt" style="width:200px; margin-left:10px;"><?=$sy_cpzs[6][intro];?></p></TD>
    <TD  width=220><p class="maincontent_txt" style="width:200px; margin-left:10px;"><?=$sy_cpzs[7][intro];?></p></TD></TR></TBODY></TABLE>
</div>

<? require "footer.php"; ?>

</body>
</html>
