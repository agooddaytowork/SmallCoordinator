#ifndef SMALLCOORDINATOR_H
#define SMALLCOORDINATOR_H

#define SmallCoordinatorDbgEn 1

#include <QCoreApplication>
#include <QObject>
#include <QMap>
#include <QHash>
#include <QList>
#include <QString>
#include <QVariant>
#include "anlogger.h"

class SmallCoordinator : public QObject
{
    Q_OBJECT
public:
    explicit SmallCoordinator(QObject *parent = nullptr);
    typedef struct
    {
        QVariant Type;
        QVariant Data;
        QString Key = "NULL";
        QList<QString> DstStrs;
        quint8 Priority = 0;
    } GlobalSignal;
signals:
    void ToUHV2Worker(GlobalSignal *);
    void ToUHV4Worker(GlobalSignal *);
    void ToCanBusWorker(GlobalSignal *);
    void TopiLocalDBWorker(GlobalSignal *);
    void ToUHV2PVICollector(GlobalSignal *);
    void ToUHV4PVICollector(GlobalSignal *);
    void ToCanCollector(GlobalSignal *);
public slots:
    void In(GlobalSignal * aSignal);
    void start();
    void stop();
private:
    void work();

    QMap<quint8,QList<QString>*> GlobalSignalKeysSortedByPriority;
    QHash<QString,GlobalSignal*> GlobalSignalsByGlobalSignalKey;
    bool isRunning = false;
    QObject * UHV2WorkerObj;
    QObject * UHV4WorkerObj;
    QObject * CanBusWorkerObj;
    QObject * piLocalDBWorkerObj;
    QObject * UHV2PVICollectorObj;
    QObject * UHV4PVICollectorObj;
    QObject * CanCollectorObj;
    GlobalSignal * currentSignal;
    QString tmpStr;
    QString tmpStr1;
};

#endif // SMALLCOORDINATOR_H
