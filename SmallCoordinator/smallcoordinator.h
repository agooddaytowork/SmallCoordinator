#ifndef SMALLCOORDINATOR_H
#define SMALLCOORDINATOR_H

#define SmallCoordinatorDbgEn 1

#include <QStateMachine>
#include "smallcoordinatordb.h"

class SmallCoordinator : public QStateMachine
{
public:
    explicit SmallCoordinator(QObject *parent = nullptr);
signals:
    void ToUHV2Worker(const GlobalSignal &);
    void ToUHV4Worker(const GlobalSignal &);
    void ToUHV2PVICollector(const GlobalSignal &);
    void ToUHV4PVICollector(const GlobalSignal &);
    void ToPiLocalDBWorker(const GlobalSignal &);
public slots:
    void FromUHV2Worker(const GlobalSignal &aGlobalSignal);
    void FromUHV4Worker(const GlobalSignal &aGlobalSignal);
    void FromUHV2PVICollector(const GlobalSignal &aGlobalSignal);
    void FromUHV4PVICollector(const GlobalSignal &aGlobalSignal);
    void FrompiLocalDBWorker(const GlobalSignal &aGlobalSignal);
private:
    SmallCoordinatorDB * CurrentDb = Q_NULLPTR;
};

#endif // SMALLCOORDINATOR_H
