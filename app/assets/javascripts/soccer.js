$(function() {
  $('.team').hide();
  $('.soccer-season').hide()
  $('.leagu').hide();
  $('.leicester-fixtures').hide();
  $('.arsenal-fixtures').hide();
  $('.totenham-fixtures').hide();
  $('.man-city-fixtures').hide();
  $("#leicester").hide();
  $("#arsenal").hide();
  $("#totenham").hide();
  $("#man-city").hide();
  $(".selected-team").hide();
  $("#fixtures").on("click", function(){
    $("#leicester").show();
    $("#arsenal").show();
    $("#totenham").show();
    $("#man-city").show();
  })

  $("#leicester").on("click", function(){
    $('.team').hide();
    $('.soccer-season').hide()
    $('.leagu').hide();
    $('.arsenal-fixtures').hide();
    $('.totenham-fixtures').hide();
    $('.man-city-fixtures').hide();
    $('.selected-team').show();
    $('.leicester-fixtures').show();
  })

  $("#arsenal").on("click", function(){
    $('.team').hide();
    $('.soccer-season').hide()
    $('.leagu').hide();
    $('.totenham-fixtures').hide();
    $('.man-city-fixtures').hide();
    $('.leicester-fixtures').hide();
    $('.arsenal-fixtures').show();
  })

  $("#totenham").on("click", function(){
    $('.team').hide();
    $('.soccer-season').hide()
    $('.leagu').hide();
    $('.man-city-fixtures').hide();
    $('.leicester-fixtures').hide();
    $('.arsenal-fixtures').hide();
    $('.totenham-fixtures').show();
  })

  $("#man-city").on("click", function(){
    $('.team').hide();
    $('.soccer-season').hide()
    $('.leagu').hide();
    $('.leicester-fixtures').hide();
    $('.arsenal-fixtures').hide();
    $('.totenham-fixtures').hide();
    $('.man-city-fixtures').show();
  })
  $("#leagu").on("click", function(){
    $('.team').hide();
    $('.soccer-season').hide()
    $('.leicester-fixtures').hide();
    $('.arsenal-fixtures').hide();
    $('.totenham-fixtures').hide();
    $('.man-city-fixtures').hide();
    $('.leagu').show();
  });
  $("#team").on("click", function(){
    $('.leagu').hide();
    $('.soccer-season').hide()
    $('.man-city-fixtures').hide();
    $('.leicester-fixtures').hide();
    $('.arsenal-fixtures').hide();
    $('.totenham-fixtures').hide();
    $('.team').show();
  });
  $("#season").on("click", function(){
    $('.leagu').hide();
    $('.team').hide();
    $('.man-city-fixtures').hide();
    $('.leicester-fixtures').hide();
    $('.arsenal-fixtures').hide();
    $('.totenham-fixtures').hide();
    $('.soccer-season').show()
  });
})
