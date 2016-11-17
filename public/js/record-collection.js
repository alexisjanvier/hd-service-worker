if ('serviceWorker' in navigator) {
    navigator.serviceWorker.register('service-worker.js', {
        scope: '/'
    });
} else {
    var alert = document.createElement('h3');
    alert.setAttribute('class', 'header center red-text');
    alert.textContent = 'Your browser do not support ServiceWorker';
    document.getElementById('app-title').append(alert);
}
