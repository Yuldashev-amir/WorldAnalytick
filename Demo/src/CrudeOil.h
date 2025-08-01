#ifndef CRUDEOIL_H
#define CRUDEOIL_H

#include <QObject>
#include <QQmlEngine>
#include <QNetworkAccessManager>
#include <QRestAccessManager>
#include <QNetworkRequestFactory>
#include <QRestReply>
#include <QJsonDocument>
#include <QJsonObject>
#include <QDebug>
#include <memory>
#include <QPointer>
#include <QUrl>
#include <QString>
#include <QStringList>
class CrudeOil : public QObject
{
    Q_OBJECT
    QML_ELEMENT
    Q_PROPERTY(QUrl urlOilCrudeDate READ urlOilCrudeDate WRITE setUrlOilCrudeDate NOTIFY urlOilCrudeDateChanged)
public:
    explicit CrudeOil(QObject * parent = nullptr);
    void loadingPriceWithDate();

    QUrl urlOilCrudeDate() const;
    void setUrlOilCrudeDate(const QUrl &newUrlOilCrudeDate);

signals:
    void urlOilCrudeDateChanged();

private:
    QNetworkAccessManager network;
    std::unique_ptr<QRestAccessManager> manager;
    std::unique_ptr<QNetworkRequestFactory> api;
    QUrl m_urlOilCrudeDate = QUrl("https://www.alphavantage.co/query?function=WTI&interval=monthly&apikey=demo");
};

#endif // CRUDEOIL_H
