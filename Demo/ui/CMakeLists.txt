list(APPEND _QML_SOURCES ui/view/Util.qml ui/view/InputCrudeOil.qml ui/view/MenuSideBar.qml ui/view/TskoLLP.qml ui/view/ShopTRT.qml ui/view/BrentCrude.qml)
list(APPEND _QML_SOURCES ui/view/NaturelGasLot.qml)
list(APPEND _QML_SOURCES ui/view/CopperPriceLot.qml)
# list(APPEND _QML_SINGLETONS ui/singletons/Fonts.qml
# ui/singletons/UtilsCPP.qml)
list(APPEND _QML_SINGLETONS ui/singletons/Fonts.qml)

set(_QML_SOURCES
    ${_QML_SOURCES}
    PARENT_SCOPE)

set(_QML_SINGLETONS
    ${_QML_SINGLETONS}
    PARENT_SCOPE)
