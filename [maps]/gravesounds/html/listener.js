window.addEventListener('message', function(event) {
    var item = event.data;

    if (item.showUI) {
        $('#container').show();
        $('#aids')[0].play();
    } else{
        $('#container').hide();
        $('#aids')[0].pause();
    }

})