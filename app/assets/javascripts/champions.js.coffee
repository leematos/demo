$ ->
	$('#champions').imagesLoaded ->
		$('#champions').masonry
			itemSelector: '.box'
			isFitWidth: true