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
