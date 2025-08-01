#include "app.h"
#include "test.h"
#include "utils.h"
#include "watcher.h"
#include <qqml.h>
#include <qqmlintegration.h>
#include "CrudeOil.h"
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
  qmlRegisterSingletonInstance("CrudeOil", 1, 0, "CrudeOil", crudeOil);
  // Define order of singletons creation
  engine.singletonInstance<Test *>(baseModuleName, "Test");
  engine.singletonInstance<Watcher *>(baseModuleName, "Watcher");
  engine.singletonInstance<Utils *>(baseModuleName, "Utils");

  // Utils mUtils;
  engine.loadFromModule(baseModuleName, "Main");

  return app.exec();
}
