$(document).ready(function(){
  if (app.isPageSpecificJs('items', 'show')) {
    $('img.zoom-img')
      .wrap('<div style="margin: 0 auto"></div>')
      .css('display', 'block')
      .parent()
      .zoom({ magnify: 2});
  }
})
