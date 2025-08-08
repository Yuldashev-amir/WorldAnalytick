#include "CrudeOil.h"
CrudeOil::CrudeOil(QObject * parent) : QObject(parent)
{
    manager = std::make_unique<QRestAccessManager>(&network);
    api = std::make_unique<QNetworkRequestFactory>();
    api->setBaseUrl(m_urlOilCrudeDate);
}

void CrudeOil::loadingPriceCrudeOil()
{
    QPointer<CrudeOil> guard(this);
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

QUrl CrudeOil::urlOilCrudeDate() const
{
    return m_urlOilCrudeDate;
}

void CrudeOil::setUrlOilCrudeDate(const QUrl &newUrlOilCrudeDate)
{
    if (m_urlOilCrudeDate == newUrlOilCrudeDate)
        return;
    m_urlOilCrudeDate = newUrlOilCrudeDate;
    emit urlOilCrudeDateChanged();
}

QString CrudeOil::NameProd() const
{
    return m_NameProd;
}

void CrudeOil::setNameProd(const QString &newNameProd)
{
    if (m_NameProd == newNameProd)
        return;
    m_NameProd = newNameProd;
    emit NameProdChanged();
}

QString CrudeOil::interval() const
{
    return m_interval;
}

void CrudeOil::setInterval(const QString &newInterval)
{
    if (m_interval == newInterval)
        return;
    m_interval = newInterval;
    emit intervalChanged();
}

QString CrudeOil::unit() const
{
    return m_unit;
}

void CrudeOil::setUnit(const QString &newUnit)
{
    if (m_unit == newUnit)
        return;
    m_unit = newUnit;
    emit unitChanged();
}

QStringList CrudeOil::date() const
{
    return m_date;
}

void CrudeOil::setDate(const QStringList &newDate)
{
    if (m_date == newDate)
        return;
    m_date = newDate;
    emit dateChanged();
}

QStringList CrudeOil::price() const
{
    return m_price;
}

void CrudeOil::setPrice(const QStringList &newPrice)
{
    if (m_price == newPrice)
        return;
    m_price = newPrice;
    emit priceChanged();
}

int CrudeOil::sizeDateElement()
{
    return m_date.size();
}

int CrudeOil::sizePriceElement()
{
    return m_price.size();
}

void CrudeOil::addStringDate(const QString & str)
{
    m_date.append(str);
    emit dateChanged();
}

void CrudeOil::addStringPrice(const QString & str)
{
    m_price.append(str);
    emit priceChanged();
}

QString CrudeOil::dateItem() const
{
    return m_dateItem;
}

void CrudeOil::setDateItem(const QString &newDateItem)
{
    if (m_dateItem == newDateItem)
        return;
    m_dateItem = newDateItem;
    emit dateItemChanged();
}

QString CrudeOil::priceItem() const
{
    return m_priceItem;
}

void CrudeOil::setPriceItem(const QString &newPriceItem)
{
    if (m_priceItem == newPriceItem)
        return;
    m_priceItem = newPriceItem;
    emit priceItemChanged();
}
