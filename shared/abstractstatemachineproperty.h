#ifndef ABSTRACTSTATEMACHINEPROPERTY_H
#define ABSTRACTSTATEMACHINEPROPERTY_H

#include <QObject>
#include <QMap>
#include "commonthings.h"

class AbstractStateMachineProperty : public QObject
{
    Q_OBJECT
public:
    explicit AbstractStateMachineProperty(QObject *parent = nullptr);

    QMap<qint16,QList<GlobalSignal>> prioritizedBuffer;

    void addAGlobalSignal(const GlobalSignal &aGlobalSignal);
    GlobalSignal &takeOutFirstOfMostPrioritizedGlobalSignals();
    GlobalSignal &takeOutLastOfMostPrioritizedGlobalSignals();
    void deleteEmptyListsFromPrioritizedBuffer();
    void clearPrioritizedBuffer();
signals:
    void Out(const GlobalSignal &);
    void requestDirectTransition(const QString &);
    void prioritizedBufferRefilled();
    void aGlobalSignalAdded();
    void ErrorOccurred();
};

#endif // ABSTRACTSTATEMACHINEPROPERTY_H
