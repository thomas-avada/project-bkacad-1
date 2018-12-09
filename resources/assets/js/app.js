//Add the fadeout effect on the alert
setTimeout(function(){
    $('#alert-box').slideUp(1000);
}, 3000);

function addQuery(url, queries)
{
    queries.forEach( function(query, index) {
        if(index == 0 ){
            url = url + '?'+ query.name + '=' + query.value;
        }
        else{
            url = url + '&'+ query.name + '=' + query.value;
        }
    });
    return url;
}

function appendQuery(query) {
    var url = window.location.href;
    if(url.indexOf('order=')){
        if(url.indexOf('?') > 0){
            url = url + '&' + query;
        } else {
            url = url + '?' + query;
        }
    }

    return url;
}

$('.btn-sort').on('click', function () {
    var data = $('.store-filter :input').serializeArray();
    var url = window.location.origin + '/shop';
    window.location.href = addQuery(url, data);
});

$('.btn-filter').on('click', function () {
    var data = $(':input').serializeArray();
    var prices = slider.noUiSlider.get();
    data.push({name: 'minprice', value: prices[0]});
    data.push({name: 'maxprice', value: prices[1]});
    var url = window.location.origin + '/shop';
    window.location.href = addQuery(url, data);
});