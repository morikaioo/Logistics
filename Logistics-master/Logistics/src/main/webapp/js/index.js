$(document).ready(function(){
    var url1 = window.location.pathname;
    console.log("url1111:" + url1); 
    if (url1.indexOf("index") > 0 || url1.indexOf("Index") > 0)
    {
        console.log("shuliang:" + url1.indexOf("Index"));
        document.getElementById("shouye").style.backgroundColor="#EEEEEE";
        $("#shouye").addClass("home");

    }
    if (url1.indexOf("About") > 0) {
        console.log("shuliang:" + url1.indexOf("About"));
        document.getElementById("hqgk").style.backgroundColor = "#EEEEEE";
        $("#hqgk").addClass("home");

    }
    if (url1.indexOf("News") > 0) {
        console.log("shuliang:" + url1.indexOf("About"));
        document.getElementById("news").style.backgroundColor = "#EEEEEE";
        $("#news").addClass("home");

    }
    if (url1.indexOf("FWZN") > 0) {
        console.log("shuliang:" + url1.indexOf("About"));
        document.getElementById("investment").style.backgroundColor = "#EEEEEE";
        $("#investment").addClass("home");

    }
    if (url1.indexOf("XZZQ") > 0) {
        console.log("shuliang:" + url1.indexOf("About"));
        document.getElementById("laws").style.backgroundColor = "#EEEEEE";
        $("#laws").addClass("home");

    }
    if(navigator.appName.indexOf("Explorer") > -1)         

        var text = document.getElementById("bxnr").innerText;
    else
        var text = document.getElementById("bxnr").textContent;
    var len = text.length;
    var beishu = Math.ceil(len / 46);
    document.getElementById("bxnr").style.height = 30 * beishu+"px";
    //console.log("text:" + text);
    //console.log("beishu:" + beishu);
})

function onmousernews1() {
    $("#jtdt_class").addClass("news-ahover");
    $("#bmdt_class").removeClass("news-ahover");
    $("#mtbd_class").removeClass("news-ahover");
    document.getElementById("xwzx").style.display = "block";
    document.getElementById("xxgg").style.display = "none";
    document.getElementById("djdt").style.display = "none";

}
function onmousernews2() {
    $("#jtdt_class").removeClass("news-ahover");
    $("#bmdt_class").addClass("news-ahover");
    $("#mtbd_class").removeClass("news-ahover");
    document.getElementById("xwzx").style.display = "none";
    document.getElementById("xxgg").style.display = "block";
    document.getElementById("djdt").style.display = "none";
}
function onmousernews3() {
    $("#jtdt_class").removeClass("news-ahover");
    $("#bmdt_class").removeClass("news-ahover");
    $("#mtbd_class").addClass("news-ahover");
    document.getElementById("xwzx").style.display = "none";
    document.getElementById("xxgg").style.display = "none";
    document.getElementById("djdt").style.display = "block";

}


