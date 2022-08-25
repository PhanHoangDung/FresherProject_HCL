#include "controller.h"
#include <QFile>
Controller::Controller()
{

}

QByteArray Controller::initDataSource()
{
    QByteArray ini;
        QFile File;
        QByteArray bytedata;
        //Json
        if(m_dataSource == "Json"){
            File.setFileName(":/data.json");
            File.open(QIODevice::ReadOnly | QIODevice::Text);
            bytedata = File.readAll();
            ini = bytedata;

            ReadFromFile(bytedata);
     }
     return ini;
}

void Controller::ReadFromFile(const QByteArray &file)
{
        QList<Object> newObjs;
        QJsonDocument jsonDoc = QJsonDocument::fromJson(file);
        QJsonArray objects = jsonDoc.array();

        qDebug() << objects.size();
        for(int i = 0; i < objects.size(); i++)
        {
            QJsonObject obj = objects[i].toObject();

            QString name = obj["name"].toString();
            QString image = obj["image"].toString();
            QString description = obj["description"].toString();
            QString detail = obj["detail"].toString();

            auto newObj = Object(name, image, description, detail);
            newObjs.append(newObj);
        }

        m_object = newObjs;
}

const QList<Object> &Controller::objects() const
{
    return m_object;
}

const QString &Controller::dataSource() const
{
    return m_dataSource;
}

void Controller::setDataSource(const QString &newDataSource)
{
    m_dataSource = newDataSource;
    initDataSource();
}

