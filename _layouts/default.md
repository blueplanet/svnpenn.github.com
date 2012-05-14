<!DOCTYPE html>
<html>
<meta charset='utf-8'>

<title>{{ page.title }}</title>

<link rel='stylesheet' href='/css/style.css'>

<body>

<h1>
<a href='http://github.com/svnpenn/svnpenn.github.com'>Steven’s Blog</a>
</h1>

<!--flyerhzm.github.com/_layouts/default.html-->
{% for tag in site.tags %}
<li>
<a href='tags/{{tag | first}}'>
{{tag | first }} ({{tag | last | size}})
</a>
</li>
{% endfor %}
                
<div id='container'>
	
	{{ content }}

</div>
</body>
</html>