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
