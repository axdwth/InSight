var pattern = /(https?:\/\/\S+)/gi;
var textArea = document.getElementById("msg");
var urls = [];
var apiKey = 'AIzaSyBj1ubkZmXWdNRlv3pIqdXCvG8lxjisZSg';




function sendChat() {
    var msg = textArea.value;

  
        $.ajax({
            url: "AjaxChat.jsp",
            type: "POST",
            data: {chat: msg},
            success: function(result) {
                textArea.value = "";
                $('#conversation').animate({scrollTop: $('#conversation')[0].scrollHeight});
                reloadSection();
            }
        });
}
reloadSection();

$(document).ready(function() {
    setInterval(function() {
        reloadSection();
    }, 1000);
});

function reloadSection() {
    $("#conversation").load('Load.jsp?bid='+document.getElementById("txt_name").value);
    $('#conversation').animate({scrollTop: $('#conversation')[0].scrollHeight});
}














   












   