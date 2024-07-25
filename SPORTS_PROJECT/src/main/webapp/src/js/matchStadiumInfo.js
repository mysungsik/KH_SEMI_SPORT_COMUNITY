document.addEventListener('DOMContentLoaded', function () {
            const sections = document.querySelectorAll('.section');
            const magnify = document.getElementById('magnify');
            const magnifyImg = magnify.querySelector('img');
            const stadiumDetailImg = document.querySelector('.stadiumDetail');
            const zoomFactor = 1.5; // 확대 배율

            sections.forEach(section => {
                section.addEventListener('mouseenter', function () {
                    stadiumDetailImg.style.filter = 'brightness(50%)';
                });

                section.addEventListener('mousemove', function (e) {
                    const sectionRect = section.getBoundingClientRect();
                    const stadiumRect = stadiumDetailImg.getBoundingClientRect();

                    const sectionWidth = sectionRect.width;
                    const sectionHeight = sectionRect.height;

                    const zoomedWidth = sectionWidth * zoomFactor;
                    const zoomedHeight = sectionHeight * zoomFactor;

                    const x = e.clientX - sectionRect.left;
                    const y = e.clientY - sectionRect.top;

                    const offsetX = x * zoomFactor - magnify.offsetWidth / 2;
                    const offsetY = y * zoomFactor - magnify.offsetHeight / 2;

                    magnify.style.display = 'block';
                    magnify.style.left = `${e.pageX - magnify.offsetWidth / 2}px`;
                    magnify.style.top = `${e.pageY - magnify.offsetHeight / 2}px`;

                    magnifyImg.style.width = `${stadiumRect.width}px`;
                    magnifyImg.style.height = `${stadiumRect.height}px`;

                    magnifyImg.style.left = `-${sectionRect.left - stadiumRect.left + offsetX}px`;
                    magnifyImg.style.top = `-${sectionRect.top - stadiumRect.top + offsetY}px`;
                });

                section.addEventListener('mouseleave', function () {
                    stadiumDetailImg.style.filter = 'brightness(100%)';
                    magnify.style.display = 'none';
                });
            });
        });