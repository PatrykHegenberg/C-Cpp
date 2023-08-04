#let boxed(term) = block(
 fill: luma(230),
 inset: 8pt,
 radius: 4pt,
 term
)
= Referenzen vs. Pointer
In C++ gibt es zwei Möglichkeiten, auf Speicheradressen von Variablen zuzugreifen: Referenzen und Zeiger (Pointer). Beide Mechanismen ermöglichen es, mit Adressen zu arbeiten und auf dieselbe Speicherstelle wie eine andere Variable zuzugreifen. Jedoch haben sie unterschiedliche Eigenschaften und Verwendungszwecke.
== Referenzen:
Eine Referenz ist ein Alias oder eine alternative Bezeichnung für eine bereits existierende Variable.
Sie wird mit dem Ampersand-Operator (&) vor der Variablen deklariert, die sie referenzieren soll.
Eine Referenz muss bei der Initialisierung gleich einer anderen existierenden Variablen gesetzt werden und kann nicht später auf eine andere Variable verweisen.
Referenzen können nicht null sein und müssen immer eine gültige Referenz auf eine existierende Variable sein.
Änderungen an der Referenz wirken sich direkt auf die zugrunde liegende Variable aus, da sie dieselbe Speicheradresse teilen.

Beispiel:
#boxed(```cpp
int original = 42;
int& reference = original; // 'reference' ist jetzt eine Referenz auf 'original'

reference = 73; // Ändert den Wert von 'original' ebenfalls auf 73

std::cout << original; // Ausgabe: 73
```)
== Pointer:
Ein Zeiger (Pointer) ist eine Variable, die die Adresse einer anderen Variablen speichern kann.
Ein Zeiger wird mit einem Stern (`*`) vor dem Namen deklariert und mit der Adresse der Variablen initialisiert, auf die er zeigen soll.
Ein Pointer kann später auf eine andere Variable zeigen oder auf nullptr, um auf keine Variable zu verweisen.
Pointer können arithmetische Operationen durchführen, um auf verschiedene Elemente eines Arrays oder auf den nächsten Speicherbereich zu zeigen.
Änderungen am Pointer wirken sich nicht direkt auf die zugrunde liegende Variable aus, sondern nur indirekt, wenn der Pointer dazu verwendet wird, den Wert der Variablen zu ändern.

Beispiel:
#boxed(```cpp
int value = 42;
int* pointer = &value; // 'pointer' zeigt jetzt auf 'value'

*pointer = 73; // Ändert den Wert von 'value' auf 73

std::cout << value; // Ausgabe: 73
```)
== Wann Referenzen oder Pointer verwenden?
Referenzen sind nützlich, wenn eine Alternative zu einem bestehenden Namen für eine Variable benötigt wird und wenn sichergestellt werden muss, dass die Referenz immer gültig ist.
Zeiger werden verwendet, wenn eine Variable möglicherweise auf nichts (null) zeigen soll oder wenn die Speicheradresse während der Laufzeit geändert werden muss.

In der Regel sind Referenzen etwas einfacher zu verwenden und sicherer, da sie nicht null sein können. Zeiger sind jedoch leistungsfähiger und bieten mehr Flexibilität bei der Speichersteuerung. Die Wahl zwischen Referenzen und Zeigern hängt von den spezifischen Anforderungen und dem gewünschten Verhalten im Programm ab.
= Referenzen
In C++ ist eine Referenz eine alternative Bezeichnung für eine bereits existierende Variable. Es ermöglicht, eine Variable mit einem anderen Namen zu versehen, über den wir auf denselben Speicherbereich wie die ursprüngliche Variable zugreifen können. Referenzen bieten eine bequeme Möglichkeit, mit Variablen zu arbeiten, ohne ihre Speicheradresse direkt verwenden zu müssen.
== Deklaration von Referenzen:
Eine Referenz wird mit dem Ampersand-Operator (&) vor der Variablen deklariert, die sie referenzieren soll. Die Syntax lautet: Datentyp &Referenzname = Variablenname;
== Eigenschaften von Referenzen:
Referenzen müssen bei der Deklaration initialisiert werden und können nicht später auf eine andere Variable verweisen.
Eine Referenz kann nicht null sein und muss immer eine gültige Referenz auf eine existierende Variable sein.
Änderungen an der Referenz wirken sich direkt auf die zugrunde liegende Variable aus, da beide dieselbe Speicheradresse teilen.
Referenzen bieten eine einfachere und intuitivere Syntax als Zeiger und werden oft verwendet, um Funktionen zu erstellen, die Werte verändern sollen.

Beispiel:
#boxed(```cpp
int original = 42;
int& reference = original; // 'reference' ist jetzt eine Referenz auf 'original'

reference = 73; // Ändert den Wert von 'original' ebenfalls auf 73

std::cout << original; // Ausgabe: 73
```)
In diesem Beispiel wird eine Referenz namens reference erstellt, die auf die Variable original zeigt. Wenn wir den Wert der Referenz reference ändern, wird auch der Wert der ursprünglichen Variable original geändert, da beide denselben Speicherplatz teilen.
== Verwendung von Referenzen:
Referenzen sind besonders nützlich, wenn Funktionen Werte ändern sollen. Anstatt eine Funktion mit Zeigern oder Rückgabewerten zu verwenden, können Referenzen verwendet werden, um die Parameter direkt zu ändern.
#boxed(```cpp
void increment(int& value) {
    value++;
}

int number = 5;
increment(number);
std::cout << number; // Ausgabe: 6
```)
In diesem Beispiel wird die Funktion increment mit einer Referenz auf number aufgerufen. Die Funktion erhöht den Wert der Referenz, und dadurch wird der Wert von number im Hauptprogramm ebenfalls erhöht.

Referenzen sind eine leistungsstarke und sichere Möglichkeit, mit Variablen zu arbeiten und sind in vielen Situationen eine bevorzugte Alternative zu Zeigern. Es ist jedoch wichtig, Referenzen sorgfältig zu verwenden, um unerwünschte Seiteneffekte zu vermeiden.
= Funktionen in C++
== Allgemeines zu Funktionen in C++:
In C++ sind Funktionen eigenständige Codeblöcke, die eine bestimmte Aufgabe erfüllen. Sie helfen, den Code modular und wiederverwendbar zu gestalten. Funktionen ermöglichen die Aufteilung eines großen Problems in kleinere, leichter verständliche Teile, wodurch die Lesbarkeit und Wartbarkeit des Codes verbessert werden. Jede Funktion hat einen eindeutigen Namen, eine Rückgabetyp und kann eine Liste von Parametern enthalten, die von der aufrufenden Stelle an die Funktion übergeben werden.
== Ähnlichkeiten zu Java:
In C++ und Java sind Funktionen grundlegende Bausteine zur Strukturierung von Code und zur Wiederverwendbarkeit von Logik. Sowohl C++ als auch Java unterstützen das Konzept von Funktionen, die eine Reihe von Anweisungen ausführen können und optional Rückgabewerte haben.
== Deklaration von Funktionen:
Eine Funktion kann in C++ deklariert werden, indem der Funktionsprototyp angegeben wird. Der Funktionsprototyp enthält den Funktionsnamen, die Parameterliste und den Rückgabetyp der Funktion. Die Deklaration erfolgt in der Regel in einem Header-File (.h), während die Definition des Funktionscodes in einer Quellcode-Datei (.cpp) erfolgt.
#boxed(```cpp
// Deklaration der Funktion
int add(int a, int b);
```)
== Definition von Funktionen:
Die Definition einer Funktion enthält den tatsächlichen Funktionscode. Sie gibt an, was die Funktion tun soll, wenn sie aufgerufen wird.
#boxed(```cpp
// Definition der Funktion
int add(int a, int b) {
    return a + b;
}
```)
== Deklaration vs. Definition:
Die Deklaration einer Funktion gibt lediglich ihren Prototyp an, während die Definition den tatsächlichen Funktionscode enthält. Die Deklaration kann in einem Header-File erfolgen, das in mehreren Quellcode-Dateien inkludiert wird, während die Definition in genau einer Quellcode-Datei vorhanden sein muss.
== Call-by-Value:
Call-by-Value ist eine Methode, bei der die Werte der Argumente an eine Funktion übergeben werden. Das bedeutet, dass die Funktion Kopien der Argumente erhält und Änderungen an den Parametern keine Auswirkungen auf die Originalvariablen haben.
#boxed(```cpp
void modifyValue(int x) {
    x = x * 2; // Ändert nur die lokale Kopie von x
}
```)
== Call-by-Reference:
Call-by-Reference ist eine Methode, bei der die Adressen der Argumente an eine Funktion übergeben werden. Dadurch wird die Originalvariable selbst an die Funktion übergeben, und Änderungen an den Parametern wirken sich direkt auf die Originalvariablen aus.
#boxed(```cpp
void modifyValue(int& x) {
    x = x * 2; // Ändert die Originalvariable von x
}
```)
== Call-by-Value vs. Call-by-Reference:
Call-by-Value wird verwendet, wenn die Funktion die Originalvariablen nicht ändern soll oder wenn unerwartete Seiteneffekte vermieden werden sollen. Call-by-Reference wird verwendet, wenn die Funktion die Originalvariablen ändern soll oder um effizienten Code zu schreiben, da keine Kopien der Argumente erstellt werden müssen.
== Überladen von Funktionen in C++
Das Überladen von Funktionen in C++ ermöglicht es, mehrere Funktionen desselben Namens zu definieren, aber mit unterschiedlichen Parameterlisten. Dadurch kann eine Funktion verschiedene Argumenttypen oder eine unterschiedliche Anzahl von Argumenten verarbeiten, abhängig von den Anforderungen des Aufrufs. Der Compiler wählt die passende Funktion anhand der gegebenen Argumente aus.

Beispiel für die Überladung einer Funktion:
#boxed(```cpp
#include <iostream>

// Funktion zur Addition zweier ganzer Zahlen
int add(int a, int b) {
    return a + b;
}

// Funktion zur Addition von zwei Gleitkommazahlen
double add(double a, double b) {
    return a + b;
}

// Funktion zur Verkettung von zwei Zeichenketten
std::string add(const std::string& str1, const std::string& str2) {
    return str1 + str2;
}

int main() {
    int result1 = add(10, 20);
    double result2 = add(3.14, 2.71);
    std::string result3 = add("Hello, ", "world!");

    std::cout << "Result 1: " << result1 << std::endl; // Output: 30
    std::cout << "Result 2: " << result2 << std::endl; // Output: 5.85
    std::cout << "Result 3: " << result3 << std::endl; // Output: "Hello, world!"

    return 0;
}```)
In diesem Beispiel haben wir die Funktion add dreimal definiert. Jede Funktion hat eine unterschiedliche Parameterliste (zwei int, zwei double oder zwei const std::string&). Je nachdem, welche Argumente der Funktion beim Aufruf übergeben werden, wählt der Compiler die entsprechende Überladung aus.

Es gibt jedoch einige Regeln für die Funktionenüberladung, die beachtet werden müssen:
- Die Überladung basiert auf der Anzahl und den Typen der Argumente. Funktionen, die sich nur in der Rückgabetype unterscheiden, können nicht überladen werden.
- Der Rückgabetyp der Funktion wird nicht zur Unterscheidung verwendet.
- Wenn mehrere passende Überladungen vorhanden sind, wählt der Compiler die spezifischste Überladung aus. Bei der Auswahl zwischen int und double wird beispielsweise die int-Version bevorzugt, wenn ein int-Argument übergeben wird.
- Standardargumente können mit Überladung verwendet werden, aber der Compiler wählt immer die spezifische Überladung, die genau die Argumente des Aufrufs übereinstimmt.

Das Überladen von Funktionen ermöglicht es, den Code eleganter und intuitiver zu gestalten, indem verschiedene Varianten einer Funktion zur Verfügung gestellt werden, die spezifisch auf unterschiedliche Datentypen oder Anforderungen des Benutzers abgestimmt sind. Es ist jedoch wichtig, die Überladung verantwortungsbewusst einzusetzen und sicherzustellen, dass die Funktionen eindeutig identifizierbar bleiben, um Verwirrungen zu vermeiden.
== Templates:
Templates sind eine mächtige Funktion in C++, die generische Programmierung ermöglichen. Sie ermöglichen die Erstellung von Funktionen oder Klassen, die mit verschiedenen Datentypen arbeiten können, ohne dass für jeden Datentyp eine separate Implementierung geschrieben werden muss.
#boxed(```cpp
template <typename T>
T multiply(T a, T b) {
    return a * b;
}
```)
Die Funktion multiply ist ein Template und kann mit verschiedenen Datentypen verwendet werden, ohne separate Versionen für jeden Datentyp erstellen zu müssen.

Die Verwendung von Funktionen und Templates ermöglicht es uns, effizienten und modularen Code zu schreiben und die Wiederverwendbarkeit von Logik in C++ zu maximieren. Es ist wichtig, die geeignete Methode für den Funktionsaufruf zu wählen, um das gewünschte Verhalten zu erzielen und unerwartete Seiteneffekte zu vermeiden.
= Dateizugriffe in C++
In C++ gibt es verschiedene Möglichkeiten, um mit Dateien zu arbeiten und Dateizugriffe durchzuführen. Dateien können zum Lesen und Schreiben geöffnet werden, und es stehen verschiedene Dateistream-Klassen zur Verfügung, die das Arbeiten mit Dateien erleichtern.
== Datei öffnen und schließen:
Um eine Datei zu öffnen, wird normalerweise ein Dateistream-Objekt verwendet. Die gängigsten Dateistream-Klassen sind ifstream zum Lesen und ofstream zum Schreiben. Bevor auf eine Datei zugegriffen werden kann, muss sie erfolgreich geöffnet werden. Nachdem die Arbeit mit der Datei abgeschlossen ist, sollte sie ordnungsgemäß geschlossen werden.

Beispiel: Datei zum Lesen öffnen und schließen:
#boxed(```cpp
#include <fstream>
#include <iostream>

int main() {
    std::ifstream inputFile;
    inputFile.open("input.txt");

    if (inputFile.is_open()) {
        // Datei wurde erfolgreich geöffnet
        // Hier kann auf die Datei zugegriffen werden

        inputFile.close(); // Datei schließen
    } else {
        std::cout << "Fehler beim Öffnen der Datei!" << std::endl;
    }

    return 0;
}```)

Beispiel: Datei zum Schreiben öffnen und schließen:
#boxed(```cpp
#include <fstream>
#include <iostream>

int main() {
    std::ofstream outputFile;
    outputFile.open("output.txt");

    if (outputFile.is_open()) {
        // Datei wurde erfolgreich geöffnet
        // Hier kann auf die Datei zugegriffen werden

        outputFile.close(); // Datei schließen
    } else {
        std::cout << "Fehler beim Öffnen der Datei!" << std::endl;
    }

    return 0;
}
```)
== Lesen und Schreiben von Dateien:
Nachdem eine Datei erfolgreich geöffnet wurde, kann auf sie zugegriffen werden. Das Lesen von Dateien erfolgt normalerweise zeilenweise oder zeichenweise. Zum Schreiben von Daten in eine Datei werden die `<<`-Operator verwendet.

Beispiel: Zeilenweise Lesen von Dateiinhalten:
#boxed(```cpp
#include <fstream>
#include <iostream>
#include <string>

int main() {
    std::ifstream inputFile;
    inputFile.open("input.txt");

    if (inputFile.is_open()) {
        std::string line;
        while (std::getline(inputFile, line)) {
            std::cout << line << std::endl; // Zeile ausgeben
        }

        inputFile.close(); // Datei schließen
    } else {
        std::cout << "Fehler beim Öffnen der Datei!" << std::endl;
    }

    return 0;
}
```)
Beispiel: Zeichenweise Lesen von Dateiinhalten:
#boxed(```cpp
#include <fstream>
#include <iostream>

int main() {
    std::ifstream inputFile;
    inputFile.open("input.txt");

    if (inputFile.is_open()) {
        char ch;
        while (inputFile.get(ch)) {
            std::cout << ch; // Zeichen ausgeben
        }

        inputFile.close(); // Datei schließen
    } else {
        std::cout << "Fehler beim Öffnen der Datei!" << std::endl;
    }

    return 0;
}
```)
Beispiel: Schreiben von Daten in eine Datei:
#boxed(```cpp
#include <fstream>
#include <iostream>

int main() {
    std::ofstream outputFile;
    outputFile.open("output.txt");

    if (outputFile.is_open()) {
        outputFile << "Hallo, Welt!" << std::endl;
        outputFile << 42 << std::endl;
        outputFile << 3.1415 << std::endl;

        outputFile.close(); // Datei schließen
    } else {
        std::cout << "Fehler beim Öffnen der Datei!" << std::endl;
    }

    return 0;
}
```)
== Überprüfen des Dateiendes:

Um das Dateiende zu überprüfen, kann die Funktion eof() verwendet werden. Diese Funktion gibt true zurück, wenn das Ende der Datei erreicht wurde.
#boxed(```cpp
#include <fstream>
#include <iostream>

int main() {
    std::ifstream inputFile;
    inputFile.open("input.txt");

    if (inputFile.is_open()) {
        char ch;
        while (!inputFile.eof()) {
            inputFile.get(ch);
            if (!inputFile.eof()) {
                std::cout << ch; // Zeichen ausgeben, wenn Dateiende noch nicht erreicht
            }
        }

        inputFile.close(); // Datei schließen
    } else {
        std::cout << "Fehler beim Öffnen der Datei!" << std::endl;
    }

    return 0;
}
```)
== Fehlerbehandlung beim Dateizugriff:
Es ist wichtig, Fehler beim Dateizugriff zu behandeln. Dateien könnten nicht vorhanden sein oder es könnten Probleme beim Lesen oder Schreiben auftreten. Es ist ratsam, vor dem Dateizugriff immer zu überprüfen, ob die Datei erfolgreich geöffnet wurde.
#boxed(```cpp
#include <fstream>
#include <iostream>

int main() {
    std::ifstream inputFile;
    inputFile.open("input.txt");

    if (inputFile.is_open()) {
        // Datei wurde erfolgreich geöffnet
        // Hier kann auf die Datei zugegriffen werden

        inputFile.close(); // Datei schließen
    } else {
        std::cout << "Fehler beim Öffnen der Datei!" << std::endl;
    }

    return 0;
}
```)
Es ist wichtig, die Fehlerbehandlung und die korrekte Verwendung von Dateizugriffsfunktionen zu beachten, um unerwartete Probleme zu vermeiden und den Dateizugriff sicher zu gestalten.
= Fragen
== Multiple Choice
*Frage 1*: Was ist das Überladen von Funktionen in C++?
a) Das Kopieren von Funktionen, um sie mehrfach im Code zu verwenden.
b) Das Erstellen von Funktionen mit gleichem Namen, aber unterschiedlicher Anzahl und/oder Typen von Parametern.
c) Das Ersetzen von Funktionen durch andere Funktionen, um den Code effizienter zu gestalten.
d) Das Verstecken von Funktionen, um sie vor dem Zugriff anderer Teile des Codes zu schützen.

*Frage 2*: Welcher Aspekt der Funktionen wird bei der Überladung nicht berücksichtigt?
a) Die Anzahl der Argumente.
b) Die Reihenfolge der Argumente.
c) Die Typen der Argumente.
d) Der Rückgabetyp der Funktion.

*Frage 3*: Welche Überladung würde der Compiler bevorzugen, wenn sowohl int als auch double als Argumente übergeben werden?
a) int-Version
b) double-Version
c) Es wird eine Fehlermeldung erzeugt, da die Überladung mehrdeutig ist.
d) Der Compiler wählt eine Überladung zufällig aus.

*Frage 4*: Kann die Überladung von Funktionen basierend auf dem Rückgabetyp erfolgen?
a) Ja, es ist möglich, Funktionen basierend auf dem Rückgabetyp zu überladen.
b) Nein, die Überladung basiert ausschließlich auf den Argumenten einer Funktion.
c) Nur, wenn der Rückgabetyp ein Zeiger ist.
d) Nur, wenn der Rückgabetyp ein benutzerdefinierter Datentyp ist.

*Frage 5*: Wofür kann die Überladung von Funktionen verwendet werden?
a) Um die Sichtbarkeit einer Funktion zu ändern.
b) Um mehrere Funktionen mit unterschiedlichen Rückgabetypen zu erstellen.
c) Um verschiedene Varianten einer Funktion anzubieten, die unterschiedliche Argumenttypen oder Anforderungen unterstützen.
d) Um Funktionen in einer anderen Datei zu verbergen.

*Frage 6*: Welche der folgenden Aussagen ist falsch?
a) Überladene Funktionen können verschiedene Rückgabetypen haben.
b) Der Compiler wählt die spezifischste Überladung aus, wenn mehrere passende Überladungen vorhanden sind.
c) Standardargumente können bei der Überladung von Funktionen verwendet werden.
d) Funktionen, die sich nur im Rückgabetyp unterscheiden, können überladen werden.

*Frage 7*: Welche der folgenden Aussagen zur Verwendung von Pointern ist korrekt?
a) Pointer sind in C++ nicht erlaubt.
b) Pointer werden immer automatisch auf nullptr initialisiert.
c) Pointer können auf den Adressen von Funktionen zeigen.
d) Es ist nicht möglich, Pointer auf benutzerdefinierte Datentypen zu erstellen.

*Frage 8*: Was ist eine Referenz in C++?
a) Eine Variable, die keinen Wert speichert.
b) Ein Alias oder Spitzname für eine bestehende Variable.
c) Eine Klasse, die andere Klassen erbt.
d) Eine Funktion, die von einer anderen Funktion aufgerufen wird.

*Frage 9*: Was passiert bei der Call-by-Value Übergabe von Argumenten an eine Funktion?
a) Die Argumente werden per Referenz übergeben.
b) Die Argumente werden per Zeiger übergeben.
c) Eine Kopie der Argumente wird erstellt und an die Funktion übergeben.
d) Die Argumente werden verschlüsselt und an die Funktion übergeben.

*Frage 10*: Wozu dienen Funktionstemplates in C++?
a) Zur Definition von Funktionen mit identischem Code.
b) Zur Definition von Funktionen, die verschiedene Rückgabetypen haben.
c) Zur Definition von Funktionen, die mit verschiedenen Datentypen arbeiten können.
d) Zur Definition von Funktionen, die nur mit benutzerdefinierten Datentypen arbeiten können.

*Frage 11*: Welche der folgenden Aussagen zum Überladen von Funktionen ist korrekt?
a) Überladene Funktionen müssen immer denselben Rückgabetyp haben.
b) Der Compiler wählt immer die erste Überladung, die den gegebenen Argumenten entspricht.
c) Funktionen können nur dann überladen werden, wenn sie unterschiedliche Namen haben.
d) Die Überladung basiert auf der Anzahl und den Typen der Argumente einer Funktion.

*Frage 12*: Welche Art von Referenz wird in C++ häufig verwendet, um sicherzustellen, dass eine Funktion keine Kopie der Argumente erstellt?
a) R-Wert-Referenz
b) L-Wert-Referenz
c) Konstante Referenz
d) Statistische Referenz

*Frage 13*: Was passiert bei der Call-by-Reference Übergabe von Argumenten an eine Funktion?
a) Die Argumente werden per Wert übergeben und eine Kopie wird erstellt.
b) Die Argumente werden per Zeiger übergeben.
c) Eine Referenz auf die ursprünglichen Argumente wird erstellt und an die Funktion übergeben.
d) Die Argumente werden verschlüsselt und an die Funktion übergeben.

*Frage 14*: Welcher Aspekt der Funktionenüberladung ermöglicht die Verwendung von Standardargumenten?
a) Die Anzahl der Argumente.
b) Die Reihenfolge der Argumente.
c) Die Typen der Argumente.
d) Der Rückgabetyp der Funktion.

*Frage 15*: Wie kann man verhindern, dass eine Funktion mit bestimmten Argumenttypen überladen wird?
a) Es ist nicht möglich, die Überladung für bestimmte Argumenttypen zu verhindern.
b) Die Funktion muss mit final gekennzeichnet werden.
c) Die Funktion muss als const deklariert werden.
d) Die Funktion muss als static deklariert werden.

*Frage 16*: Welche der folgenden Aussagen zum Überladen von Funktionen in C++ ist korrekt?
a) Überladene Funktionen können sich nur im Rückgabetyp unterscheiden.
b) Funktionen können nicht überladen werden, wenn sie in unterschiedlichen Dateien definiert sind.
c) Bei der Überladung muss die Reihenfolge der Argumente in allen Funktionen gleich sein.
d) Die Überladung basiert auf der Anzahl und den Typen der Argumente einer Funktion.

*Frage 17*: Was ist ein Vorteil der Verwendung von Templates für Funktionen?
a) Templates ermöglichen die Verwendung beliebiger Rückgabetypen.
b) Templates ermöglichen die Erstellung von Funktionen, die mehrere Typen unterstützen.
c) Templates vereinfachen die Syntax der Funktionen.
d) Templates können verhindern, dass Funktionen überladen werden müssen.

=== Richtige Antworten:
+ 2
+ 4
+ 3
+ 2
+ 3
+ 4
+ 3
+ 2
+ 3
+ 3
+ 4
+ 3
+ 3
+ 1
+ 1
+ 4
+ 2
== Erklärungen
*Frage 1*: Was ist das Überladen von Funktionen in C++? Erläutere diesen Konzept und gib ein Beispiel an.

*Frage 2*: Was sind Referenzen in C++? Erkläre, wie Referenzen funktionieren und in welchen Situationen sie nützlich sind.

*Frage 3*: Was ist der Unterschied zwischen der Deklaration und Definition einer Funktion in C++? Erläutere diesen Unterschied und warum er wichtig ist.

*Frage 4*: Erläutere den Unterschied zwischen Call-by-Value und Call-by-Reference in Bezug auf die Übergabe von Argumenten an Funktionen. Warum sollte man sich für eines dieser Konzepte entscheiden?

*Frage 5*: Was sind Funktionstemplates in C++? Erkläre, wie Funktionstemplates verwendet werden können, um generische Funktionen zu erstellen, die mit verschiedenen Datentypen arbeiten können.

=== Antworten:
*Antwort zu Frage 1*:
Das Überladen von Funktionen in C++ bezieht sich auf die Möglichkeit, mehrere Funktionen mit demselben Namen, aber unterschiedlichen Parameterlisten zu erstellen. Dies ermöglicht es, dass eine Funktion verschiedene Argumenttypen oder eine unterschiedliche Anzahl von Argumenten verarbeiten kann, abhängig von den Anforderungen des Aufrufs. Der Compiler wählt die passende Funktion anhand der gegebenen Argumente aus. Ein Beispiel für die Überladung einer Funktion könnte so aussehen:
#boxed(```cpp
#include <iostream>

int add(int a, int b) {
    return a + b;
}

double add(double a, double b) {
    return a + b;
}

int main() {
    int result1 = add(10, 20);
    double result2 = add(3.14, 2.71);

    std::cout << "Result 1: " << result1 << std::endl; // Output: 30
    std::cout << "Result 2: " << result2 << std::endl; // Output: 5.85

    return 0;
}```)
*Antwort zu Frage 2*:
Referenzen in C++ sind Alias oder Spitznamen für bestehende Variablen. Sie werden verwendet, um auf denselben Speicherplatz wie eine bereits existierende Variable zu verweisen. Referenzen werden mit dem &-Operator deklariert und müssen bei der Initialisierung mit einer vorhandenen Variable initialisiert werden. Referenzen sind besonders nützlich, wenn man verhindern möchte, dass unnötige Kopien von Variablen erstellt werden, beispielsweise in Funktionen, die große Datenstrukturen verarbeiten. Ein Beispiel für die Verwendung einer Referenz könnte so aussehen:
#boxed(```cpp
#include <iostream>

int main() {
    int num = 42;
    int& refNum = num;

    std::cout << "num: " << num << std::endl;     // Output: 42
    std::cout << "refNum: " << refNum << std::endl; // Output: 42

    refNum = 100;

    std::cout << "num: " << num << std::endl;     // Output: 100
    std::cout << "refNum: " << refNum << std::endl; // Output: 100

    return 0;
}```)
*Antwort zu Frage 3*:
Die Deklaration einer Funktion in C++ gibt lediglich den Namen, den Rückgabetyp und die Parameterliste der Funktion an, enthält aber keinen Funktionskörper. Die Definition einer Funktion enthält dagegen den Funktionskörper und implementiert die Funktionalität der Funktion. Die Deklaration wird in der Regel in einem Header-File (.h) angegeben, während die Definition in einer Quelldatei (.cpp) erfolgt. Die Trennung von Deklaration und Definition ist wichtig, da sie es ermöglicht, Funktionen in verschiedenen Dateien zu verwenden und den Code besser zu organisieren.

*Antwort zu Frage 4*:
Bei der Call-by-Value Übergabe von Argumenten an eine Funktion werden Kopien der Argumente erstellt und an die Funktion übergeben. Dadurch arbeitet die Funktion mit den Kopien der Argumente, und Änderungen an den Argumenten innerhalb der Funktion haben keine Auswirkungen auf die ursprünglichen Werte außerhalb der Funktion. Bei der Call-by-Reference Übergabe werden dagegen Referenzen auf die ursprünglichen Argumente an die Funktion übergeben, sodass die Funktion direkt mit den ursprünglichen Werten arbeitet. Dadurch können Änderungen innerhalb der Funktion die ursprünglichen Werte außerhalb der Funktion beeinflussen. Call-by-Value wird in der Regel verwendet, um sicherzustellen, dass die Funktion die ursprünglichen Werte nicht verändert, während Call-by-Reference verwendet wird, wenn die Funktion Änderungen an den Argumenten vornehmen soll.

*Antwort zu Frage 5*:
Funktionstemplates sind eine Funktionstechnik in C++, die es ermöglicht, generische Funktionen zu erstellen, die mit verschiedenen Datentypen arbeiten können. Templates verwenden spezielle Platzhaltertypen (typename T) für Argumente, die erst bei der Kompilierung durch die tatsächlichen Datentypen ersetzt werden. Dadurch kann dieselbe Funktion mit unterschiedlichen Datentypen verwendet werden, ohne den Code mehrfach schreiben zu müssen. Ein Beispiel für eine Funktion, die mithilfe von Templates generisch gemacht wird, könnte so aussehen:
#boxed(```cpp
#include <iostream>

// Funktionstemplate zur Addition von zwei Werten
template<typename T>
T add(T a, T b) {
    return a + b;
}

int main() {
    int result1 = add(10, 20);
    double result2 = add(3.14, 2.71);

    std::cout << "Result 1: " << result1 << std::endl; // Output: 30
    std::cout << "Result 2: " << result2 << std::endl; // Output: 5.85

    return 0;
}```)
Hinweis: Die Funktion add kann sowohl für Ganzzahlen als auch für Gleitkommazahlen verwendet werden, da sie mit Templates generisch gemacht wurde.
