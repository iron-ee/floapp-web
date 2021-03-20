(function($){

  function loopGallery(test, index, item){
    if(test){
      if (typeof item.double !== "undefined") {
        var box = $('<a class="box double box-'+index+'" href="'+item.sourceBig+'"></a>');
      } else {
        var box = $('<a class="box box-'+index+'" href="'+item.sourceBig+'"></a>');
      }
      var info = $('<p class="info">'+item.name+'</p>')

      // Generate the markup
      $('#gallery').append(box);
      box.append('<div class="img-wrapper"><img src="'+item.source+'" class="img-responsive"></div>');
      box.append(info);
    }
  }
  // define #gallery
  var $lg = $('#gallery');

  // Add the first 5 photos when page load
  $.getJSON('photos.json', function(data){
    $.each(data, function(index, item){
      loopGallery(index <= 4, index, item);
    });
    // Prevent to open image in default html mode
    $('#gallery .box').click(function(e){
      e.preventDefault();
    });
    // Start lightgallery first time
    setTimeout(function(){
      $lg.lightGallery();
    });
  });

  // Click to load more photos
  $('#load-more-photos').on('click', function(event){
    event.preventDefault();
    var galleryLength = $('.box').length;
    $.ajax('photos.json', {
      dataType: 'json',
      success: function(data){
        $.each(data, function(index, item){
          loopGallery(item.id >= galleryLength && item.id < galleryLength + 5, index, item);
        });
      },
      beforeSend: function(){
        $('.spinner').fadeIn();
      },
      complete: function(){
        $('.spinner').hide();

        // Prevent to open image in default html mode
        $('#gallery .box').click(function(e){
          e.preventDefault();
        });
        // Restart light gallery to count all images loaded
        setTimeout(function(){
          $lg.data('lightGallery').destroy(true);
          $lg.lightGallery();
        });
      }//complete
    });//new photos
  });//on click
})(jQuery);