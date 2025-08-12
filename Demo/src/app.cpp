#include "app.h"
#include "test.h"
#include "utils.h"
#include "watcher.h"
#include <qqml.h>
#include <qqmlintegration.h>
#include "CrudeOil.h"
#include "TskoLlp.h"
#include "BrentCrudeOil.h"
#include "NaturelGas.h"
#include "ShopTrt.h"
App::App(int &argc, char *argv[]) : QGuiApplication(argc, argv) {}

App::~App() {}

int App::initApp(int argc, char *argv[]) {

  QGuiApplication app(argc, argv);

  QQmlApplicationEngine engine;

  QObject::connect(
      &engine, &QQmlApplicationEngine::objectCreationFailed, &app, []() { QCoreApplication::exit(-1); },
      Qt::QueuedConnection);

  QString baseModuleName = "Demo";
  CrudeOil * crudeOil = new CrudeOil;
  TskoLlp * tsko = new TskoLlp;
  BrentCrudeOil * brent = new BrentCrudeOil;
  NaturelGas * gas = new NaturelGas;
  ShopTrt * shopTrt = new ShopTrt;
  qmlRegisterSingletonInstance("CrudeOil", 1, 0, "CrudeOil", crudeOil);
  qmlRegisterSingletonInstance("TskoLlp", 1, 0, "TskoLlp", tsko);
  qmlRegisterSingletonInstance("BrentCrudeOil", 1, 0, "BrentCrudeOil", brent);
  qmlRegisterSingletonInstance("NaturelGas", 1, 0, "NaturelGas", gas);
  qmlRegisterSingletonInstance("ShopTrt", 1, 0, "ShopTrt", shopTrt);
  // Define order of singletons creation
  engine.singletonInstance<Test *>(baseModuleName, "Test");
  engine.singletonInstance<Watcher *>(baseModuleName, "Watcher");
  engine.singletonInstance<Utils *>(baseModuleName, "Utils");

  // Utils mUtils;
  engine.loadFromModule(baseModuleName, "Main");

  return app.exec();
}
