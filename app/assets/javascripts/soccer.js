$(function() {
  $('.team').hide();
  $('.soccer-season').hide()
  $('.leagu').hide();
  $('.leicester-fixtures').hide();
  $('.arsenal-fixtures').hide();
  $('.tottenham-fixtures').hide();
  $('.man-city-fixtures').hide();

  $("#leicester").hide();
  $("#arsenal").hide();
  $("#tottenham").hide();
  $("#man-city").hide();

  $(".selected-team-leicester").hide();
  $(".selected-team-arsenal").hide();
  $(".selected-team-tottenham").hide();
  $(".selected-team-city").hide();

  $(".players-detail-leicester").hide();
  $(".players-detail-arsenal").hide();
  $(".players-detail-man-city").hide();
  $(".players-detail-tottenham").hide()

  $("#fixtures").on("click", function(){
    $("#leicester").show();
    $("#arsenal").show();
    $("#tottenham").show();
    $("#man-city").show();

  })

  $("#leicester").on("click", function(){
    $('.team').hide();
    $('.soccer-season').hide()
    $('.leagu').hide();
    $('.arsenal-fixtures').hide();
    $('.tottenham-fixtures').hide();
    $('.man-city-fixtures').hide();

    $(".selected-team-arsenal").hide();
    $(".selected-team-tottenham").hide();
    $(".selected-team-city").hide();
    $('.selected-team-leicester').show();
    $('.leicester-fixtures').show();
  })
// show leicester city players detail
  $("#players-leicester").on("click", function(){
    $('.leicester-fixtures').hide();
    $(".players-detail-arsenal").hide();
    $('.players-detail-tottenham').hide();
    $('.players-detail-man-city').hide();
    $('.players-detail-leicester').show();
  })
  // show arsenal players detail
  $("#players-arsenal").on("click", function(){
    $('.arsenal-fixtures').hide();
    $('.players-detail-leicester').hide();
    $('.players-detail-tottenham').hide();
    $('.players-detail-man-city').hide();
    $(".players-detail-arsenal").show();
  })
  // show tottenham players detail
  $("#players-tottenham").on("click", function(){
    $('.tottenham-fixtures').hide();
    $('.players-detail-leicester').hide();
    $('.players-detail-arsenal').hide();
    $('.players-detail-man-city').hide();
    $(".players-detail-tottenham").show();
  })
  // show man city players detail
  $("#players-city").on("click", function(){
    $('.man-city-fixtures').hide();
    $('.players-detail-leicester').hide();
    $('.players-detail-arsenal').hide();
    $(".players-detail-tottenham").hide();
    $('.players-detail-man-city').show();
  })

  $("#arsenal").on("click", function(){
    $('.team').hide();
    $('.soccer-season').hide()
    $('.leagu').hide();
    $('.tottenham-fixtures').hide();
    $('.man-city-fixtures').hide();
    $('.leicester-fixtures').hide();

    $(".selected-team-tottenham").hide();
    $(".selected-team-city").hide();
    $('.selected-team-leicester').hide();
    $('.leicester-fixtures').hide();
    $('.arsenal-fixtures').show();
    $(".selected-team-arsenal").show();

  })

  $("#tottenham").on("click", function(){
    $('.team').hide();
    $('.soccer-season').hide()
    $('.leagu').hide();
    $('.man-city-fixtures').hide();
    $('.leicester-fixtures').hide();
    $('.arsenal-fixtures').hide();

    $(".selected-team-city").hide();
    $('.selected-team-leicester').hide();
    $('.leicester-fixtures').hide();
    $(".selected-team-arsenal").hide();
    $('.tottenham-fixtures').show();
    $(".selected-team-tottenham").show();
  })

  $("#man-city").on("click", function(){
    $('.team').hide();
    $('.soccer-season').hide()
    $('.leagu').hide();
    $('.leicester-fixtures').hide();
    $('.arsenal-fixtures').hide();
    $('.tottenham-fixtures').hide();

    $('.selected-team-leicester').hide();
    $('.leicester-fixtures').hide();
    $(".selected-team-arsenal").hide();
    $('.tottenham-fixtures-fixtures').hide();
    $(".selected-team-tottenham").hide();
    $('.man-city-fixtures').show();
    $(".selected-team-city").show();
  })
  $("#leagu").on("click", function(){
    $('.team').hide();
    $('.soccer-season').hide()
    $('.leicester-fixtures').hide();
    $('.arsenal-fixtures').hide();
    $('.tottenham-fixtures').hide();
    $('.man-city-fixtures').hide();
    $('.leagu').show();
  });
  $("#team").on("click", function(){
    $('.leagu').hide();
    $('.soccer-season').hide()
    $('.man-city-fixtures').hide();
    $('.leicester-fixtures').hide();
    $('.arsenal-fixtures').hide();
    $('.tottenham-fixtures').hide();
    $('.team').show();
  });
  $("#season").on("click", function(){
    $('.leagu').hide();
    $('.team').hide();
    $('.man-city-fixtures').hide();
    $('.leicester-fixtures').hide();
    $('.arsenal-fixtures').hide();
    $('.tottenham-fixtures').hide();
    $('.soccer-season').show()
  });
})
