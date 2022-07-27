#include "screencontroller.h"

ScreenController::ScreenController(QObject *parent)
    : QObject{parent}
{

}

QString ScreenController::title()
{
    return m_title;
}

void ScreenController::setTitle(QString newTitle)
{
    if (m_title == newTitle)
        return;
    m_title = newTitle;
    emit titleChanged();
}

QString ScreenController::getTitle(){
    return m_title;
}
