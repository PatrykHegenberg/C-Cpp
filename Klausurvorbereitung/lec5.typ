#let boxed(term) = block(
 fill: luma(230),
 inset: 8pt,
 radius: 4pt,
 term
)
= Weitere Themen
== Using in C++
Das Schlüsselwort "using" wird in C++ verwendet, um die Sichtbarkeit von Namensräumen zu ändern oder um das Benennen von Datentypen zu vereinfachen. Es gibt zwei häufige Verwendungen von "using": "using namespace" und "using typename".
=== using namespace
"using namespace" wird verwendet, um den Zugriff auf Namensräume in einem bestimmten Bereich zu vereinfachen. Es ermöglicht den Zugriff auf alle Mitglieder eines bestimmten Namensraums, ohne den Namensraum jedes Mal explizit angeben zu müssen. Dies kann hilfreich sein, um den Code übersichtlicher zu gestalten und das Schreiben von Code zu erleichtern.

Beispiel:
#boxed(```cpp
#include <iostream>

// Namespace mit dem Namen "example"
namespace example {
    int x = 42;
    void displayX() {
        std::cout << "Value of x: " << x << std::endl;
    }
}

int main() {
    // Verwendung von "using namespace"
    using namespace example;

    // Zugriff auf das Element "x" ohne explizite Angabe des Namensraums
    std::cout << "x: " << x << std::endl;

    // Aufruf der Funktion "displayX()" ohne explizite Angabe des Namensraums
    displayX();

    return 0;
}```)
=== using typename
"using typename" wird verwendet, um das Benennen von Datentypen aus komplexen Vorlagen (Templates) zu vereinfachen. In einigen Fällen ist es notwendig, den Compiler explizit wissen zu lassen, dass es sich bei einem bestimmten Namen um einen Datentyp handelt. Das "using typename" ermöglicht dies und erleichtert die Verwendung komplexer Vorlagen.

Beispiel:
#boxed(```cpp
#include <iostream>
#include <vector>

// Komplexe Vorlage
template<typename T>
class MyContainer {
public:
    using value_type = T;
    // Weitere Code-Implementierung...
};

int main() {
    // Verwendung von "using typename"
    using myIntContainer = MyContainer<int>;

    // Verwendung des benannten Datentyps
    myIntContainer::value_type myValue = 42;
    std::cout << "Value: " << myValue << std::endl;

    return 0;
}```)
In diesem Beispiel haben wir den Datentyp "value_type" innerhalb der Vorlage "MyContainer" mit "using" benannt. Dies ermöglicht es uns, den Datentyp für eine Instanz von "MyContainer<int>" leichter zu verwenden.

Es ist wichtig zu beachten, dass "using" mit Bedacht verwendet werden sollte, um potenzielle Namenskonflikte und unerwartete Effekte zu vermeiden. Im Allgemeinen ist es eine gute Praxis, "using" nur in begrenztem Umfang und nicht im globalen Namensraum zu verwenden, um die Lesbarkeit und Wartbarkeit des Codes zu verbessern.
= Pairs in C++
In C++ ist ein "Pair" ein Container, der genau zwei Elemente speichert. Es handelt sich um ein sehr nützliches Werkzeug, um zwei Werte zusammenzufassen und als eine Einheit zu behandeln. Pairs sind Teil der Standard Template Library (STL) und werden häufig verwendet, um assoziative Datenstrukturen wie Maps zu erstellen, bei denen Schlüssel-Wert-Paare benötigt werden.

Um ein Pair in C++ zu erstellen und zu verwenden, müssen Sie das Header <utility> einbinden. Dann können Sie das Pair mit dem std::pair-Template erstellen. Die beiden Elemente des Pairs können unterschiedliche Datentypen haben. Hier ist ein Beispiel:

#boxed(```cpp
#include <iostream>
#include <utility> // für std::pair

int main() {
    // Erstellung eines Pairs mit einem Integer und einem Double
    std::pair<int, double> myPair(42, 3.14);

    // Zugriff auf die Elemente des Pairs
    int myInt = myPair.first;
    double myDouble = myPair.second;

    // Ausgabe der Elemente
    std::cout << "First element: " << myInt << std::endl;
    std::cout << "Second element: " << myDouble << std::endl;

    return 0;
}```)
In diesem Beispiel haben wir ein Pair erstellt, das einen Integer und einen Double speichert. Die Zugriffe auf die Elemente des Pairs erfolgen über die Memberfunktionen first und second.
== Verwendung von Pairs in Maps
Pairs werden oft in Verbindung mit Maps verwendet, um Schlüssel-Wert-Paare zu erstellen. Hier ist ein Beispiel, wie Sie ein Pair in einer Map verwenden können:

#boxed(```cpp
#include <iostream>
#include <map>
#include <string>

int main() {
    // Erstellung einer Map mit einem String-Schlüssel und einem Integer-Wert
    std::map<std::string, int> myMap;

    // Fügen Sie ein Schlüssel-Wert-Paar zur Map hinzu
    myMap.insert(std::make_pair("apple", 10));

    // Zugriff auf den Wert über den Schlüssel
    std::string key = "apple";
    int value = myMap[key];

    // Ausgabe des Werts
    std::cout << "Value for key '" << key << "': " << value << std::endl;

    return 0;
}```)
In diesem Beispiel haben wir eine Map erstellt, die einen String-Schlüssel und einen Integer-Wert speichert. Wir haben dann ein Schlüssel-Wert-Paar zur Map hinzugefügt und auf den Wert über den Schlüssel zugegriffen.

Pairs sind eine leistungsfähige und vielseitige Möglichkeit, Daten in C++ zu speichern und zu verarbeiten. Sie können in einer Vielzahl von Situationen eingesetzt werden, in denen Sie zwei Werte zusammenfassen möchten, sei es in Maps, Vektoren oder anderen Datenstrukturen.
= Tuples in C++
In C++ sind "Tuples" Container, die eine geordnete Sammlung von Elementen unterschiedlicher Typen speichern können. Tuples sind ähnlich wie Pairs, aber während Pairs genau zwei Elemente enthalten, können Tuples beliebig viele Elemente enthalten. Tuples sind Teil der Standard Template Library (STL) und bieten eine praktische Möglichkeit, mehrere Werte in einer einzigen Einheit zu speichern und zu verarbeiten.
== Verwendung von Tuples
Um Tuples in C++ zu verwenden, müssen Sie das Header <tuple> einbinden. Dann können Sie ein Tuple mit dem std::tuple-Template erstellen. Die Elemente des Tuples können unterschiedliche Datentypen haben. Hier ist ein Beispiel:

#boxed(```cpp
#include <iostream>
#include <tuple> // für std::tuple

int main() {
    // Erstellung eines Tuples mit einem Integer, einem Double und einem String
    std::tuple<int, double, std::string> myTuple(42, 3.14, "Hello");

    // Zugriff auf die Elemente des Tuples
    int myInt = std::get<0>(myTuple);
    double myDouble = std::get<1>(myTuple);
    std::string myString = std::get<2>(myTuple);

    // Ausgabe der Elemente
    std::cout << "First element: " << myInt << std::endl;
    std::cout << "Second element: " << myDouble << std::endl;
    std::cout << "Third element: " << myString << std::endl;

    return 0;
}```)
In diesem Beispiel haben wir ein Tuple erstellt, das einen Integer, einen Double und einen String speichert. Die Zugriffe auf die Elemente des Tuples erfolgen über die Funktion std::get und den Index des Elements im Tuple.
== Verwendung von Tuples in Funktionen
Tuples sind besonders nützlich, wenn Sie eine Funktion schreiben möchten, die mehrere Werte zurückgeben soll. In solchen Fällen können Sie ein Tuple verwenden, um die verschiedenen Werte zusammenzufassen und sie als Rückgabewert der Funktion zu verwenden. Hier ist ein Beispiel:

#boxed(```cpp
#include <iostream>
#include <tuple> // für std::tuple

// Funktion, die ein Tuple mit zwei Werten zurückgibt
std::tuple<int, double> calculateValues() {
    int intValue = 42;
    double doubleValue = 3.14;

    return std::make_tuple(intValue, doubleValue);
}

int main() {
    // Aufruf der Funktion und Speicherung des Rückgabetupels
    std::tuple<int, double> result = calculateValues();

    // Zugriff auf die Elemente des Tuples
    int myInt = std::get<0>(result);
    double myDouble = std::get<1>(result);

    // Ausgabe der Elemente
    std::cout << "First element: " << myInt << std::endl;
    std::cout << "Second element: " << myDouble << std::endl;

    return 0;
}```)
In diesem Beispiel haben wir eine Funktion calculateValues() erstellt, die ein Tuple mit einem Integer und einem Double zurückgibt. Beim Aufruf der Funktion speichern wir das Rückgabetuple und greifen auf die Elemente des Tuples zu, um die Werte zu erhalten.

Tuples sind eine leistungsfähige Möglichkeit, mehrere Werte in C++ zu speichern und zu verarbeiten. Sie bieten eine einfache und flexible Möglichkeit, unterschiedliche Datentypen in einer einzigen Einheit zu kombinieren und sind daher in vielen Situationen sehr nützlich.