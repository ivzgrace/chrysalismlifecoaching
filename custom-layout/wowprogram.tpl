{% for item in items %}
<li class="accordion-navigation"> <a href="#panel_{{item.counter}}">{{item.name}}</a>
<div id="panel_{{item.counter}}" class="content">{{item.description}}
{% if item.IsComplete == false %}
<div class="text-right"><a class="button" href="{{item.url}}">Watch Now</a></div>
{% else %}

{% endif %}
</div>
</li>
{%endfor%} 

