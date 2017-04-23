$(function(){
 arr1 = $.cookie('cart');
        if (!arr1){
            arr1 = '[]';
        }
         json2 = $.parseJSON(arr1);

    summa1 = 0;
    $.each(json2, function( index, value ) {
        summa1 = summa1 + parseInt(value['price']);
    });

    $('.summa').text(summa1);
    $('.js-summa').text(summa1);

    $(".button").click(function() {
         arr = $.cookie('cart')  ;
        if (!arr){
            arr = '[]';
        }
         json = $.parseJSON(arr);
        json.push({
            'price':$('span.price').text(),
            'img':$('img.sm').attr('src'),
    });

    $.cookie('cart', JSON.stringify(json), { path : '/' });
     summa = 0;
    $.each(json, function( index, value ) {
        summa = summa + parseInt(value['price']);
    });

    $('.cart .summa').text(summa);
    $('.js-summa').text(summa);
   });
 });