#ifndef SYSTEMCONTROLLER_H
#define SYSTEMCONTROLLER_H

#include <QObject>

class SystemController : public QObject
{
    Q_OBJECT
    Q_PROPERTY(EnterMenuState enterState READ enterState WRITE setEnterState NOTIFY enterStateChanged)
public:
    explicit SystemController(QObject *parent = nullptr);
    enum EnterMenuState{
        NONE, IN, OUT
    };
    Q_ENUM( EnterMenuState );

    const EnterMenuState &enterState() const;
    void setEnterState(const EnterMenuState &newEnterState);

signals:

    void enterStateChanged();

private:

    EnterMenuState m_enterState;
};

#endif // SYSTEMCONTROLLER_H
