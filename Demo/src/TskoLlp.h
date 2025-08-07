#ifndef TSKOLLP_H
#define TSKOLLP_H

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
class TskoLlp : public QObject
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
    Q_PROPERTY(QStringList open READ open WRITE setOpen NOTIFY openChanged)
    Q_PROPERTY(QStringList high READ high WRITE setHigh NOTIFY highChanged)
    Q_PROPERTY(QStringList low READ low WRITE setlow NOTIFY lowChanged)
    Q_PROPERTY(QStringList close READ close WRITE setClose NOTIFY closeChanged)
    Q_PROPERTY(QStringList volume READ volume WRITE setVolume NOTIFY volumeChanged)
public:
    explicit TskoLlp(QObject * parent = nullptr);
    Q_INVOKABLE void loadingTskoLlp();
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

    QStringList open() const;
    void setOpen(const QStringList &newOpen);

    QStringList high() const;
    void setHigh(const QStringList &newHigh);

    QStringList low() const;
    void setlow(const QStringList &newLow);

    QStringList close() const;
    void setClose(const QStringList &newClose);

    QStringList volume() const;
    void setVolume(const QStringList &newVolume);

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

private:
    QNetworkAccessManager network;
    std::unique_ptr<QRestAccessManager> manager;
    std::unique_ptr<QNetworkRequestFactory> api;
    QUrl m_urlTskoLlp = QUrl("https://www.alphavantage.co/query?function=TIME_SERIES_DAILY&symbol=TSCO.LON&outputsize=full&apikey=demo");
    QString m_info;
    QString m_symbol;
    QString m_dateRefreshed;
    QString m_outSize;
    QString m_zone;
    QString m_date;
    QStringList m_open;
    QStringList m_high;
    QStringList m_low;
    QStringList m_close;
    QStringList m_volume;
};

#endif // TSKOLLP_H
