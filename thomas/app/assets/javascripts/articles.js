setInterval(function() {
    jQuery.get('/articles.json').success(function(data) {
        console.log('data', data);
    });
}, 5000);