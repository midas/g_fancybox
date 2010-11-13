/* Guilded Fancy Box To 1.0.0
 * Copyright Fancy Box is licensed under the terms of the MIT License */

g.fancyboxInit = function( options ) 
{	
	if( g.beforeFancyboxInit )
    g.beforeFancyboxInit( options );
	
	var elements = jQuery( options.selector );
	
	if( options.fancybox.type == 'iframe' )
	{
		if( g.fancyboxAddParamsToUrl )
		{
			g.fancyboxAddParamsToUrl( options );
		}
	}
	
	elements.fancybox( options.fancybox );
	
	if( g.afterFancyboxInit )
    g.afterFancyboxInit( options );
};