# Fade items in order
exports.delayFadeIn  = (layers, animationCurve, delay) ->
  # Setup stagger fade
  for layer in layers
    layer.opacity = 0
    layer.y += 20

  # Run stagger fade
  for layer, index in layers
    layer.animate
      properties: {opacity: 1, y: layer.y - 20},
      time: 0.3,
      curve: animationCurve
      delay: delay * (index+1)