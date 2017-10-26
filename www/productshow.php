<?php
require "./inc/config.php";

$dirid=$_GET[dirid];

// 产品信息
$strSQL = "select title,id_prodinfo from productinfo where id_proddir=$dirid and dele='1'" ;
$objDB->Execute($strSQL);
$pdts_info=$objDB->GetRows();


// 已下架产品信息
$strSQL = "select title,id_prodinfo from productinfo where id_proddir=$dirid and dele='0'" ;
$objDB->Execute($strSQL);
$delpdts_info=$objDB->GetRows();

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
<TABLE width="930" border=0 align="center" cellPadding=0 cellSpacing=0>
  <TBODY>
    <tr><TD width="208" height="300" align="right" valign="top"><table width="80%" border="0" cellpadding="8">
      <tr>
        <td height="30" align="left" valign="middle">&nbsp;</td>
      </tr>
      <tr>
        <td align="left" valign="middle" class="contact_contenttitle">品牌介绍</td>
      </tr>
      <tr>
        <td align="center" valign="middle" class="contact_contenttitle_white"><table width="98%" border="0" cellpadding="0" cellspacing="0" bgcolor="#999999">
          <tr>
            <td align="center" valign="bottom">产品列表</td>
          </tr>
        </table>
          </td>
      </tr>
      <?php for($i=0;$i<sizeof($pdts_info);$i++){?>
      <tr>
        <td align="left" valign="middle">
		  <a href="productshow.php?dirid=<?php echo $_GET[dirid];?>&pid=<?php echo $pdts_info[$i][id_prodinfo];?>" class="txtdir"><?php echo $pdts_info[$i][title]; ?><?php if($pdts_info[$i][id_prodinfo]==$_GET[pid]){echo " •";}?></a></td>
      </tr>
      <?php }?>
    </table>
    <?php if($_GET[dirid]=='12'){?>
        <table width="80%" border="0" cellpadding="8">
          <tr>
            <td height="30" align="left" valign="middle">&nbsp;</td>
          </tr>
          
          <tr>
            <td align="center" valign="middle" class="contact_contenttitle_white"><table width="98%" border="0" cellpadding="0" cellspacing="0" bgcolor="#999999">
                <tr>
                  <td align="center" valign="bottom">已下架产品</td>
                </tr>
            </table></td>
          </tr>
          <?php for($i=0;$i<sizeof($delpdts_info);$i++){?>
          <tr>
            <td align="left" valign="middle"><a href="productshow.php?dirid=<?php echo $_GET[dirid];?>&amp;pid=<?php echo $delpdts_info[$i][id_prodinfo];?>" class="txtdir"><?php echo $delpdts_info[$i][title]; if($delpdts_info[$i][id_prodinfo]==$pid){echo " •";}?></a></td>
          </tr>
          <?php }?>
        </table>
        <?php }?>
        </TD>
      <TD width="690" align="left" valign="top"><?php 
$strSQL = "select content from productinfo where id_prodinfo=$_GET[pid]" ;
$objDB->Execute($strSQL);
$p_info=$objDB->fields();
echo $p_info[content];
	  ?></TD>
    </TR>
  <tr><td colspan="2"></TBODY></TABLE>
</div>

<? require "footer.php"; ?>

</body>
</html>
