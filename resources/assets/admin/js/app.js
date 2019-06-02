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
	if(url.indexOf('?') > 0){
		url = url + '&' + query;
	} else {
		url = url + '?' + query;
	}

    return url;
}
//Add the fadeout effect on the alert
setTimeout(function(){
    $('#alert-box').slideUp(1000);
}, 3000);
//Datepicker
$('.datepicker').datepicker({
    dateFormat: 'yy-mm-dd',
});

//Pagination

$('#pagination').on('change', function (argument) {
	var data = $(':input').serializeArray();
    var url = location.origin + location.pathname;
    location.href = addQuery(url, data);
})


$('.btn-filter').on('click', function () {
    var data = $(':input').serializeArray();
    var url = location.origin + location.pathname;
    location.href = addQuery(url, data);
});

// $('.file-input').on('change', function(){

//     if (this.files && this.files[0]) {
//         var reader = new FileReader();
//         var input = $(this);
//         reader.onload = function (e) {
//             input.siblings('.img-preview').children('img').attr('src', e.target.result);
//         };
//         reader.readAsDataURL(this.files[0]);

//         // reader.readAsDataURL(input.files[0]);
//         // Array.prototype.forEach.call(this.files, function(file) {
//         //     reader.onload = function (e) {
//         //         input.siblings('.img-preview').each(function(index, el) {
//         //             el.children('img').attr('src', e.target.result);
//         //         });
//         //     };
//         //     reader.readAsDataURL(this.files[index]);
//         // });
            
//     }
// })


$('.file-input').on('change', function() {
    var input = this;
    var preview = $(this).prev('.img-preview');
    //Reset and add all images in
    preview.html('');
    if (input.files) {
        var filesAmount = input.files.length;

        for (i = 0; i < filesAmount; i++) {
            var reader = new FileReader();

            reader.onload = function(event) {
                preview.append(`
                    <div class="preview-item">
                        <img src="${event.target.result}" class="img-responsive">
                    </div> 
                `);
            }

            reader.readAsDataURL(input.files[i]);
        }
    }
});

$('.btn-Delete').on('click', function(){
    return confirm('Do you really want to delete this?');
})

$('table').DataTable({
    "lengthChange": false
});

