 const sections = document.querySelectorAll('.image-section');
        const overlay = document.getElementById('overlay');
        const zoomedImage = document.getElementById('zoomedImage');

        sections.forEach(section => {
            section.addEventListener('mouseenter', (event) => {
                const position = section.dataset.position;
                zoomedImage.className = ''; // 이전 클래스를 제거합니다.
                zoomedImage.classList.add(...position.split(' ')); // 새로운 위치 클래스를 추가합니다.
                overlay.classList.add('active');
            });

            section.addEventListener('mouseleave', () => {
                overlay.classList.remove('active');
            });
        });