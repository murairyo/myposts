document.addEventListener("turbolinks:load", function(){
    $(window).scroll(function(){ 
        // 全てのページで走る
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
        if($('.inner').hasClass('is-open')){
             $('.modalWrapper').css('display','none')
            $(this).removeClass('is-open');
            
            
        }else{
           $(this).addClass('is-open')  
           $('.modalWrapper').css('display','block')
        }
       
    });
})
