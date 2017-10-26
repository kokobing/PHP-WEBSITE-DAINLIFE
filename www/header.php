<?php 
//首页 LOGO
$strSQL = "select opicname from  layoutpic  where id_layout='8' " ;
$objDB->Execute($strSQL);
$sy_logo=$objDB->fields();

//菜单
$strSQL = "select name,url from  webmenu  where dele='1' order by ordernum desc" ;
$objDB->Execute($strSQL);
$sy_webmenu=$objDB->GetRows();

?>
<style type="text/css">
#checkcode a {
font-size: 14px;
color: black;
text-decoration: none;
font-weight: bold;
}

</style>
<div id="header_box">
<div id="header_1" style="position:relative">
<div id="checkcode" style="position:absolute;right:20px;top:46px; color:#000;height:35px; line-height:25px;"><span style="float:left;"><a href="http://fw.dainlife.com" target="_blank">防伪码查询</a></span><img src="/inc/pics/red.jpg" width="26px;" style="float:right;margin-top:0px;"></div>
<div id="headerlogo"><a href="/"><img src="/upload/layout/<?=$sy_logo[opicname];?>" /></a></div>
<div id="headermenu">
<ul>
<?php for($i=1;$i<sizeof($sy_webmenu);$i++){?>
<li><a href="<?=$sy_webmenu[$i][url];?>"><?=$sy_webmenu[$i][name];?></a></li>
<?php }?>
</ul>
</div><!--end headermenu!-->
</div><!--end header1!-->
</div><!--end headerbox!-->