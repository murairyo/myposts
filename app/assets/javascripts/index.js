$(function(){
    $(window).scroll(function(){ 
        // 全てのページで走る
     console.log('test3だい') 
      var scroll = $(this).scrollTop();
      $(".topBackground").css("background-position", 0 + "px " + -8*scroll + "px");
    })
    var fadein = function(){
        $('.mainTitle').css('display','none')
        $('.mainTitle').fadeIn(2000);
        var id =setTimeout(fadein, 2000);
        clearTimeout(id);
    } 
    fadein();
    
    $('.inner').on('click',function(){
        console.log('クリック')
        if($('.inner').hasClass('is-open')){
             $('.modalWrapper').css('display','none')
            $(this).removeClass('is-open');
            
            
        }else{
           $(this).addClass('is-open')  
           $('.modalWrapper').css('display','block')
        }
       
        
    });
})

$(document).ready(function(){
     $('.inner').on('click',function(){
         console.log('クリックテスト')
     })
    console.log('testですよー')
});
$(window).on('load',function(){
    // 一回走ったら走らない
    console.log('test2だよ')
})