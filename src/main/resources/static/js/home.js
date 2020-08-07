$('.signup').click(function(){
    $('#login-page').removeClass('d-none');
});

$('.close-btn').click(function(){
    $('#login-page').addClass('d-none');
});

$('.signup').click(function(){
    $('body').css({'overflow':'hidden'});
});

$('.close-btn').click(function(){
    $('body').css({'overflow':'auto'});
});

$('.member').click(function(){
    $('.member ul').removeClass('d-none');
});