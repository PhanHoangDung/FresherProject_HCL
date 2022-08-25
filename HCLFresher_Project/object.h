#ifndef OBJECT_H
#define OBJECT_H

#include <QString>

class Object
{
public:
    Object();
    explicit Object(const QString &name, const QString &image, const QString &description, const QString &detail);
    const QString &name() const;
    void setName(const QString &newName);

    const QString &image() const;
    void setImage(const QString &newImage);

    const QString &description() const;
    void setDescription(const QString &newDescription);

    const QString &detail() const;
    void setDetail(const QString &newDetail);

private:
    QString m_name;
    QString m_image;
    QString m_description;
    QString m_detail;
};

#endif // OBJECT_H
