#ifndef SMALLCOORDINATORDB_H
#define SMALLCOORDINATORDB_H

#define SmallCoordinatorDBDbgEn 1

#include <QObject>
#include <QVariant>
#include "anlogger.h"

class SmallCoordinatorDB : public QObject
{
    Q_OBJECT
public:
    explicit SmallCoordinatorDB(QObject *parent = nullptr);
    typedef struct
    {
        QVariant Type;
        QVariant Data;
        QString Key = "NULL";
        QList<QString> DstStrs;
        quint8 Priority = 0;
    } GlobalSignal;
signals:

public slots:
};
Q_DECLARE_METATYPE(SmallCoordinatorDB::GlobalSignal)
#endif // SMALLCOORDINATORDB_H
