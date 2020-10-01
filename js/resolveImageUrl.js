window.stolpersteine.fn.resolveImageUrl = function (imageUrl) {
  if (/^https:\/\/upload\.wikimedia\.org\/wikipedia\/commons/.test(imageUrl)) {
    // nothing to do
  } else {
    if (/^https:\/\/commons\.wikimedia\.org\/wiki\/(Datei|File)/i.test(imageUrl)) {
      // nothing to do
    } else if (/^(File|Datei):/i.test(imageUrl)) {
      imageUrl = imageUrl.replace(
        /^(File|Datei):/i,
        'https://commons.wikimedia.org/wiki/File:'
      )
    }
  }
  return {
    link: imageUrl,
    thumb: imageUrl.replace(
      'https://upload.wikimedia.org/wikipedia/commons',
      'https://upload.wikimedia.org/wikipedia/commons/thumb'
    ) +
    '/300px-' +
    imageUrl.split('/')[imageUrl.split('/').length - 1]
  }
}
