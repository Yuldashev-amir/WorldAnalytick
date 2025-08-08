#include "TskoLlp.h"

TskoLlp::TskoLlp(QObject * parent) : QObject(parent)
{
    manager = std::make_unique<QRestAccessManager>(&network);
    api = std::make_unique<QNetworkRequestFactory>();
    api->setBaseUrl(m_urlTskoLlp);
}

void TskoLlp::loadingTskoLlp()
{
    QPointer<TskoLlp> guard(this);
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
                    if (dateObject.contains("2025-08-07") && dateObject["2025-08-07"].isObject())
                    {
                        qWarning() << "Date object" << dateObject["2025-08-07"].toObject();
                        QJsonObject time = dateObject["2025-08-07"].toObject();
                        QStringList openListValue;
                        QStringList highListValue;
                        QStringList lowListValue;
                        QStringList closeListValue;
                        QStringList volumeListValue;
                        if (time.contains("1. open") && time["1. open"].isString())
                        {
                            qWarning() << time["1. open"].toString();
                            openListValue << time["1. open"].toString();
                            guard->setOpen(openListValue);
                        }
                        if (time.contains("2. high") && time["2. high"].isString())
                        {
                            qWarning() << time["2. high"].toString();
                            highListValue << time["2. high"].toString();
                            guard->setHigh(highListValue);
                        }
                        if (time.contains("3. low") && time["3. low"].isString())
                        {
                            qWarning() << "Low list " << lowListValue;
                            lowListValue << time["3. low"].toString();
                            guard->setlow(lowListValue);
                        }
                        if (time.contains("4. close") && time["4. close"].isString())
                        {
                            qWarning() << "Close List " << closeListValue;
                            closeListValue << time["4. close"].toString();
                            guard->setClose(closeListValue);
                        }
                        if (time.contains("5. volume") && time["5. volume"].isString())
                        {
                            qWarning() << "Volume List " << volumeListValue;
                            volumeListValue << time["5. volume"].toString();
                            guard->setVolume(volumeListValue);
                        }
                    }
                }
            }
        }
    });
}

QUrl TskoLlp::urlTskoLlp() const
{
    return m_urlTskoLlp;
}

void TskoLlp::setUrlTskoLlp(const QUrl &newUrlTskoLlp)
{
    if (m_urlTskoLlp == newUrlTskoLlp)
        return;
    m_urlTskoLlp = newUrlTskoLlp;
    emit urlTskoLlpChanged();
}

QString TskoLlp::info() const
{
    return m_info;
}

void TskoLlp::setInfo(const QString &newInfo)
{
    if (m_info == newInfo)
        return;
    m_info = newInfo;
    emit infoChanged();
}

QString TskoLlp::symbol() const
{
    return m_symbol;
}

void TskoLlp::setSymbol(const QString &newSymbol)
{
    if (m_symbol == newSymbol)
        return;
    m_symbol = newSymbol;
    emit symbolChanged();
}

QString TskoLlp::dateRefreshed() const
{
    return m_dateRefreshed;
}

void TskoLlp::setDateRefreshed(const QString &newDateRefreshed)
{
    if (m_dateRefreshed == newDateRefreshed)
        return;
    m_dateRefreshed = newDateRefreshed;
    emit dateRefreshedChanged();
}

QString TskoLlp::outSize() const
{
    return m_outSize;
}

void TskoLlp::setOutSize(const QString &newOutSize)
{
    if (m_outSize == newOutSize)
        return;
    m_outSize = newOutSize;
    emit outSizeChanged();
}

QString TskoLlp::zone() const
{
    return m_zone;
}

void TskoLlp::setZone(const QString &newZone)
{
    if (m_zone == newZone)
        return;
    m_zone = newZone;
    emit zoneChanged();
}

QString TskoLlp::date() const
{
    return m_date;
}

void TskoLlp::setDate(const QString &newDate)
{
    if (m_date == newDate)
        return;
    m_date = newDate;
    emit dateChanged();
}

QStringList TskoLlp::open() const
{
    return m_open;
}

void TskoLlp::setOpen(const QStringList &newOpen)
{
    if (m_open == newOpen)
        return;
    m_open = newOpen;
    emit openChanged();
}

QStringList TskoLlp::high() const
{
    return m_high;
}

void TskoLlp::setHigh(const QStringList &newHigh)
{
    if (m_high == newHigh)
        return;
    m_high = newHigh;
    emit highChanged();
}

QStringList TskoLlp::low() const
{
    return m_low;
}

void TskoLlp::setlow(const QStringList &newLow)
{
    if (m_low == newLow)
        return;
    m_low = newLow;
    emit lowChanged();
}

QStringList TskoLlp::close() const
{
    return m_close;
}

void TskoLlp::setClose(const QStringList &newClose)
{
    if (m_close == newClose)
        return;
    m_close = newClose;
    emit closeChanged();
}

QStringList TskoLlp::volume() const
{
    return m_volume;
}

void TskoLlp::setVolume(const QStringList &newVolume)
{
    if (m_volume == newVolume)
        return;
    m_volume = newVolume;
    emit volumeChanged();
}
