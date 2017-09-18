#include "smallcoordinatordb.h"

SmallCoordinatorDB::SmallCoordinatorDB(QObject *parent) : QObject(parent)
{
    anIf(SmallCoordinatorDBDbgEn, anTrk("Object Constructed"));
}
