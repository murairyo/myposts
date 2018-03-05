$(function(){
    $(window).scroll(function(){ 
        // 全てのページで走る
     console.log('test3だい') 
      var scroll = $(this).scrollTop();
      $(".topBackground").css("background-position", -2*scroll + "px " + -1*scroll + "px");
    })
    var fadein = function(){
        $('.mainTitle').css('display','none')
        $('.mainTitle').fadeIn(2000);
        var id =setTimeout(fadein, 1000);
        clearTimeout(id);
    } 
        fadein();
})

$(document).ready(function(){
    // 一回走ったら走らない
    console.log('testです')
});
$(window).on('load',function(){
    // 一回走ったら走らない
    console.log('test2だよ')
})