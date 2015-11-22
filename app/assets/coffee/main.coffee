$ ->
  $("a[href^=#]").click ->
    href = $(this).attr("href")
    target = $((if href is "#" or href is "" then "html" else href))
    position = target.offset().top
    $("body,html").animate
      scrollTop: position,
      400,
      "swing"
    return false
