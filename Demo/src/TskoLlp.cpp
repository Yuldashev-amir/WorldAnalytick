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
            if (std::optional<QJsonDocument> json = reply.readJson())
            {
                QJsonObject object = json->object();
                if (object.isEmpty())
                    qWarning() << "Json empty";
                if (object.contains("1. Information") && object["1. Information"].isString())
                {
                    QString information = object["1. Information"].toString();
                    guard->setInfo(information);
                    qWarning() << information;
                }
                if (object.contains("2. Symbol") && object["2. Symbol"].isString())
                {
                    QString symb = object["2. Symbol"].toString();
                    guard->setSymbol(symb);
                    qWarning() << symb;
                }
                if (object.contains("3. Last Refreshed") && object["3. Last Refreshed"].isString())
                {
                    QString dateRef = object["3. Last Refreshed"].toString();
                    guard->setDateRefreshed(dateRef);
                    qWarning() << dateRef;
                }
                if (object.contains("4. Output Size") && object["4. Output Size"].isString())
                {
                    QString outSize = object["4. Output Size"].toString();
                    guard->setOutSize(outSize);
                    qWarning() << outSize;
                }
                if (object.contains("5. Time Zone") && object["5. Time Zone"].isString())
                {
                    QString timeZone = object["5. Time Zone"].toString();
                    guard->setZone(timeZone);
                    qDebug() << timeZone;
                }
                if (object.contains("Time Series (Daily)") && object["Time Series (Daily)"].isString())
                {
                    QString timeSeries = object["Time Series (Daily)"].toString();
                    QStringList openListValue;
                    QStringList highListValue;
                    QStringList lowListValue;
                    QStringList closeListValue;
                    QStringList volumeListValue;
                    for (int index = 0; index < 10; ++index)
                    {
                        openListValue.insert(index, object["open"].toString());
                        highListValue.insert(index, object["high"].toString());
                        lowListValue.insert(index, object["low"].toString());
                        closeListValue.insert(index, object["close"].toString());
                        volumeListValue.insert(index, object["volume"].toString());
                        qWarning() << "Open List " << openListValue;
                        qWarning() << "High List " << highListValue;
                        qWarning() << "Low list " << lowListValue;
                        qWarning() << "Close List " << closeListValue;
                        qWarning() << "Volume List " << volumeListValue;
                        guard->setOpen(openListValue);
                        guard->setHigh(highListValue);
                        guard->setlow(lowListValue);
                        guard->setClose(closeListValue);
                        guard->setVolume(volumeListValue);
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
