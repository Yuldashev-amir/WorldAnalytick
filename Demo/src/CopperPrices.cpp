#include "CopperPrices.h"

CopperPrices::CopperPrices(QObject * parent) : QObject(parent)
{
    manager = std::make_unique<QRestAccessManager>(&network);
    api = std::make_unique<QNetworkRequestFactory>();
    api->setBaseUrl(m_url);
}

void CopperPrices::loadingCopperPrices()
{
    QPointer<CopperPrices> guard(this);
    manager->get(api->createRequest(), nullptr, guard, [guard](QRestReply & reply) {
        if (reply.isSuccess())
        {
            qWarning() << "Json is parsed";
            if (std::optional<QJsonDocument> json = reply.readJson())
            {
                QJsonObject object = json->object();
                if (object.isEmpty())
                    qWarning() << "Json come in is empty";
                if (object.contains("name") && object["name"].isString())
                {
                    QString nameProd = object["name"].toString();
                    guard->setNameProd(nameProd);
                }
                if (object.contains("interval") && object["interval"].isString())
                {
                    QString interval = object["interval"].toString();
                    guard->setInterval(interval);
                }
                if (object.contains("unit") && object["unit"].isString())
                {
                    QString unitProd = object["unit"].toString();
                    guard->setUnit(unitProd);
                }
                if (object.contains("data") && object["data"].isArray())
                {
                    QJsonArray jsonArray = object["data"].toArray();
                    if(jsonArray.isEmpty())
                        qWarning() << "Empty Array Error parse json";
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

QUrl CopperPrices::url() const
{
    return m_url;
}

void CopperPrices::setUrl(const QUrl &newUrl)
{
    if (m_url == newUrl)
        return;
    m_url = newUrl;
    emit urlChanged();
}

QString CopperPrices::NameProd() const
{
    return m_NameProd;
}

void CopperPrices::setNameProd(const QString &newNameProd)
{
    if (m_NameProd == newNameProd)
        return;
    m_NameProd = newNameProd;
    emit NameProdChanged();
}

QString CopperPrices::interval() const
{
    return m_interval;
}

void CopperPrices::setInterval(const QString &newInterval)
{
    if (m_interval == newInterval)
        return;
    m_interval = newInterval;
    emit intervalChanged();
}

QString CopperPrices::unit() const
{
    return m_unit;
}

void CopperPrices::setUnit(const QString &newUnit)
{
    if (m_unit == newUnit)
        return;
    m_unit = newUnit;
    emit unitChanged();
}

QStringList CopperPrices::date() const
{
    return m_date;
}

void CopperPrices::setDate(const QStringList &newDate)
{
    if (m_date == newDate)
        return;
    m_date = newDate;
    emit dateChanged();
}

QStringList CopperPrices::price() const
{
    return m_price;
}

void CopperPrices::setPrice(const QStringList &newPrice)
{
    if (m_price == newPrice)
        return;
    m_price = newPrice;
    emit priceChanged();
}
