#ifndef DIRECTTRANSITION_H
#define DIRECTTRANSITION_H

#include <QSignalTransition>
#include <QAbstractState>
#include <QStateMachine>
#include "pilocaldbworkervarset.h"

class directTransition : public QSignalTransition
{
public:
    directTransition(piLocalDBWorkerVarSet * database, QAbstractState * destinationState);
protected:
    bool eventTest(QEvent *e) override;
};

#endif // DIRECTTRANSITION_H
