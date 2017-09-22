#include "wait4errorhandler4pilocaldbworker.h"

wait4ErrorHandler4piLocalDBWorker::wait4ErrorHandler4piLocalDBWorker(piLocalDBWorkerVarSet *VarSet) :
    VarSetPtr(VarSet)
{
    emitErrorTimer.setParent(this);
    emitErrorTimer.setInterval(5000);
    QObject::connect(&emitErrorTimer, &QTimer::timeout, VarSet, &piLocalDBWorkerVarSet::emitErrorGlobalSignal);
    anIf(piLocalDBWorkerVarSetDbgEn, anTrk("wait4ErrorHandler4piLocalDBWorker Constructed"));
}

void wait4ErrorHandler4piLocalDBWorker::onEntry(QEvent *)
{
    anIf(piLocalDBWorkerVarSetDbgEn, anTrk("Enter wait4ErrorHandler4piLocalDBWorker"));
}

void wait4ErrorHandler4piLocalDBWorker::onExit(QEvent *)
{
    anIf(piLocalDBWorkerVarSetDbgEn, anTrk("Leave wait4ErrorHandler4piLocalDBWorker"));
    VarSetPtr->clearError();
}