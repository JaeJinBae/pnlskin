/*
 * SimpleModal Image Gallery
 * http://www.ericmmartin.com/projects/simplemodal/
 * http://code.google.com/p/simplemodal/
 *
 * Copyright (c) 2010 Eric Martin - http://ericmmartin.com
 *
 * Licensed under the MIT license:
 *   http://www.opensource.org/licenses/mit-license.php
 *
 * Revision: $Id: gallery.js 251 2010-07-21 05:39:45Z emartin24 $
 */

jQuery(function ($) {
	var G = {
		active: false,
		/*
		 * Calls SimpleModal with appropriate options 
		 */
		init: function () {
			G.images = $('.flickr_badge_image a');
			G.images.click(function () {
				G.current_idx = G.images.index(this);
				$(G.create()).modal({
					closeHTML: '',
					overlayId: 'gallery-overlay',
					containerId: 'gallery-container',
					containerCss: {left:0, width:'100%'},
					opacity: 80,
					position: ['10%', null],
					onOpen: G.open,
					onClose: G.close
				});

				return false;
			});
		},
		/*
		 * Creates the HTML for the viewer 
		 */
		create: function () {
			return $("<div id='gallery'> \
					<div id='gallery-image-container'> \
						<div id='gallery-controls'> \
							<div id='gallery-previous'> \
								<a href='#' id='gallery-previous-link'>&laquo; <u>P</u>rev</a> \
							</div> \
							<div id='gallery-next'> \
								<a href='#' id='gallery-next-link'><u>N</u>ext &raquo;</a> \
							</div> \
						</div> \
					</div> \
					<div id='gallery-meta-container'> \
						<div id='gallery-meta'> \
							<div id='gallery-info'><span id='gallery-title'></span><span id='gallery-pages'></span></div> \
							<div id='gallery-close'><a href='#' class='simplemodal-close'>X</a></div> \
						</div> \
					</div> \
				</div>");
		},
		/*
		 * SimpleModal callback to create the 
		 * viewer and open it with animations 
		 */
		open: function (d) {
			G.container = d.container[0];
			G.gallery = $('#gallery', G.container);
			G.image_container = $('#gallery-image-container', G.container);
			G.controls = $('#gallery-controls', G.container);
			G.next = $('#gallery-next-link', G.container);
			G.previous = $('#gallery-previous-link', G.container);
			G.meta_container = $('#gallery-meta-container', G.container);
			G.meta = $('#gallery-meta', G.container);
			G.title = $('#gallery-title', G.container);
			G.pages = $('#gallery-pages', G.container);

			d.overlay.slideDown(300, function () {
				d.container
					.css({height:0})
					.show(function () {

						/**
						 * 시작시 슬라이드 다운 효과
						 */
						d.data.slideDown(0, function () {
							G.display(); //load the first image
						});
					});
			});
		},
		/*
		 * SimpleModal callback to close the 
		 * viewer with animations
		 */
		close: function (d) {
			var self = this;
			G.meta.slideUp(function () {
				G.image_container.fadeOut('fast', function () {
				   /**
				    * 종료시 슬라이드 업 효과
				    */
					d.data.slideUp(50, function () { //d.data.slideUp(500, function () {
						d.container.fadeOut(50, function () { //500
							d.overlay.slideUp(50, function () { //500
								self.close(); // or $.modal.close();	
							});
						});
					});
					G.unbind();
				});
			});
		},
		/*
		 * Display the previous/next image 
		 */
		browse: function (link) {
			G.current_idx = $(link).parent().is('#gallery-next') ? (G.current_idx + 1) : (G.current_idx - 1);
			G.display();
		},
		/* display the requested image and animate the height/width of the container */
		display: function () {
			G.controls.hide();
			//G.meta.slideUp(300, function () {
			G.meta.slideUp(100, function () {
				G.meta_container.hide();
				G.image_container.fadeOut('fast', function () {
					$('#gallery-image', G.container).remove();

					var img = new Image();
					img.onload = function () {
						G.load(img);
					};
					img.src = G.images.eq(G.current_idx).find('img').attr('src').replace(/_(s|t|m)\.jpg$/, '.jpg');

					if (G.current_idx !== 0) {
						// pre-load prev img
						var p = new Image();
						p.src = G.images.eq(G.current_idx - 1).find('img').attr('src').replace(/_(s|t|m)\.jpg$/, '.jpg');
					}
					if (G.current_idx !== (G.images.length - 1)) {
						// pre-load next img
						var n = new Image();
						n.src = G.images.eq(G.current_idx + 1).find('img').attr('src').replace(/_(s|t|m)\.jpg$/, '.jpg');
					}
				});
			});
		},
		load: function (img) {
			var i = $(img);
			i.attr('id', 'gallery-image').hide().appendTo('body');
			var h = i.outerHeight(true),
				w = i.outerWidth(true);

			if (G.gallery.height() !== h || G.gallery.width() !== w) {
				G.gallery.animate(
					{height: h},
					100, //300
					function () {
						G.gallery.animate(
							{width: w},
							100, //300
							function () {
								G.show(i);
							}
						);
					}
				);
			}
			else {
				G.show(i);
			}
		},
		/* 
		 * Show the image and then the controls and meta 
		 */
		show: function (img) {
			img.show();
			//G.image_container.prepend(img).fadeIn('slow', function () {
			G.image_container.prepend(img).fadeIn('fast', function () {
				G.showControls();
				G.showMeta();
			});
		},
		/*
		 * Show the image controls; previous and next 
		 */
		showControls: function () {
			G.next.hide().removeClass('disabled');
			G.previous.hide().removeClass('disabled');
			G.unbind();

			if (G.current_idx === 0) {
				G.previous.addClass('disabled');
			}
			if (G.current_idx === (G.images.length - 1)) {
				G.next.addClass('disabled');
			}
			G.controls.show();

			$('a', G.controls[0]).bind('click.gallery', function () {
				G.browse(this);
				return false;
			});
			$(document).bind('keydown.gallery', function (e) {
				if (!G.active) {
					if ((e.keyCode === 37 || e.keyCode === 80) && G.current_idx !== 0) {
						G.active = true;
						G.previous.trigger('click.gallery');
					}
					else if ((e.keyCode === 39 || e.keyCode === 78) && G.current_idx !== (G.images.length - 1)) {
						G.active = true;
						G.next.trigger('click.gallery');
					}
				}
			});
			$('div', G.controls[0]).hover(
				function () {
					var self = this,
						l = $(self).find('a:not(.disabled)');
					if (l.length > 0) {
						l.show();
					}
				},
				function () {
					$(this).find('a').hide();
				}
			);
		},
		/*
		 * Show the image meta; title, image x of x and the close X 
		 */
		showMeta: function () {
			var link = G.images.eq(G.current_idx).clone(),
				title = link.find('img').attr('title');

			G.title.html(link.attr('title', 'View on Flickr').html(title));
			G.pages.html('Image ' + (G.current_idx + 1) + ' of ' + G.images.length);
			G.meta_container.show()
			G.meta.slideDown(function () {
				G.active = false;	
			});
		},
		/*
		 * Unbind gallery control events 
		 */
		unbind: function () {
			$('a', G.controls[0]).unbind('click.gallery');
			$(document).unbind('keydown.gallery');
			$('div', G.controls[0]).unbind('mouseenter mouseleave');
		}
	};

	G.init();
	
});