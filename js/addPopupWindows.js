window.stolpersteine.fn.addPopupWindows = function () {
  window.stolpersteine.popupWindows = {}
  for (const key in window.stolpersteine.popupTexts) {
    window.stolpersteine.popupWindows[key] = window.L.control.window(
      window.stolpersteine.map,
      {
        title: window.stolpersteine.popupTexts[key].title,
        content: window.stolpersteine.popupTexts[key].text,
        visible: false
      }
    )
  }
}
