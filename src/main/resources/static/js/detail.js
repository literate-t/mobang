$('.favorit .fa').click(function(){
    $(this).toggleClass('heartclicked');
});

$(".show-btn").click(function(){
    let Height = $('.memo-detail').height();
    if(Height<=130){
        $('.memo-detail').css({'height':'260px'});
        // $('.show-btn').css({'top':'80%'});
    }else{
        $('.memo-detail').css({'height':'130px'});
        // $('.show-btn').css({'top':'60%'});
    }
});