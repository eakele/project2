$(function() {
  $("#leagu").on("click", function(){
    $('.team').hide();
    $('.soccer-season').hide()
    $('.leagu').show();
  });
  $("#team").on("click", function(){
    $('.leagu').hide();
    $('.soccer-season').hide()
    $('.team').show();
  });
  $("#season").on("click", function(){
    $('.leagu').hide();
    $('.team').hide();
    $('.soccer-season').show()
  });
})
