set(_IMG_RESOURCES)
set(_FONT_RESOURCES)

file(
  GLOB images
  LIST_DIRECTORIES false
  img/*)
foreach(f ${images})
  get_filename_component(filename ${f} NAME)
  list(APPEND _IMG_RESOURCES res/img/${filename})
endforeach()

file(
  GLOB fonts
  LIST_DIRECTORIES false
  fonts/*)
foreach(f ${fonts})
  get_filename_component(filename ${f} NAME)
  list(APPEND _FONT_RESOURCES res/fonts/${filename})
endforeach()

set(_IMG_RESOURCES
    ${_IMG_RESOURCES}
    PARENT_SCOPE)

set(_FONT_RESOURCES
    ${_FONT_RESOURCES}
    PARENT_SCOPE)
