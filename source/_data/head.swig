{# 谷歌字体 #}
{# 直接更改为 fonts.loli.net 即可使用 #}
<link href="https://fonts.loli.net/css2?family=Pacifico&display=swap" rel="stylesheet">
<link href="https://fonts.loli.net/css?family=Roboto+Slab" rel="stylesheet">
{# 今日头条 #}
{% if theme.toutiao_site_verification %}
  <meta name="bytedance-verification-code" content="{{ theme.toutiao_site_verification }}"/>
{% endif %}
{# 360 #}
{% if theme.360_site_verification %}
  <meta name="360-site-verification" content="{{ theme.360_site_verification }}"/>
{% endif %}
{# 搞怪网页标题 #}
<script>
	let OriginTitile = document.title;
	let titleTime;
	document.addEventListener('visibilitychange', function() {
    if (document.hidden) {
      document.title = '(つェ⊂)我藏好了哦~ ' + OriginTitile;
      clearTimeout(titleTime);
    }
    else {
      document.title = '(*´∇｀*) 被你发现啦~ ' + OriginTitile;
      titleTime = setTimeout(function() {
        document.title = OriginTitile;
      }, 2000);
    }
	});
  // 360自动收录代码
  (function(){
  var src = "https://jspassport.ssl.qhimg.com/11.0.1.js?d182b3f28525f2db83acfaaf6e696dba";
  document.write('<script src="' + src + '" id="sozz"><\/script>');
  })();
</script>