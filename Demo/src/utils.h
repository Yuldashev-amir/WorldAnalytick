#ifndef UTILS_H
#define UTILS_H

#include <QObject>
#include <QQmlEngine>

class Utils : public QObject {
  Q_OBJECT
  QML_ELEMENT
  QML_SINGLETON
  Q_PROPERTY(int count READ getCount WRITE setCount NOTIFY countChanged FINAL)
  Q_PROPERTY(QString dumb READ getDumb CONSTANT FINAL)
public:
  explicit Utils(QObject *parent = nullptr);
  ~Utils();

  static void init(QObject *parent);

  int getCount();
  void setCount(int);

  static Utils *instance();

private:
  int mCount = 3;

  QString getDumb();
  static Utils *mInstance;
signals:
  void countChanged(int count);
};

#endif // UTILS_H
