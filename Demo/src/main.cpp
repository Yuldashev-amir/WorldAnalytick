#include "app.h"
#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[]) { return App::getInstance()->initApp(argc, argv); }
