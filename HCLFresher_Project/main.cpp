#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <controller.h>
#include <model.h>

#include <QQmlContext>
#include <QFile>
#include <QDomDocument>
#include <QDomElement>
#include <QDebug>

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    Controller controller;
    controller.setDataSource("Json");

    Model model;
    model.setController(controller);

    QQmlContext *rootCtx = engine.rootContext();
    rootCtx->setContextProperty("_model",&model);

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
