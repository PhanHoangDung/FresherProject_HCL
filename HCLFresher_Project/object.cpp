#include "object.h"

Object::Object()
{

}

Object::Object(const QString &name, const QString &image, const QString &description, const QString &detail)
{
    m_name = name;
    m_image = image;
    m_description = description;
    m_detail = detail;
}

const QString &Object::name() const
{
    return m_name;
}

void Object::setName(const QString &newName)
{
    m_name = newName;
}

const QString &Object::image() const
{
    return m_image;
}

void Object::setImage(const QString &newImage)
{
    m_image = newImage;
}

const QString &Object::description() const
{
    return m_description;
}

void Object::setDescription(const QString &newDescription)
{
    m_description = newDescription;
}

const QString &Object::detail() const
{
    return m_detail;
}

void Object::setDetail(const QString &newDetail)
{
    m_detail = newDetail;
}
