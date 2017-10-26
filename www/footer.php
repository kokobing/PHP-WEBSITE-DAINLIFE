<?php
//页脚
$strSQL = "select content from layout  where id_layout='1'" ;
$objDB->Execute($strSQL);
$footer_BQ=$objDB->fields();
?>
<a href="http://www.ty-sh.com"  style="margin-left:-7458px; color:#FFFFFF; font-size:1px; line-height:1px;">腾岩科技</a>
  <div id="spanline"></div>    
  <div id="footer" class='txt_black'><?=$footer_BQ[content];?></div>   
<script src="http://s16.cnzz.com/stat.php?id=2646900&web_id=2646900&show=pic1" language="JavaScript"></script>