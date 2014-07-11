$.ajaxSetup({ cache: false });
function submitFormPost(theForm, theFunction ) {
    $.post(theForm.action, $("#" + theForm.id).serialize(),theFunction,'html');
}
function fillAjaxHolder(theURL) {
    $.get(theURL,
        function(data, statusText, xhrObject) {
            $('#ajaxHolder').html(data);      });
    return false;
}

function writeAjaxHolder(theContent) {
    $('#ajaxHolder').html(theContent);
    return false;
}

$(".ajaxDeleteLink").live('click',function(event){
    event.preventDefault();
    $.post(event.target,    "_method=DELETE",
        function(data) {
            writeAjaxHolder(data);
        },    'html');
});

$('.ajaxLink').live('click',function(event){
    event.preventDefault(); // Prevent link from following its href
    fillAjaxHolder(event.target);
    return false;
});

$('.ajaxSubmit').live('click',function(event){
    event.preventDefault(); // Prevent link from following its href
    submitFormPost(event.target.form,
        function(data) {
            writeAjaxHolder(data);
        }
    );
});