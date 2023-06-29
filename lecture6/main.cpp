#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>
#include <map>
#include <utility>

// Klasse für Verträge
class Vertrag {
public:
    std::string Vertragsnummer;
    std::string Vertragsgegenstand;
    std::string VertragVerlängernUm;
    std::string VertragKündigungsfrist;
    std::string VPeMail;
};

// Klasse für Kunden
class Kunde {
public:
    std::string PIN;
    std::string cagsbcid_m;
    std::string Name;
    std::string Vorname;
    std::string Straße;
    std::string Hausnr;
    std::string PLZ;
    std::string Ort;
    std::string Vertragsbeginn;
    std::string Vertragsende;
    std::string Vertragsstatus;
    std::string VertragsstatusBez;
    std::vector<std::map<std::string, Vertrag>> Vertragsliste;  
    std::string VPeMail;
};

void erstelleExcelListe(const std::vector<Kunde>& kunden, const std::string& stadt, const std::string& vertragsart) {
    std::ofstream file("Kundenliste.csv");  // Name der Ausgabedatei anpassen

    if (!file) {
        std::cout << "Fehler beim Erstellen der Datei." << std::endl;
        return;
    }

    // Header-Zeile schreiben
    file << "PIN;Name;Vorname;E-Mail;Aktive Vertragsnummern" << std::endl;

    for (const Kunde& kunde : kunden) {
        // Stadt prüfen (falls eingeschränkt)
        if (!stadt.empty() && kunde.Ort != stadt) {
            continue;
        }

        std::string aktiveVertragsnummern;

        // Verträge des Kunden durchgehen und aktive Vertragsnummern sammeln (falls eingeschränkt auf Vertragsart)
        for (const std::map<std::string, Vertrag>& vertragsMap : kunde.Vertragsliste) {
            for (const auto& pair : vertragsMap) {
                const Vertrag& vertrag = pair.second;
                if (vertragsart.empty() || (vertragsart == "W" && vertrag.Vertragsgegenstand.find("Wasser") != std::string::npos) ||
                    (vertragsart == "AW" && vertrag.Vertragsgegenstand.find("Abwasser") != std::string::npos)) {
                    if (!aktiveVertragsnummern.empty()) {
                        aktiveVertragsnummern += ",";
                    }
                    aktiveVertragsnummern += vertrag.Vertragsnummer;
                }
            }
        }

        // Kundeninformationen und aktive Vertragsnummern in die Datei schreiben
        file << kunde.PIN << ";" << kunde.Name << ";" << kunde.Vorname << ";" << kunde.VPeMail << ";" << aktiveVertragsnummern << std::endl;
    }


    std::cout << "Excel-Liste wurde erfolgreich erstellt." << std::endl;
}

int main() {
    std::ifstream file("data.csv");  

    if (!file) {
        std::cout << "Fehler beim Öffnen der Datei." << std::endl;
        return 1;
    }

    std::string line;
    std::vector<Kunde> kunden;

    std::getline(file, line);

    while (std::getline(file, line)) {
        std::istringstream iss(line);
        std::string token;
        std::vector<std::string> tokens;

        while (std::getline(iss, token, ';')) {
            tokens.push_back(token);
        }

        Kunde kunde;
        kunde.PIN = tokens[0];
        kunde.cagsbcid_m = tokens[1];
        kunde.Name = tokens[2];
        kunde.Vorname = tokens[3];
        kunde.Straße = tokens[4];
        kunde.Hausnr = tokens[5];
        kunde.PLZ = tokens[6];
        kunde.Ort = tokens[7];
        kunde.Vertragsbeginn = tokens[8];
        kunde.Vertragsende = tokens[9];
        kunde.Vertragsstatus = tokens[10];
        kunde.VertragsstatusBez = tokens[11];
        kunde.VPeMail = tokens[16];

        Vertrag vertrag;
        vertrag.Vertragsnummer = tokens[12];
        vertrag.Vertragsgegenstand = tokens[13];
        vertrag.VertragVerlängernUm = tokens[14];
        vertrag.VertragKündigungsfrist = tokens[15];
        vertrag.VPeMail = tokens[16];

        std::map<std::string, Vertrag> vertragsMap;
        vertragsMap[vertrag.Vertragsnummer] = vertrag;
        kunde.Vertragsliste.push_back(vertragsMap);

        kunden.push_back(kunde);
    }

    for (const Kunde& kunde : kunden) {
        std::cout << "Kunde: " << kunde.Name << " " << kunde.Vorname << std::endl;

        for (const std::map<std::string, Vertrag>& vertragsMap : kunde.Vertragsliste) {
            for (const auto& pair : vertragsMap) {
                std::cout << "Vertragsnummer: " << pair.first << std::endl;

                const Vertrag& vertrag = pair.second;
                std::cout << "Vertragsgegenstand: " << vertrag.Vertragsgegenstand << std::endl;
                std::cout << "Vertrag Verlängern um: " << vertrag.VertragVerlängernUm << std::endl;
                std::cout << "Vertrag Kündigungsfrist: " << vertrag.VertragKündigungsfrist << std::endl;

                std::cout << std::endl;
            }
        }

        std::cout << std::endl;
    }

    std::string ort;
    std::string vertragsart;
    std::cout << "In welchem Ort? " << std::endl;
    std::cin >> ort;
    std::cout << "Welche Vetragsart? " << std::endl;
    std::cin >> vertragsart;
    erstelleExcelListe(kunden, ort, vertragsart);
    return 0;
}

