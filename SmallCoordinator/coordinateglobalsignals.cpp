#include "coordinateglobalsignals.h"

coordinateGlobalSignals::coordinateGlobalSignals(SmallCoordinatorDB *database, QState *parent) :
    QState(parent),
    dbPtr(database)
{
    anIf(SmallCoordinatorDBDbgEn, anTrk("coordinateGlobalSignals Constructed"));
}

void coordinateGlobalSignals::onEntry(QEvent *)
{
    anIf(SmallCoordinatorDBDbgEn, anTrk("coordinateGlobalSignals Entered"));
    if (dbPtr->prioritizedBuffer.size())
    {
        dbPtr->executeGlobalSignals();
        qApp->processEvents();

    }
}

void coordinateGlobalSignals::onExit(QEvent *)
{
    anIf(SmallCoordinatorDBDbgEn, anTrk("Leave coordinateGlobalSignals"));
}

