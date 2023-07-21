#include "KFZ.h"

KFZ::KFZ(std::string kennz, int sitze) : kennzeichen(kennz), anzahlSitzplaetze(sitze) {}

std::string KFZ::getKennzeichen() const {
    return kennzeichen;
}

void KFZ::setKennzeichen(std::string kennz) {
    kennzeichen = kennz;
}

int KFZ::getAnzahlSitzplaetze() const {
    return anzahlSitzplaetze;
}

void KFZ::setAnzahlSitzplaetze(int sitze) {
    anzahlSitzplaetze = sitze;
}
