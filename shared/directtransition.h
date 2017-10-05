#ifndef DIRECTTRANSITION_H
#define DIRECTTRANSITION_H

#include <QSignalTransition>

class directTransition : public QSignalTransition
{
public:
    directTransition(const QObject &aSender, const char &aSignal, QAbstractState *aTarget);
protected:
    bool eventTest(QEvent *e) override;
};

#endif // DIRECTTRANSITION_H
