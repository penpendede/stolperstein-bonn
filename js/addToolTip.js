window.stolpersteine.fn.addToolTip = function () {
  document.getElementsByTagName('body')[0].addEventListener('mousemove', function updateToolTip (e) {
    var element = document.getElementById('tooltip')
    if (window.stolpersteine.data.toolTip !== '') {
      element.innerHTML = window.stolpersteine.data.toolTip
      element.style.display = 'inline-block'
      element.style.left = (e.pageX + 10) + 'px'
      element.style.top = (e.pageY + 10) + 'px'
    } else {
      element.style.display = 'none'
    }
  })
}
