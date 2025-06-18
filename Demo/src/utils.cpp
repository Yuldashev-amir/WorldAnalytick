#include "utils.h"

Utils *Utils::mInstance = nullptr;

Utils::Utils(QObject *parent) {
  qDebug() << "!!! Utils created";
  mInstance = this;
  qDebug() << this;
}

Utils::~Utils() {}

void Utils::setCount(int count) {
  mCount = count;
  emit countChanged(mCount);
  qDebug() << "!!!" << mCount;
}

int Utils::getCount() { return mCount; }

QString Utils::getDumb() { return "blabla"; }

Utils *Utils::instance() { return mInstance; }
