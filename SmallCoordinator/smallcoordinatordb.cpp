#include "smallcoordinatordb.h"

SmallCoordinatorDB::SmallCoordinatorDB(QObject *parent) : QObject(parent)
{
    anIf(SmallCoordinatorDBDbgEn, anTrk("Object Constructed"));
}

void SmallCoordinatorDB::initialize()
{

}

void SmallCoordinatorDB::dispose()
{
    clearPrioritizedBuffer();
    clearError();
}

void SmallCoordinatorDB::setError(const SmallCoordinatorDB::Error &anErrorType, const QString &anErrorInfo)
{
    if (anErrorType!=NoError)
    {
        anIf(SerialPortWorkerPropertyDbgEn, anWarn("Error Occurred !"));
        ErrorType = anErrorType;
        ErrorInfo = anErrorInfo;
        emit ErrorOccurred();
    }
}

void SmallCoordinatorDB::clearError()
{
    anIf(SerialPortWorkerPropertyDbgEn && (ErrorType!=NoError), anInfo("Clear Error !"));
    ErrorType = NoError;
    ErrorInfo.clear();
}

void SmallCoordinatorDB::addOneGlobalSignal(const GlobalSignal &aGlobalSignal)
{
    if (prioritizedBuffer.contains(aGlobalSignal.Priority))
    {
        prioritizedBuffer[aGlobalSignal.Priority].append(aGlobalSignal);
    }
    else
    {
        prioritizedBuffer.insert(aGlobalSignal.Priority, QList<GlobalSignal>({aGlobalSignal}));
    }
    if ((prioritizedBuffer.size() == 1) && (prioritizedBuffer.first().size() == 1))
    {
        emit firstGlobalSignalAdded();
    }
    else
    {
        emit oneGlobalSignalAdded();
    }
}

GlobalSignal &SmallCoordinatorDB::takeOutFirstOfMostPrioritizedGlobalSignals()
{
    GlobalSignal &tmpReturn = prioritizedBuffer.last().first();
    prioritizedBuffer.last().removeFirst();
    clearEmptyList();
    return tmpReturn;
}

GlobalSignal &SmallCoordinatorDB::takeOutLastOfMostPrioritizedGlobalSignals()
{
    GlobalSignal &tmpReturn = prioritizedBuffer.last().last();
    prioritizedBuffer.last().removeLast();
    clearEmptyList();
    return tmpReturn;
}

void SmallCoordinatorDB::clearEmptyList()
{
    while (prioritizedBuffer.size())
    {
        if (prioritizedBuffer.last()->size())
            break;
        else
        {
            prioritizedBuffer.remove(prioritizedBuffer.lastKey());
        }
    }
}

void SmallCoordinatorDB::clearCache()
{
    currentGlobalSignal.Data.clear();
    currentGlobalSignal.Type.clear();
    currentGlobalSignal.DstStrs.clear();
    currentGlobalSignal.Key.clear();
    currentGlobalSignal.Priority = 0;
    currentGlobalSignal.SignalPriority = 0;
}

void SmallCoordinatorDB::clearPrioritizedBuffer()
{
    if (prioritizedBuffer.size())
        prioritizedBuffer.clear();
}

void SmallCoordinatorDB::executeGlobalSignals()
{
    clearCache();
    if (prioritizedBuffer.size())
    {
        currentGlobalSignal = prioritizedBuffer.last().first();
        if (currentGlobalSignal.DstStrs.size())
        {
            currentDestination = currentGlobalSignal.DstStrs.takeFirst();
            if (currentDestination == piLocalDBWorkerObjName)
            {
                emit ToPiLocalDBWorker(currentGlobalSignal);
            }
            else if (currentDestination == UHV2WorkerObjName)
            {
                emit ToUHV2Worker(currentGlobalSignal);
            }
            else if (currentDestination == UHV4WorkerObjName)
            {
                emit ToUHV4Worker(currentGlobalSignal);
            }
            else if (currentDestination == UHV2PVICollectorObjName)
            {
                emit ToUHV2PVICollector(currentGlobalSignal);
            }
            else if (currentDestination == UHV4PVICollectorObjName)
            {
                emit ToUHV4PVICollector(currentGlobalSignal);
            }
            else if (currentDestination == SmallCoordinatorObjName)
            {
                if (currentGlobalSignal.Type.typeName() == QStringLiteral("SmallCoordinatorDB::Data"))
                {
                    switch (currentGlobalSignal.Type.toInt()) {
                    case SmallCoordinatorDB::pauseAllCollectors:
                    {

                        break;
                    }
                    default:
                        break;
                    }
                }
            }
        }
        takeOutFirstOfMostPrioritizedGlobalSignals();
    }
}






const QMetaEnum SmallCoordinatorDB::DataMetaEnum = QMetaEnum::fromType<SmallCoordinatorDB::Data>();
const QMetaEnum SmallCoordinatorDB::ErrorMetaEnum = QMetaEnum::fromType<SmallCoordinatorDB::Error>();
const QMetaEnum SmallCoordinatorDB::WarningMetaEnum = QMetaEnum::fromType<SmallCoordinatorDB::Warning>();
const QMetaEnum SmallCoordinatorDB::NotificationMetaEnum = QMetaEnum::fromType<SmallCoordinatorDB::Notification>();
