#include "watcher.h"
#include "app.h"
#include "utils.h"

Watcher::Watcher(QObject *parent) {
  qDebug() << "!!! Watcher created";

  connect(Utils::instance(), &Utils::countChanged, this, &Watcher::displayCount);
}

void Watcher::displayCount(int count) {
  qDebug() << "";

  qDebug() << "###" << count;
}

void Watcher::getUtils() { qDebug() << Utils::instance(); }

void Watcher::setCounter(int count) { Utils::instance()->setCount(count); }
