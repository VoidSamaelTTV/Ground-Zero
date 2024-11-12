window.addEventListener('message', function(event) {
    if (event.data.action === 'show') {
        document.body.style.display = 'flex'; // Show NUI
    } else if (event.data.action === 'hide') {
        document.body.style.display = 'none'; // Hide NUI
    } else if (event.data.action === 'updatePlayerCount') {
        document.getElementById('playerCount').innerText = 'Survivors in the area: ' + event.data.count;
    } else if (event.data.action === 'updateProgress') {
        const progressElement = document.getElementById('progress');
        const progressText = document.getElementById('progressText');
        const progressValue = event.data.progress;

        progressElement.style.width = progressValue + '%'; // Update progress bar width
        progressText.innerText = Math.round(progressValue) + '%'; // Update percentage text
    }
});
