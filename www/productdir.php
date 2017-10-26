<?php
require "./inc/config.php";
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
<div id="product_content">
<TABLE width="1100" border=0 align="center" cellPadding=0 cellSpacing=0>
  <TBODY>
    <tr>
      <TD>&nbsp;</TD>
    </TR>
    <tr><TD height="300"><img src="temp_/product.jpg" width="1100" height="600" border="0" usemap="#Map" /></TD>
      </TR>
  <tr><td></TBODY></TABLE>
</div>
<? require "footer.php"; ?>
<map name="Map" id="Map"><area shape="rect" coords="128,41,269,181" href="productshow.php?dirid=5&pid=5" />
<area shape="rect" coords="687,40,828,178" href="productshow.php?dirid=12&pid=18" />
<area shape="rect" coords="270,182,407,316" href="productshow.php?dirid=53&amp;pid=17" />
<area shape="rect" coords="690,318,828,454" href="productshow.php?dirid=6&pid=11" />
<area shape="rect" coords="129,456,268,597" href="productshow.php?dirid=17&amp;pid=13" />
<area shape="rect" coords="830,459,968,595" href="productshow.php?dirid=71&amp;pid=14" />
</map></body>
</html>
