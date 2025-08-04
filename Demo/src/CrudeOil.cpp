#include "CrudeOil.h"
CrudeOil::CrudeOil(QObject * parent) : QObject(parent)
{
    manager = std::make_unique<QRestAccessManager>(&network);
    api = std::make_unique<QNetworkRequestFactory>();
    api->setBaseUrl(m_urlOilCrudeDate);
}

void CrudeOil::loadingPriceWithDate()
{
    QPointer<CrudeOil> guard(this);
    manager->get(api->createRequest(), nullptr, guard, [guard](QRestReply & reply) {
        if (reply.isSuccess())
        {
            if (std::optional<QJsonDocument> json = reply.readJson())
            {
                QJsonObject object = json->object();
                if (object.isEmpty())
                    qWarning() << "Json come in is empty";
                if (object.contains("name") && object["name"].isString())
                {
                    QString nameProd = object["name"].toString();
                }
                if (object.contains("interval") && object["interval"].isString())
                {
                    QString interval = object["interval"].toString();
                }
                if (object.contains("unit") && object["unit"].isString())
                {
                    QString unitProd = object["unit"].toString();
                }
                for (int index = 0; index < 16; ++index)
                {
                    if (object.contains("date") && object["date"].isString() && object.contains("date") && object["date"].isString())
                    {
                        QStringList dateList;
                        QString date(object["date"].toString());
                        dateList << date;
                        QStringList priceList;
                        QString price(object["value"].toString());
                        priceList << price;

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
