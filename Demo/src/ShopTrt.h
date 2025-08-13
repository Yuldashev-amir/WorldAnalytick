#ifndef SHOPTRT_H
#define SHOPTRT_H

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
class ShopTrt : public QObject
{
    Q_OBJECT
    QML_ELEMENT
    Q_PROPERTY(QUrl urlTskoLlp READ urlTskoLlp WRITE setUrlTskoLlp NOTIFY urlTskoLlpChanged)
    Q_PROPERTY(QString info READ info WRITE setInfo NOTIFY infoChanged)
    Q_PROPERTY(QString symbol READ symbol WRITE setSymbol NOTIFY symbolChanged)
    Q_PROPERTY(QString dateRefreshed READ dateRefreshed WRITE setDateRefreshed NOTIFY dateRefreshedChanged)
    Q_PROPERTY(QString outSize READ outSize WRITE setOutSize NOTIFY outSizeChanged)
    Q_PROPERTY(QString zone READ zone WRITE setZone NOTIFY zoneChanged)
    Q_PROPERTY(QString date READ date WRITE setDate NOTIFY dateChanged FINAL)
    Q_PROPERTY(QVariantList open READ open WRITE setOpen NOTIFY openChanged)
    Q_PROPERTY(QVariantList high READ high WRITE setHigh NOTIFY highChanged)
    Q_PROPERTY(QVariantList low READ low WRITE setlow NOTIFY lowChanged)
    Q_PROPERTY(QVariantList close READ close WRITE setClose NOTIFY closeChanged)
    Q_PROPERTY(QVariantList volume READ volume WRITE setVolume NOTIFY volumeChanged)
public:
    explicit ShopTrt(QObject * parent = nullptr);

    Q_INVOKABLE void loadingShopTrt();

    QUrl urlTskoLlp() const;
    void setUrlTskoLlp(const QUrl &newUrlTskoLlp);

    QString info() const;
    void setInfo(const QString &newInfo);

    QString symbol() const;
    void setSymbol(const QString &newSymbol);

    QString dateRefreshed() const;
    void setDateRefreshed(const QString &newDateRefreshed);

    QString outSize() const;
    void setOutSize(const QString &newOutSize);

    QString zone() const;
    void setZone(const QString &newZone);

    QString date() const;
    void setDate(const QString &newDate);

    QVariantList open() const;
    void setOpen(const QVariantList &newOpen);

    QVariantList high() const;
    void setHigh(const QVariantList &newHigh);

    QVariantList low() const;
    void setlow(const QVariantList &newLow);

    QVariantList close() const;
    void setClose(const QVariantList &newClose);

    QVariantList volume() const;
    void setVolume(const QVariantList &newVolume);

signals:
    void urlTskoLlpChanged();

    void infoChanged();

    void symbolChanged();

    void dateRefreshedChanged();

    void outSizeChanged();

    void zoneChanged();

    void dateChanged();

    void openChanged();

    void highChanged();

    void lowChanged();

    void closeChanged();

    void volumeChanged();

    void loadingNewData();
private:
    QNetworkAccessManager network;
    std::unique_ptr<QRestAccessManager> manager;
    std::unique_ptr<QNetworkRequestFactory> api;
    QUrl m_urlTskoLlp = QUrl("https://www.alphavantage.co/query?function=TIME_SERIES_DAILY&symbol=SHOP.TRT&outputsize=full&apikey=demo");
    QString m_info;
    QString m_symbol;
    QString m_dateRefreshed;
    QString m_outSize;
    QString m_zone;
    QString m_date;
    QVariantList m_open;
    QVariantList m_high;
    QVariantList m_low;
    QVariantList m_close;
    QVariantList m_volume;
};

#endif // SHOPTRT_H
