// browser adaption of Cologne phonetics
// based on https://github.com/maxwellium/cologne-phonetic
// original Copyright disclaimer:
//
// This project is licensed under the terms of the MIT license.
// Copyright (c) 2019 Max Dancau
//
window.stolpersteine.fn.colognePhonetics = function (phrase) {
  var rules = [
    // substitutions
    [/ä/g, 'a'],
    [/ö/g, 'o'],
    [/ü/g, 'u'],
    [/ß/g, '8'],
    [/[^a-z]/g, ''],
    // complex rules
    [/[dt](?![csz])/g, '2'],
    [/[dt](?=[csz])/g, '8'],
    [/[ckq]x/g, '88'],
    [/[sz]c/g, '88'],
    [/^c(?=[ahkloqrux])/, '4'],
    [/^c/, '8'],
    [/(?<![sz])c/g, '4'],
    [/x/g, '48'],
    [/p(?!h)/g, '1'],
    [/p(?=h)/g, '3'],
    // simple rules
    [/h/g, ''],
    [/[aeijouy]/g, '0'],
    [/b/g, '1'],
    [/[fvw]/g, '3'],
    [/[gkq]/g, '4'],
    [/l/g, '5'],
    [/[mn]/g, '6'],
    [/r/g, '7'],
    [/[csz]/g, '8'],
    // modifiers
    [/([^\w\s])|(.)(?=\2)/g, ''],
    [/\B0/g, ''] // remove 0s except for first char
  ]
  return rules.reduce(
    function (kph, [search, replace]) {
      return kph.replace(search, replace)
    },
    phrase.toLowerCase()
  )
}
