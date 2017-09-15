#include "wait4errorhandler.h"

wait4ErrorHandler::wait4ErrorHandler(piLocalDBWorkerVarSet *VarSet) :
    VarSetPtr(VarSet)
{
    emitErrorTimer.setParent(this);
    emitErrorTimer.setInterval(5000);
    QObject::connect(&emitErrorTimer, &QTimer::timeout, VarSet, &piLocalDBWorkerVarSet::emitErrorGlobalSignal);
    anIf(piLocalDBWorkerVarSetDbgEn, anTrk("wait4ErrorHandler Constructed"));
}

void wait4ErrorHandler::onEntry(QEvent *)
{
    anIf(piLocalDBWorkerVarSetDbgEn, anTrk("Enter wait4ErrorHandler"));
}

void wait4ErrorHandler::onExit(QEvent *)
{
    anIf(piLocalDBWorkerVarSetDbgEn, anTrk("Leave wait4ErrorHandler"));
    VarSetPtr->clearError();
}
