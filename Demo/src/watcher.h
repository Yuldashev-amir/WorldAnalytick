#ifndef WATCHER_H
#define WATCHER_H

#include "utils.h"
#include <QObject>

class Watcher : public QObject {
  Q_OBJECT
  QML_ELEMENT
  QML_SINGLETON
public:
  explicit Watcher(QObject *parent = nullptr);

  Q_INVOKABLE void setCounter(int count);
  Q_INVOKABLE void getUtils();

private:
  void displayCount(int count);
};

#endif // WATCHER_H
