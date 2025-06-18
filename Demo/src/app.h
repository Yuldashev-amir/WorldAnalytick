#ifndef APP_H
#define APP_H

#include "utils.h"

#include <QGuiApplication>
#include <QObject>
#include <QQmlApplicationEngine>
class Utils;

class App : public QGuiApplication {
  Q_OBJECT
public:
  App(int &argc, char *argv[]);
  ~App();

  int initApp(int argc, char *argv[]);

  // Important!!!
  static App *getInstance() { return static_cast<App *>(QGuiApplication::instance()); }

  Utils *getUtils() const {
    Q_CHECK_PTR(mUtils);
    return mUtils;
  }

  Utils *getUtilsX();

private:
  Utils *mUtils = nullptr;
};

#endif // APP_H
