//highlight on click
$(".liens").click(function () {
    $(".liens").css("border-left","0").css("background-position","right bottom");
    $(this).css("border-left","5px solid #0984e3").css("background-position","left bottom");
    
    let delay = 150;
    setTimeout(function(){ window.location = "connection.php"; }, delay);
});
