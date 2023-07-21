#include <iostream>
#include <string>

using namespace std;

class Fahrzeug {
  protected:
    string fahrgestellnummer;
  public:
    void setFahrgestellnummer(string fnr) {
      fahrgestellnummer = fnr;
    }

    string getFahrgestellnummer() {
      return fahrgestellnummer;
    }
};

class KFZ : virtual public Fahrzeug{
protected:
    string kennzeichen;
    string fahrgestellnummer;
    int anzahlSitzplaetze;

public:
    KFZ(string kennz, int sitze) : kennzeichen(kennz), anzahlSitzplaetze(sitze) {}

    string getKennzeichen() const {
        return kennzeichen;
    }

    void setKennzeichen(string kennz) {
        kennzeichen = kennz;
    }

    int getAnzahlSitzplaetze() const {
        return anzahlSitzplaetze;
    }

    void setAnzahlSitzplaetze(int sitze) {
        anzahlSitzplaetze = sitze;
    }
};

class elektroFzg : virtual public Fahrzeug {
protected:
    string akkuTyp;
    int akkuLeistung;
    string fahrgestellnummer;

public:
    elektroFzg(string typ, int leistung) : akkuTyp(typ), akkuLeistung(leistung) {}

    string getAkkuTyp() const {
        return akkuTyp;
    }

    void setAkkuTyp(string typ) {
        akkuTyp = typ;
    }

    int getAkkuLeistung() const {
        return akkuLeistung;
    }

    void setAkkuLeistung(int leistung) {
        akkuLeistung = leistung;
    }
};

class elektroKFZ : public KFZ, public elektroFzg {
public:
    elektroKFZ(string kennz, int sitze, string typ, int leistung)
        : KFZ(kennz, sitze), elektroFzg(typ, leistung) {}
};

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
