#ifndef WAIT4ERRORHANDLER_H
#define WAIT4ERRORHANDLER_H

#include <QState>
#include <QTimer>
#include "pilocaldbworkervarset.h"

class wait4ErrorHandler : public QState
{
public:
    wait4ErrorHandler(piLocalDBWorkerVarSet * VarSet);
protected:
    void onEntry(QEvent *) override;
    void onExit(QEvent *) override;
private:
    QTimer emitErrorTimer;
    piLocalDBWorkerVarSet * VarSetPtr;

};

#endif // WAIT4ERRORHANDLER_H
