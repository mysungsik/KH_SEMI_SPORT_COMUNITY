document.addEventListener('DOMContentLoaded', function () {
            var ctx = document.getElementById('teamStatsChart').getContext('2d');

            var maxData = 10; // 최대 값을 설정, 필요에 따라 이 값을 조정할 수 있음

            var teamStatsChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: ['안타', '홈런', '도루', '삼진', '병살', '실책'],
                    datasets: [
                        {
                            label: '팀 1',
                            data: [10, 2, 1, 8, 0, 1],
                            backgroundColor: 'rgba(255, 99, 132, 0.2)',
                            borderColor: 'rgba(255, 99, 132, 1)',
                            borderWidth: 1
                        },
                        {
                            label: '팀 2',
                            data: [-5, -1, -2, -5, -1, -3],
                            backgroundColor: 'rgba(54, 162, 235, 0.2)',
                            borderColor: 'rgba(54, 162, 235, 1)',
                            borderWidth: 1
                        }
                    ]
                },
                options: {
                    indexAxis: 'y',
                    scales: {
                        x: {
                            beginAtZero: true,
                            max: maxData,
                            min: -maxData,
                            ticks: {
                                callback: function(value, index, values) {
                                    return Math.abs(value);
                                }
                            }
                        },
                        y: {
                            stacked: true
                        }
                    },
                    responsive: true,
                    plugins: {
                        legend: {
                            position: 'top',
                        },
                        title: {
                            display: true,
                            text: '팀 경기 기록'
                        },
                        tooltip: {
                            callbacks: {
                                label: function(tooltipItem, data) {
                                    var label = data.datasets[tooltipItem.datasetIndex].label || '';
                                    if (label) {
                                        label += ': ';
                                    }
                                    label += Math.abs(tooltipItem.raw);
                                    return label;
                                }
                            }
                        }
                    }
                },
                plugins: [{
                    afterDatasetsDraw: function(chart) {
                        var ctx = chart.ctx;
                        var datasetIndex = 0; // 라벨을 표시할 데이터셋 인덱스 설정
                        chart.data.labels.forEach(function(label, index) {
                            var meta = chart.getDatasetMeta(datasetIndex).data[index];
                            var centerY = meta.y;
                            ctx.fillStyle = 'black';
                            ctx.textAlign = 'center';
                            ctx.textBaseline = 'middle';
                            ctx.font = '12px Arial';
                            ctx.fillText(label, chart.scales.x.getPixelForValue(0), centerY);
                        });
                    }
                }]
            });
        });