#ifndef COPPERPRICES_H
#define COPPERPRICES_H

#include <QObject>
#include <QQmlEngine>
#include <QNetworkAccessManager>
#include <QRestAccessManager>
#include <QNetworkRequestFactory>
#include <QRestReply>
#include <QJsonDocument>
#include <QJsonObject>
#include <QJsonArray>
#include <QDebug>
#include <memory>
#include <QPointer>
#include <QUrl>
#include <QString>
#include <QStringList>

class CopperPrices : public QObject
{
    Q_OBJECT
    QML_ELEMENT
    Q_PROPERTY(QUrl url READ url WRITE setUrl NOTIFY urlChanged)
    Q_PROPERTY(QString NameProd READ NameProd WRITE setNameProd NOTIFY NameProdChanged FINAL)
    Q_PROPERTY(QString interval READ interval WRITE setInterval NOTIFY intervalChanged)
    Q_PROPERTY(QString unit READ unit WRITE setUnit NOTIFY unitChanged)
    Q_PROPERTY(QStringList date READ date WRITE setDate NOTIFY dateChanged)
    Q_PROPERTY(QStringList price READ price WRITE setPrice NOTIFY priceChanged)
public:
    explicit CopperPrices(QObject * parent = nullptr);
    Q_INVOKABLE void loadingCopperPrices();

    QUrl url() const;
    void setUrl(const QUrl &newUrl);

    QString NameProd() const;
    void setNameProd(const QString &newNameProd);

    QString interval() const;
    void setInterval(const QString &newInterval);

    QString unit() const;
    void setUnit(const QString &newUnit);

    QStringList date() const;
    void setDate(const QStringList &newDate);

    QStringList price() const;
    void setPrice(const QStringList &newPrice);

signals:
    void urlChanged();

    void NameProdChanged();

    void intervalChanged();

    void unitChanged();

    void dateChanged();

    void priceChanged();

private:
    QNetworkAccessManager network;
    std::unique_ptr<QRestAccessManager> manager;
    std::unique_ptr<QNetworkRequestFactory> api;
    QUrl m_url = QUrl("https://www.alphavantage.co/query?function=COPPER&interval=monthly&apikey=demo");
    QString m_NameProd;
    QString m_interval;
    QString m_unit;
    QStringList m_date;
    QStringList m_price;
};

#endif // COPPERPRICES_H
