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
    Q_PROPERTY(QString NameProd READ NameProd WRITE setNameProd NOTIFY NameProdChanged FINAL)
    Q_PROPERTY(QString interval READ interval WRITE setInterval NOTIFY intervalChanged)
    Q_PROPERTY(QString unit READ unit WRITE setUnit NOTIFY unitChanged)
    Q_PROPERTY(QStringList date READ date WRITE setDate NOTIFY dateChanged)
    Q_PROPERTY(QStringList price READ price WRITE setPrice NOTIFY priceChanged)
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
