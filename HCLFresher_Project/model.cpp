#include "model.h"

Model::Model(QObject *parent)
    : QAbstractListModel{parent}
{

}

int Model::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return m_objects.length();
}

QVariant Model::data(const QModelIndex &index, int role) const
{
    if(!index.isValid())
        return QVariant();

    const Object &item = m_objects[index.row()];

    switch(role){
        case NameRole:
            return item.name();
        case ImageRole:
            return item.image();
        case DescriptionRole:
            return item.description();
        case DetailRole:
            return item.detail();
        default:
            return QVariant();
    }
}

QHash<int, QByteArray> Model::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles[NameRole] = "name";
    roles[ImageRole] = "img";
    roles[DescriptionRole] = "desc";
    roles[DetailRole] = "detail";

    return roles;
}

const Controller &Model::controller() const
{
    return m_controller;
}

void Model::setController(const Controller &newController)
{
    m_controller = newController;
    beginResetModel();
    m_objects = newController.objects();
    endResetModel();
}

