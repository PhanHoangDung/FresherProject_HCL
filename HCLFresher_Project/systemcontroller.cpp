#include "systemcontroller.h"

SystemController::SystemController(QObject *parent)
    : QObject{parent}
{

}

const SystemController::EnterMenuState &SystemController::enterState() const
{
    return m_enterState;
}

void SystemController::setEnterState(const EnterMenuState &newEnterState)
{
    if (m_enterState == newEnterState)
        return;
    m_enterState = newEnterState;
    emit enterStateChanged();
}
