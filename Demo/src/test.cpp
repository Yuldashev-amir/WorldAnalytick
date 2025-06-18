#include "test.h"

Test *Test::mInstance = nullptr;

Test::Test(QObject *parent) {

  qDebug() << "!!! Test created";
  mInstance = this;
  qDebug() << this;
}

int Test::getCount() const { return m_count; }

void Test::setCount(int newCount) {
  if (m_count == newCount)
    return;
  m_count = newCount;
  emit countChanged();
}

Test *Test::instance() { return mInstance; }
