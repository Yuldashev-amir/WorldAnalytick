#ifndef CONFIG_H
#define CONFIG_H

#include <QCoreApplication>
#include <QDebug>
#include <QDir>
#include <QObject>
#include <QSettings>
#include <QStandardPaths>
#include <qqml.h>
#include <QUrl>
class Config : public QObject {
  Q_OBJECT
  QML_ELEMENT
  QML_SINGLETON
public:
  explicit Config(QObject *parent = nullptr);
  ~Config();

  static Config *instance();

  Q_PROPERTY(int baseFontSize READ getBaseFontSize WRITE setBaseFontSize NOTIFY baseFontSizeChanged FINAL)
  int getBaseFontSize() const;
  void setBaseFontSize(int newBaseFontSize);

  signals:
  void baseFontSizeChanged();

  void urlOilCrudeDate();

  private:
  static Config *mInstance;
  QSettings *settings;

  int m_baseFontSize;
};

#endif // CONFIG_H
