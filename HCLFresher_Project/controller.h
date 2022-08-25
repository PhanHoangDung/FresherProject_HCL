#ifndef CONTROLLER_H
#define CONTROLLER_H

#include <object.h>

#include <QString>
#include <QJsonDocument>
#include <QJsonObject>
#include <QJsonArray>
#include <QList>
#include <QFile>
#include <QDebug>
#include <QDir>

class Controller
{
public:
    Controller();

    QByteArray initDataSource();
    void ReadFromFile(const QByteArray &file);

    const QList<Object> &objects() const;

    const QString &dataSource() const;
    void setDataSource(const QString &newDataSource);

private:
    QList<Object> m_object;
    QString m_dataSource;
};

#endif // CONTROLLER_H
