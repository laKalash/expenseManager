//sticky recherche
$(document).ready(function () {
    let reserchOffset = $('#recherche').offset().top;
    
    $('#recherche').wrap('<div class="recherche_placeholder"></div>');
    $('.recherche_placeholder').height($('#recherche').outerHeight());
    
    $(window).scroll(function () {
        let scrollPos = $(window).scrollTop();
        
        if (scrollPos >= (reserchOffset-10)){
            $('#recherche').css("position","fixed").css('top','0');
        }
        else{
            $('#recherche').css("position","relative")
        }
    });
    
});

//highlight on click sur .liens
$(".liens").click(function (e) {
    e.preventDefault();
    
    //animation
    $(this).delay(0).queue(function (next) {
    $(this).css("border-left","5px solid #0984e3").css("background-position","left bottom");
    next()
    });
    $(this).delay(300).queue(function (next) {
        $(this).css("border-left","0").css("background-position","right bottom");
        next()
    });
    
    //redirection
    let delay = 100;
    let url = $(this).attr('href');
    console.log(url);
    setTimeout(function(){ window.location = "connection.php"; }, delay);
});
