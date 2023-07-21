#ifndef ELEKTROKFZ_H
#define ELEKTROKFZ_H

#include "KFZ.h"
#include "elektroFzg.h"

class elektroKFZ : public KFZ, public elektroFzg {
public:
    elektroKFZ(std::string kennz, int sitze, std::string typ, int leistung);
};

#endif // ELEKTROKFZ_H
