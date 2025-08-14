#include "config.h"
#include <QFile>
#include <QFileInfo>

Config *Config::mInstance = nullptr;

constexpr char ConfigName[] = "/home/amir/ProjectsQT/WorldAnalytick/demo/Demo/src/demo.ini";

Config::Config(QObject *parent) : QObject(parent) {
  mInstance = this;
  settings = new QSettings(ConfigName, QSettings::IniFormat);
}

Config::~Config() { delete settings; }

Config *Config::instance() { return mInstance; }

int Config::getBaseFontSize() const {
  return settings->value("base_font_size", 10).toInt();
}

void Config::setBaseFontSize(int newBaseFontSize) {
  if (m_baseFontSize == newBaseFontSize)
    return;
  m_baseFontSize = newBaseFontSize;
  emit baseFontSizeChanged();
}
