#include <iostream>
#include "elektroKFZ.h"

using namespace std;

int main() {
    elektroKFZ meinEAuto("ABC123", 4, "Lithium", 5000);
    meinEAuto.setFahrgestellnummer("12345");
    cout << "Kennzeichen: " << meinEAuto.getKennzeichen() << endl;
    cout << "Anzahl Sitzplätze: " << meinEAuto.getAnzahlSitzplaetze() << endl;
    cout << "Akku-Typ: " << meinEAuto.getAkkuTyp() << endl;
    cout << "Akku-Leistung: " << meinEAuto.getAkkuLeistung() << " Wh" << endl;
    cout << "Fahrgestellnummer: " << meinEAuto.getFahrgestellnummer() << endl;

    meinEAuto.setKennzeichen("DEF456");
    meinEAuto.setAnzahlSitzplaetze(2);
    meinEAuto.setAkkuTyp("Blei");
    meinEAuto.setAkkuLeistung(3000);
    meinEAuto.setFahrgestellnummer("54321");

    cout << "Aktualisierte Werte:" << endl;
    cout << "Kennzeichen: " << meinEAuto.getKennzeichen() << endl;
    cout << "Anzahl Sitzplätze: " << meinEAuto.getAnzahlSitzplaetze() << endl;
    cout << "Akku-Typ: " << meinEAuto.getAkkuTyp() << endl;
    cout << "Akku-Leistung: " << meinEAuto.getAkkuLeistung() << " Wh" << endl;
    cout << "Fahrgestellnummer: " << meinEAuto.getFahrgestellnummer() << endl;

    return 0;
}
