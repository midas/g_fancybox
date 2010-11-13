/* Guilded Fancy Box To 1.0.0
 * Copyright Fancy Box is licensed under the terms of the MIT License */

g.fancyboxInit = function( options ) 
{	
	if( g.beforeFancyboxInit )
    g.beforeFancyboxInit( options );
	
	var elements = jQuery( options.selector );
	
	if( options.fancybox.type == 'iframe' )
	{
		if( g.fancyboxAddParamToUrlForIframe )
			g.fancyboxAddParamToUrlForIframe( elements );
		else
		{
			jQuery.each( elements, function( i, element )
		  {
				var el = jQuery( element );
				var currentHref = el.attr( 'href' );
				var parts = currentHref.split( '?' );
				var param = 'fragment=1';
				
				var newHref = parts[0] + '?' + param
				
				if( parts.length > 1 ) 
					newRef = parts[1];
					
				el.attr( 'href', newHref );
			});
		}
	}
	
	elements.fancybox( options.fancybox );
	
	if( g.afterFancyboxInit )
    g.afterFancyboxInit( options );
};