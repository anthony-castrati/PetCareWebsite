<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="gallery">
    <c:forEach items="${gallery.scrollingImages}" var="entry">
		<a href="${entry.value}">
			<img src="${entry.key}">
		</a>
    </c:forEach>
</div>
               


	<link rel="stylesheet" href="resources/photobox/photobox.css">
	<script src='resources/photobox/photobox.js'></script>
	
     <script>
     !(function(){
    	    'use strict';

    		var numOfImages = window.location.search ? parseInt(window.location.search.match(/\d+$/)[0]) : 70,
    			gallery = $('#gallery'),
    			videos = [];
    		// finally, initialize photobox on all retrieved images
			$('#gallery').photobox('a', { thumbs:true }, null);
			// using setTimeout to make sure all images were in the DOM, before the history.load() function is looking them up to match the url hash
			setTimeout(window._photobox.history.load, 1000);
    	})();
    </script>
    