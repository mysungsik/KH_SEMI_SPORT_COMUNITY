document.addEventListener('DOMContentLoaded', function() {
	const sections = document.querySelectorAll('.image-section');
	const magnify = document.getElementById('magnify');
	const magnifyImg = magnify.querySelector('img');

	sections.forEach(section => {
		section.addEventListener('mouseenter', function() {
			magnify.style.display = 'block';
			const position = section.getAttribute('data-position');
			let x, y;
			switch (position) {
				case 'top-left':
					x = 0;
					y = 0;
					break;
				case 'top-right':
					x = -50;
					y = 0;
					break;
				case 'bottom-left':
					x = 0;
					y = -50;
					break;
				case 'bottom-right':
					x = -50;
					y = -50;
					break;
			}
			magnifyImg.style.transform = `translate(${x}%, ${y}%)`;
		});

		section.addEventListener('mousemove', function(e) {
			magnify.style.top = `${e.pageY - magnify.offsetHeight / 2}px`;
			magnify.style.left = `${e.pageX - magnify.offsetWidth / 2}px`;
		});

		section.addEventListener('mouseleave', function() {
			magnify.style.display = 'none';
		});
	});
});