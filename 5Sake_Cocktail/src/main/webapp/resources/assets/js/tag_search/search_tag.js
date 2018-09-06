
		var $grid = $('.grid').isotope({
		itemSelector: '.element-item',
		layoutMode: 'fitRows',
		getSortData: {
		 name: '.name',
		 symbol: '.symbol',
		 number: '.number parseInt',
		 category: '[data-category]',
		 weight: function( itemElem ) {
		   var weight = $( itemElem ).find('.weight').text();
		   return parseFloat( weight.replace( /[\(\)]/g, '') );
		 }
		}
		});		
		// store filter for each group
		var filters = {};
		//filter functions
		var filterFns = {
		// show if number is greater than 50
		numberGreaterThan50: function() {
		 var number = $(this).find('.number').text();
		 return parseInt( number, 10 ) > 50;
		},
		// show if name ends with -ium
		ium: function() {
			 var name = $(this).find('.name').text();
			 return name.match( /ium$/ );
			}
		};
		//bind filter button click
		$('#alcole').on( 'click', 'button', function() {
			var $this = $(this);
			  // get group key
			  var $buttonGroup = $this.parents('.button-group');
			  var filterGroup = $buttonGroup.attr('data-filter-group');
			  // set filter for group
			  filters[ filterGroup ] = $this.attr('data-filter');
			  // combine filters
			  var filterValue = concatValues( filters );
			 // alert(filterValue);
			  $grid.isotope({ filter: filterValue });
		});
		$('#liqueur').on( 'click', 'button', function() {
			var $this = $(this);
			  // get group key
			  var $buttonGroup = $this.parents('.button-group');
			  var filterGroup = $buttonGroup.attr('data-filter-group');
			  // set filter for group
			  filters[ filterGroup ] = $this.attr('data-filter');
			  // combine filters
			  var filterValue = concatValues( filters );
			 // alert(filterValue);
			  $grid.isotope({ filter: filterValue });
		});
		$('#material').on( 'click', 'button', function() {
			/* var filterValue = $( this ).attr('data-filter');
			// use filterFn if matches value
			filterValue = filterFns[ filterValue ] || filterValue;
			$grid.isotope({ filter: filterValue }); */
			var $this = $(this);
			  // get group key
			  var $buttonGroup = $this.parents('.button-group');
			  var filterGroup = $buttonGroup.attr('data-filter-group');
			  // set filter for group
			  filters[ filterGroup ] = $this.attr('data-filter');
			  // combine filters
			  var filterValue = concatValues( filters );
			  //alert(filterValue);
			  $grid.isotope({ filter: filterValue });
		});

		// flatten object by concatting values
		function concatValues( obj ) {
		  var value = '';
		  for ( var prop in obj ) {
		    value += obj[ prop ];
		  }
		  return value;
		}
		//change is-checked class on buttons
			$('.button-group').each( function( i, buttonGroup ) {
				var $buttonGroup = $( buttonGroup );
				$buttonGroup.on( 'click', 'button', function() {
				 $buttonGroup.find('.is-checked').removeClass('is-checked');
				 $( this ).addClass('is-checked');
			});
		});