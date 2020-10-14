document.ready(
  function () {
    window.stolpersteine.fn.initialize('map')
    window.stolpersteine.fn.addBaseLayers()
    window.stolpersteine.fn.addBezirke()
    window.stolpersteine.fn.addOrtsteile()
    window.stolpersteine.fn.addMenu()
    window.stolpersteine.fn.addPopupWindows()
    window.stolpersteine.fn.extractGebiete()
    window.stolpersteine.fn.addStolpersteine()
  }
)
