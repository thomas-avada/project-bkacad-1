//Declare the number formatter

formatter = new Intl.NumberFormat('vi-VN', {
  minimumFractionDigits: 0,
  style: 'currency',
  currency: 'VND'
})

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

$('.add-to-cart').on('click', function () {
    var data = $(this).data();
    var qty = $('.qty-input>input').val();
    data['qty'] = qty ? qty : 1;
    $.post('/cart/add', 
        data,
        function(data, textStatus, xhr) {
            location.reload();
        });
});

$('.product-reviews .page-filter').on('change', function(event) {
    /* Act on the event */
    var page = $('#pagination').val();
    window.location.href = appendQuery('page=' + page);
});

$('.btn-update-cart').on('click', function(){
    var params = $('#cart-form').serialize();
    location.href = location.origin + '/cart/massupdate?' + params;
})

$('.btn-empty-cart').on('click', function(){
    location.href = location.origin + '/cart/empty'
})

$('#is_the_same').on('change', function(){
    if(this.checked){
        $('#billing-details').slideUp();
    } else {
        $('#billing-details').slideDown();
    }
})

$('.shipping-method').on('click', function () {
     $('.loader-block').show();
    $.post('/shipping-methods/update', {
        method: $(this).data('code'),
        fee: $(this).data('fee')
    }, function(data, textStatus, xhr) {
        var totalData = JSON.parse(data);
        $('.total').html(formatter.format(totalData.grand_total));
        $('.shipping-fee').html(formatter.format(totalData.shipping_fee));
        $('.loader-block').hide();
    });
});

$('.payment-method').on('click', function () {
    $('.loader-block').show();
    $.post('/payment-method/update', {
        method: $(this).data('code')
    }, function(data, textStatus, xhr) {
        $('.loader-block').hide();
    });
});

