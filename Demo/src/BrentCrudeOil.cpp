#include "BrentCrudeOil.h"
#include <QNetworkAccessManager>
#include <QRestAccessManager>
#include <QNetworkRequestFactory>

BrentCrudeOil::BrentCrudeOil(QObject * parent) : QObject(parent)
{
    manager = std::make_unique<QRestAccessManager>(&network);
    api = std::make_unique<QNetworkRequestFactory>();
    api->setBaseUrl(m_url);
}

void BrentCrudeOil::loadingBrentData()
{
    QPointer<BrentCrudeOil> guard(this);
    manager->get(api->createRequest(), nullptr, guard, [guard](QRestReply & reply) {
        if (reply.isSuccess())
        {
            qWarning() << "Json is parsed";
            if (std::optional<QJsonDocument> json = reply.readJson())
            {
                QJsonObject object = json->object();
                if (object.isEmpty())
                    qWarning() << "Json object is empty";
                if (object.contains("name") && object["name"].isString())
                {
                    QString name = object["name"].toString();
                    guard->setNameProd(name);
                    qWarning() << "Name " << name;
                }
                if (object.contains("interval") && object["interval"].isString())
                {
                    QString interval = object["interval"].toString();
                    guard->setInterval(interval);
                    qWarning() << "Interval " << interval;
                }
                if (object.contains("unit") && object["unit"].isString())
                {
                    QString unit = object["unit"].toString();
                    guard->setUnit(unit);
                    qWarning() << "Unit " << unit;
                }
                if (object.contains("data") && object["data"].isArray())
                {
                    QJsonArray jsonArray = object["data"].toArray();
                    if (jsonArray.isEmpty())
                        qWarning() << "Json array is empty. This is error parse";
                    QJsonObject objectJson;
                    QStringList dateList;
                    QStringList priceList;
                    for (int index = 0; index <= 8; ++index)
                    {
                        objectJson = jsonArray[index].toObject();
                        qDebug() << "Json " << objectJson;
                        if (objectJson.contains("date") && objectJson["date"].isString() && objectJson.contains("value") && objectJson["value"].isString())
                        {
                            if (dateList.isEmpty() && priceList.isEmpty())
                            {
                                dateList << objectJson["date"].toString();
                                priceList << objectJson["value"].toString();
                            }
                            dateList.insert(index, objectJson["date"].toString());
                            qWarning() << "Date: " << dateList[index];
                            guard->setDate(dateList);
                            priceList.insert(index, objectJson["value"].toString());
                            qWarning() << "Value price: " << priceList[index];
                            guard->setPrice(priceList);
                        }
                    }
                }
            }
        }
    });
}

QUrl BrentCrudeOil::url() const
{
    return m_url;
}

void BrentCrudeOil::setUrl(const QUrl &newUrl)
{
    if (m_url == newUrl)
        return;
    m_url = newUrl;
    emit urlChanged();
}

QString BrentCrudeOil::NameProd() const
{
    return m_NameProd;
}

void BrentCrudeOil::setNameProd(const QString &newNameProd)
{
    if (m_NameProd == newNameProd)
        return;
    m_NameProd = newNameProd;
    emit NameProdChanged();
}

QString BrentCrudeOil::interval() const
{
    return m_interval;
}

void BrentCrudeOil::setInterval(const QString &newInterval)
{
    if (m_interval == newInterval)
        return;
    m_interval = newInterval;
    emit intervalChanged();
}

QString BrentCrudeOil::unit() const
{
    return m_unit;
}

void BrentCrudeOil::setUnit(const QString &newUnit)
{
    if (m_unit == newUnit)
        return;
    m_unit = newUnit;
    emit unitChanged();
}

QStringList BrentCrudeOil::date() const
{
    return m_date;
}

void BrentCrudeOil::setDate(const QStringList &newDate)
{
    if (m_date == newDate)
        return;
    m_date = newDate;
    emit dateChanged();
}

QStringList BrentCrudeOil::price() const
{
    return m_price;
}

void BrentCrudeOil::setPrice(const QStringList &newPrice)
{
    if (m_price == newPrice)
        return;
    m_price = newPrice;
    emit priceChanged();
}
