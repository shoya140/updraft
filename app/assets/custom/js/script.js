(function() {
  $(function() {
    return $("a[href^=#]").click(function() {
      var href, position, target;
      href = $(this).attr("href");
      target = $((href === "#" || href === "" ? "html" : href));
      position = target.offset().top;
      $("body,html").animate({
        scrollTop: position
      }, 400, "swing");
      return false;
    });
  });

}).call(this);
