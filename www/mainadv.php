<?php 
//首页-MainAdv左侧介绍
$strSQL = "select a.content,b.opicname from  layout as a left join layoutpic as b on a.id_layout=b.id_layout where a.id_layout='11'" ;
$objDB->Execute($strSQL);
$mainadv=$objDB->fields();

//首页-BANNER图
$strSQL = "select opicname from  layoutpic  where id_layout='10'" ;
$objDB->Execute($strSQL);
$sy_banner=$objDB->fields();

?>

<div id="mainadv">
<div id="mainadvleft"><img src="/upload/layout/<?php echo $mainadv[opicname];?>" width="83" height="83" /><div class="clear"></div><p><?php echo $mainadv[content];?></p></div>
<div id="mainadvright"><img src="/upload/layout/<?php echo $sy_banner[opicname];?>" /></div>
</div><!--end mainadv!-->

<div id="spanline"></div>