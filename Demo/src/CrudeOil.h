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
#include <QJsonArray>
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
    Q_PROPERTY(QString dateItem READ dateItem WRITE setDateItem NOTIFY dateItemChanged)
    Q_PROPERTY(QString priceItem READ priceItem WRITE setPriceItem NOTIFY priceItemChanged)
public:
    explicit CrudeOil(QObject * parent = nullptr);
    Q_INVOKABLE void loadingPriceCrudeOil();

    Q_INVOKABLE QUrl urlOilCrudeDate() const;
    void setUrlOilCrudeDate(const QUrl &newUrlOilCrudeDate);

    Q_INVOKABLE QString NameProd() const;
    void setNameProd(const QString &newNameProd);

    Q_INVOKABLE QString interval() const;
    void setInterval(const QString &newInterval);

    Q_INVOKABLE QString unit() const;
    void setUnit(const QString &newUnit);

    Q_INVOKABLE QStringList date() const;
    void setDate(const QStringList &newDate);

    Q_INVOKABLE QStringList price() const;
    void setPrice(const QStringList &newPrice);

    Q_INVOKABLE int sizeDateElement();
    Q_INVOKABLE int sizePriceElement();

    void addStringDate(const QString & str);
    void addStringPrice(const QString & str);

    Q_INVOKABLE QString dateItem() const;
    void setDateItem(const QString &newDateItem);

    Q_INVOKABLE QString priceItem() const;
    void setPriceItem(const QString &newPriceItem);

signals:
    void urlOilCrudeDateChanged();

    void NameProdChanged();

    void intervalChanged();

    void unitChanged();

    void dateChanged();

    void priceChanged();

    void dateItemChanged();

    void priceItemChanged();

private:
    QNetworkAccessManager network;
    std::unique_ptr<QRestAccessManager> manager;
    std::unique_ptr<QNetworkRequestFactory> api;
    QUrl m_urlOilCrudeDate = QUrl("https://www.alphavantage.co/query?function=WTI&interval=monthly&apikey=demo");
    QString m_NameProd;
    QString m_interval;
    QString m_unit;
    QStringList m_date;
    QStringList m_price;
    QString m_dateItem;
    QString m_priceItem;
};

#endif // CRUDEOIL_H
