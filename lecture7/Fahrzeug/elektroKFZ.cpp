#include "elektroKFZ.h"

elektroKFZ::elektroKFZ(std::string kennz, int sitze, std::string typ, int leistung)
    : KFZ(kennz, sitze), elektroFzg(typ, leistung) {}
