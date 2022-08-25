#ifndef MODEL_H
#define MODEL_H

#include "object.h"
#include <QAbstractListModel>
#include "controller.h"

class Model : public QAbstractListModel
{
    Q_OBJECT;
public:
    Model(QObject *parent = nullptr);

    enum ObjectEnum{
        NameRole,
        ImageRole,
        DescriptionRole,
        DetailRole
    };

    int rowCount(const QModelIndex &parent = QModelIndex() ) const;
    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const;

    const Controller &controller() const;
    void setController(const Controller &newController);

protected:
    QHash<int, QByteArray> roleNames() const;
private:
    QList<Object> m_objects;
    Controller m_controller;
};

#endif // MODEL_H
