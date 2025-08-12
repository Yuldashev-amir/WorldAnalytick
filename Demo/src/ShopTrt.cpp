#include "ShopTrt.h"

ShopTrt::ShopTrt(QObject * parent) : QObject(parent)
{
    manager = std::make_unique<QRestAccessManager>(&network);
    api = std::make_unique<QNetworkRequestFactory>();
    api->setBaseUrl(m_urlTskoLlp);
}

void ShopTrt::loadingShopTrt()
{
    QPointer<ShopTrt> guard(this);
    manager->get(api->createRequest(), nullptr, guard, [guard](QRestReply & reply) {
        if (reply.isSuccess())
        {
            qWarning() << "Json is parsed";
            if (std::optional<QJsonDocument> json = reply.readJson())
            {
                QJsonObject object = json->object();
                if (object.isEmpty())
                    qWarning() << "Json empty";
                QJsonObject metaObject;
                if (object.contains("Meta Data") && object["Meta Data"].isObject())
                {
                    metaObject = object["Meta Data"].toObject();
                    if (metaObject.contains("1. Information") && metaObject["1. Information"].isString())
                    {
                        QString information = metaObject["1. Information"].toString();
                        guard->setInfo(information);
                        qWarning() << information;
                    }
                    if (metaObject.contains("2. Symbol") && metaObject["2. Symbol"].isString())
                    {
                        QString symb = metaObject["2. Symbol"].toString();
                        guard->setSymbol(symb);
                        qWarning() << symb;
                    }
                    if (metaObject.contains("3. Last Refreshed") && metaObject["3. Last Refreshed"].isString())
                    {
                        QString dateRef = metaObject["3. Last Refreshed"].toString();
                        guard->setDateRefreshed(dateRef);
                        qWarning() << dateRef;
                    }
                    if (metaObject.contains("4. Output Size") && metaObject["4. Output Size"].isString())
                    {
                        QString outSize = metaObject["4. Output Size"].toString();
                        guard->setOutSize(outSize);
                        qWarning() << outSize;
                    }
                    if (metaObject.contains("5. Time Zone") && metaObject["5. Time Zone"].isString())
                    {
                        QString timeZone = metaObject["5. Time Zone"].toString();
                        guard->setZone(timeZone);
                        qDebug() << timeZone;
                    }
                }
                QJsonObject dateObject;
                if (object.contains("Time Series (Daily)") && object["Time Series (Daily)"].isObject())
                {
                    dateObject = object["Time Series (Daily)"].toObject();
                    if (dateObject.contains("2025-08-11") && dateObject["2025-08-11"].isObject())
                    {
                        qWarning() << "Date object" << dateObject["2025-08-11"].toObject();
                        QJsonObject time = dateObject["2025-08-11"].toObject();
                        QVariantList openListValue;
                        QVariantList highListValue;
                        QVariantList lowListValue;
                        QVariantList closeListValue;
                        QVariantList volumeListValue;
                        if (time.contains("1. open") && time["1. open"].isString())
                        {
                            qWarning() << time["1. open"].toString().toDouble();
                            openListValue << time["1. open"].toString().toDouble();
                            guard->setOpen(openListValue);
                        }
                        if (time.contains("2. high") && time["2. high"].isString())
                        {
                            qWarning() << time["2. high"].toString().toDouble();
                            highListValue << time["2. high"].toString().toDouble();
                            guard->setHigh(highListValue);
                        }
                        if (time.contains("3. low") && time["3. low"].isString())
                        {
                            qWarning() << "Low list " << lowListValue;
                            lowListValue << time["3. low"].toString().toDouble();
                            guard->setlow(lowListValue);
                        }
                        if (time.contains("4. close") && time["4. close"].isString())
                        {
                            qWarning() << "Close List " << closeListValue;
                            closeListValue << time["4. close"].toString().toDouble();
                            guard->setClose(closeListValue);
                        }
                        if (time.contains("5. volume") && time["5. volume"].isString())
                        {
                            qWarning() << "Volume List " << volumeListValue;
                            volumeListValue << time["5. volume"].toString().toDouble();
                            guard->setVolume(volumeListValue);
                        }
                    }
                }
            }
        }
    });
    emit loadingNewData();
}

QUrl ShopTrt::urlTskoLlp() const
{
    return m_urlTskoLlp;
}

void ShopTrt::setUrlTskoLlp(const QUrl &newUrlTskoLlp)
{
    if (m_urlTskoLlp == newUrlTskoLlp)
        return;
    m_urlTskoLlp = newUrlTskoLlp;
    emit urlTskoLlpChanged();
}

QString ShopTrt::info() const
{
    return m_info;
}

void ShopTrt::setInfo(const QString &newInfo)
{
    if (m_info == newInfo)
        return;
    m_info = newInfo;
    emit infoChanged();
}

QString ShopTrt::symbol() const
{
    return m_symbol;
}

void ShopTrt::setSymbol(const QString &newSymbol)
{
    if (m_symbol == newSymbol)
        return;
    m_symbol = newSymbol;
    emit symbolChanged();
}

QString ShopTrt::dateRefreshed() const
{
    return m_dateRefreshed;
}

void ShopTrt::setDateRefreshed(const QString &newDateRefreshed)
{
    if (m_dateRefreshed == newDateRefreshed)
        return;
    m_dateRefreshed = newDateRefreshed;
    emit dateRefreshedChanged();
}

QString ShopTrt::outSize() const
{
    return m_outSize;
}

void ShopTrt::setOutSize(const QString &newOutSize)
{
    if (m_outSize == newOutSize)
        return;
    m_outSize = newOutSize;
    emit outSizeChanged();
}

QString ShopTrt::zone() const
{
    return m_zone;
}

void ShopTrt::setZone(const QString &newZone)
{
    if (m_zone == newZone)
        return;
    m_zone = newZone;
    emit zoneChanged();
}

QString ShopTrt::date() const
{
    return m_date;
}

void ShopTrt::setDate(const QString &newDate)
{
    if (m_date == newDate)
        return;
    m_date = newDate;
    emit dateChanged();
}

QVariantList ShopTrt::open() const
{
    return m_open;
}

void ShopTrt::setOpen(const QVariantList &newOpen)
{
    if (m_open == newOpen)
        return;
    m_open = newOpen;
    emit openChanged();
}

QVariantList ShopTrt::high() const
{
    return m_high;
}

void ShopTrt::setHigh(const QVariantList &newHigh)
{
    if (m_high == newHigh)
        return;
    m_high = newHigh;
    emit highChanged();
}

QVariantList ShopTrt::low() const
{
    return m_low;
}

void ShopTrt::setlow(const QVariantList &newLow)
{
    if (m_low == newLow)
        return;
    m_low = newLow;
    emit lowChanged();
}

QVariantList ShopTrt::close() const
{
    return m_close;
}

void ShopTrt::setClose(const QVariantList &newClose)
{
    if (m_close == newClose)
        return;
    m_close = newClose;
    emit closeChanged();
}

QVariantList ShopTrt::volume() const
{
    return m_volume;
}

void ShopTrt::setVolume(const QVariantList &newVolume)
{
    if (m_volume == newVolume)
        return;
    m_volume = newVolume;
    emit volumeChanged();
}
