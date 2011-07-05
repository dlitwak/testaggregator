
jQuery(document).ready(function() {
	jQuery('a.sort_link').livequery('click', function(e) {
		jQuery('#results').load(e.target.href + " div#results"); 
		return false;
	});
	
	jQuery('div.pagination a').livequery('click', function(e) {
		jQuery('#results').load(e.target.href + " div#results"); 
		return false;
	});
});

