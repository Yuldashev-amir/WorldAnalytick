#ifndef TEST_H
#define TEST_H

#include <QObject>
#include <QQmlEngine>

class Test : public QObject {
  Q_OBJECT
  QML_ELEMENT
  QML_SINGLETON
  Q_PROPERTY(int count READ getCount WRITE setCount NOTIFY countChanged FINAL)
public:
  explicit Test(QObject *parent = nullptr);

  static Test *instance();

  int getCount() const;
  void setCount(int newCount);

signals:
  void countChanged();

private:
  static Test *mInstance;
  int m_count;
};

#endif // TEST_H
