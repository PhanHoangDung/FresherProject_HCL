#ifndef SCREENCONTROLLER_H
#define SCREENCONTROLLER_H

#include <QObject>
#include <QString>

class ScreenController : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString title READ title WRITE setTitle NOTIFY titleChanged)
public:
    explicit ScreenController(QObject *parent = nullptr);

    Q_INVOKABLE QString getTitle();

    QString title();

public slots:
    void setTitle(QString);

signals:
    void titleChanged();
private:
    QString m_title;
};

#endif // SCREENCONTROLLER_H
