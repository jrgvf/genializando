$(document).on('turbolinks:load', function() {
  return $("#contact_message").on("ajax:success", function(){
    var box = bootbox.alert('Mensagem enviada com sucesso!');
    setTimeout(function() {box.modal('hide')}, 2000);
  }).on("ajax:error", function(e) {
    bootbox.alert(e.detail[2].responseText);
  });
});