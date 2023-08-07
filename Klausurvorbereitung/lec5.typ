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
= Klassen in C++
== Allgemeines zu Klassen
Eine Klasse ist ein grundlegendes Konzept der objektorientierten Programmierung (OOP) in C++. Sie dient als Bauplan zur Erstellung von Objekten, die Daten und Funktionen zusammenfassen. Klassen ermöglichen es, komplexe Datenstrukturen zu definieren und Operationen auf diesen Daten zu definieren. Sie bieten eine Möglichkeit, Code zu organisieren und zu strukturieren, um die Lesbarkeit, Wiederverwendbarkeit und Wartbarkeit zu verbessern.

Eine Klasse kann als eine Blaupause oder ein Datentyp betrachtet werden, der aus Datenmembern und Memberfunktionen besteht. Datenmember repräsentieren die Eigenschaften oder Attribute des Objekts, während Memberfunktionen die Aktionen oder Verhaltensweisen definieren, die von den Objekten ausgeführt werden können.

=== Syntax einer Klasse
Die Syntax zur Deklaration einer Klasse in C++ ist folgendermaßen:
#boxed(```cpp
class ClassName {
public:
    // Datenmember
    dataType memberName1;
    dataType memberName2;
    // ...

    // Memberfunktionen
    returnType functionName1(parameters) {
        // Funktionen implementieren
    }
    returnType functionName2(parameters) {
        // Funktionen implementieren
    }
    // ...
};```)
Hierbei steht ClassName für den Namen der Klasse, dataType für den Datentyp der Datenmember und Rückgabetyp der Memberfunktionen, memberName1, memberName2, usw. für die Namen der Datenmember, functionName1, functionName2, usw. für die Namen der Memberfunktionen, und returnType für den Rückgabetyp der Funktionen.
=== Erzeugung von Objekten
Nach der Deklaration einer Klasse können Objekte dieses Typs erzeugt werden. Ein Objekt ist eine Instanz der Klasse, die die Datenmember und Memberfunktionen der Klasse enthält.
#boxed(```cpp
ClassName obj; // Erzeugung eines Objekts vom Typ ClassName
```)
=== Zugriff auf Datenmember und Memberfunktionen
Der Zugriff auf die Datenmember und Memberfunktionen erfolgt mithilfe des Punktoperators ..
#boxed(```cpp
obj.memberName1; // Zugriff auf Datenmember
obj.functionName1(parameters); // Aufruf der Memberfunktion
```)
=== Zugriffsbereiche
In C++ können Zugriffsbereiche (public, private, protected) verwendet werden, um den Zugriff auf die Datenmember und Memberfunktionen einer Klasse zu kontrollieren. Datenmember und Memberfunktionen, die als public deklariert sind, können von außerhalb der Klasse zugegriffen werden, während diejenigen, die als private deklariert sind, nur von innerhalb der Klasse zugänglich sind.
#boxed(```cpp
class MyClass {
public:
    int publicMember; // Public Datenmember
    void publicFunction() {
        // Public Memberfunktion
    }

private:
    int privateMember; // Private Datenmember
    void privateFunction() {
        // Private Memberfunktion
    }
};```)
=== Konstruktoren und Destruktoren
Konstruktoren und Destruktoren sind spezielle Memberfunktionen einer Klasse. Der Konstruktor wird aufgerufen, wenn ein Objekt erzeugt wird, um die Initialisierung durchzuführen, und der Destruktor wird aufgerufen, wenn ein Objekt zerstört wird, um Speicher freizugeben oder Aufräumarbeiten durchzuführen.
#boxed(```cpp
class MyClass {
public:
    // Konstruktor
    MyClass() {
        // Initialisierung durchführen
    }

    // Destruktor
    ~MyClass() {
        // Aufräumarbeiten durchführen
    }
};```)
=== Datenkapselung
Datenkapselung ist ein wichtiges Konzept in OOP, das besagt, dass die internen Daten und Implementierungsdetails einer Klasse vor externen Einflüssen geschützt werden sollten. In C++ wird dies normalerweise erreicht, indem die Datenmember als private deklariert werden und der Zugriff auf diese Daten über öffentliche Funktionen (Getter und Setter) kontrolliert wird.
#boxed(```cpp
class Rectangle {
private:
    int width;
    int height;

public:
    // Getter für width
    int getWidth() {
        return width;
    }

    // Setter für width
    void setWidth(int w) {
        width = w;
    }

    // Getter für height
    int getHeight() {
        return height;
    }

    // Setter für height
    void setHeight(int h) {
        height = h;
    }
};```)
=== Templates
Templates sind ein leistungsstarkes Feature in C++, mit dem generische Funktionen oder Klassen erstellt werden können, die mit verschiedenen Datentypen arbeiten können, ohne dass mehrere Versionen des Codes geschrieben werden müssen. Templates ermöglichen eine hohe Wiederverwendbarkeit von Code und verbessern die Codeeffizienz.
#boxed(```cpp
template <typename T>
T getMax(T a, T b) {
    return (a > b) ? a : b;
}```)
In dieser allgemeinen Erklärung werden die grundlegenden Konzepte von Klassen in C++ behandelt, wie die Deklaration und Erzeugung von Objekten, der Zugriff auf Datenmember und Memberfunktionen, Zugriffsbereiche, Konstruktoren und Destruktoren, Datenkapselung und Templates. Klassen ermöglichen es Entwicklern, effizienten und modularen Code zu schreiben, der komplexe Strukturen und Hierarchien modellieren kann.
== Klassendefinition in C++
Eine Klassendefinition in C++ ist der Prozess, bei dem eine benutzerdefinierte Datentyp oder eine Klasse erstellt wird, die Datenmember (Attribute oder Eigenschaften) und Memberfunktionen (Methoden oder Verhalten) enthält. Eine Klasse dient als Bauplan, der die Struktur und das Verhalten von Objekten beschreibt, die von dieser Klasse erzeugt werden können.
=== Syntax einer Klassendefinition
Die Syntax zur Deklaration einer Klasse in C++ ist folgendermaßen:
#boxed(```cpp
class ClassName {
public:
    // Datenmember (Attribute oder Eigenschaften)
    dataType memberName1;
    dataType memberName2;
    // ...

    // Memberfunktionen (Methoden oder Verhalten)
    returnType functionName1(parameters) {
        // Funktionen implementieren
    }

    returnType functionName2(parameters) {
        // Funktionen implementieren
    }
    // ...
    
private:
    // Private Datenmember (Attribute oder Eigenschaften)
    dataType privateMemberName1;
    dataType privateMemberName2;
    // ...

    // Private Memberfunktionen (Methoden oder Verhalten)
    returnType privateFunctionName1(parameters) {
        // Funktionen implementieren
    }

    returnType privateFunctionName2(parameters) {
        // Funktionen implementieren
    }
    // ...
};```)
=== Beschreibung der Elemente
class: Das Schlüsselwort, das angibt, dass eine Klassendefinition folgt.
ClassName: Der Name der Klasse, der den Namen des benutzerdefinierten Datentyps darstellt.
public: Der sichtbare Bereich, in dem die öffentlichen Datenmember und Memberfunktionen der Klasse deklariert werden. Diese können von außerhalb der Klasse aufgerufen und verwendet werden.
private: Der sichtbare Bereich, in dem die privaten Datenmember und Memberfunktionen der Klasse deklariert werden. Diese können nur von innerhalb der Klasse aufgerufen und verwendet werden.
dataType: Der Datentyp der Datenmember und Rückgabetyp der Memberfunktionen.
memberName1, memberName2, usw.: Die Namen der Datenmember, die die Eigenschaften oder Attribute der Klasse darstellen.
functionName1, functionName2, usw.: Die Namen der Memberfunktionen, die das Verhalten oder die Aktionen der Klasse definieren.
parameters: Die Parameter, die von den Memberfunktionen akzeptiert werden, wenn sie aufgerufen werden.
=== Erzeugung von Objekten
Nach der Klassendefinition können Objekte dieser Klasse erzeugt werden. Ein Objekt ist eine Instanz der Klasse und enthält die Datenmember und Memberfunktionen, die in der Klassendefinition festgelegt sind.
#boxed(```cpp
ClassName obj; // Erzeugung eines Objekts vom Typ ClassName
```)
== Klassen-Benutzung in C++
Die Klassen-Benutzung in C++ bezieht sich auf die Verwendung von definierten Klassen, um Objekte zu erstellen und auf die darin enthaltenen Datenmember und Memberfunktionen zuzugreifen. Klassen dienen als Baupläne für Objekte und ermöglichen die Strukturierung und Organisation von Daten und Funktionen in einer Einheit.
=== Erzeugung von Objekten
Um ein Objekt einer Klasse zu erstellen, verwenden wir den Klassenname zusammen mit dem Konstruktor (falls vorhanden). Ein Konstruktor ist eine spezielle Memberfunktion, die beim Erstellen eines Objekts automatisch aufgerufen wird, um den initialen Zustand des Objekts festzulegen.

Beispiel: Erzeugung eines Objekts
Angenommen, wir haben die Klasse Person definiert:
#boxed(```cpp
class Person {
public:
    std::string name;
    int age;

    // Konstruktor
    Person(const std::string& n, int a) : name(n), age(a) {}
};```)
Nun können wir ein Objekt der Klasse Person erzeugen:
#boxed(```cpp
Person person1("Alice", 30); // Erzeugung eines Objekts mit dem Konstruktor
Person person2("Bob", 25);```)
=== Zugriff auf Datenmember und Memberfunktionen
Nachdem wir Objekte der Klasse erstellt haben, können wir auf ihre Datenmember und Memberfunktionen zugreifen. Der Zugriff erfolgt über den Punktoperator ..

Beispiel: Zugriff auf Datenmember und Memberfunktionen

Angenommen, wir haben die Klasse Rectangle definiert:
#boxed(```cpp
class Rectangle {
public:
    double length;
    double width;

    double calculateArea() {
        return length * width;
    }
};```)
Nun können wir auf die Datenmember und Memberfunktionen der Objekte zugreifen:
#boxed(```cpp
Rectangle rect;
rect.length = 5.0; // Zugriff auf Datenmember
rect.width = 3.0;

double area = rect.calculateArea(); // Aufruf der Memberfunktion```)
=== Verwendung von Klassen in Funktionen
Klassen können auch in Funktionen verwendet werden, um komplexe Aktionen auszuführen oder Daten zu verarbeiten.

Beispiel: Funktion mit Klassen

Angenommen, wir haben die Klasse Vector, die eine einfache Vektorstruktur darstellt:

#boxed(```cpp
class Vector {
public:
    int x, y;

    Vector(int a, int b) : x(a), y(b) {}

    Vector add(const Vector& other) {
        return Vector(x + other.x, y + other.y);
    }
};```)
Jetzt können wir eine Funktion schreiben, die zwei Vektoren addiert:
#boxed(```cpp
Vector addVectors(const Vector& v1, const Vector& v2) {
    return v1.add(v2);
}```)
Wir können diese Funktion verwenden, um zwei Vektoren zu addieren:
#boxed(```cpp
Vector vec1(2, 3);
Vector vec2(1, 5);

Vector result = addVectors(vec1, vec2);```)
In diesem Beispiel haben wir die Klasse Vector verwendet, um eine Funktion zu schreiben, die zwei Vektoren addiert und das Ergebnis zurückgibt.
=== Klassen-Benutzung für Datenkapselung
Eine der wichtigsten Funktionen von Klassen ist die Datenkapselung, die es ermöglicht, Daten und Funktionen innerhalb einer Klasse zu organisieren und den Zugriff auf die Daten zu kontrollieren. Durch die Verwendung von Zugriffsbereichen wie public, private und protected können wir festlegen, welche Datenmember und Memberfunktionen von außerhalb der Klasse zugänglich sein sollen und welche nicht.
#boxed(```cpp
class MyClass {
public:
    // Öffentliche Datenmember und Memberfunktionen
    // ...

private:
    // Private Datenmember und Memberfunktionen
    // ...
};```)
In diesem Beispiel haben wir eine Klasse MyClass, in der die öffentlichen Datenmember und Memberfunktionen von außerhalb der Klasse zugänglich sind, während die privaten Datenmember und Memberfunktionen nur von innerhalb der Klasse zugänglich sind.

Die Verwendung von Klassen in C++ ermöglicht es uns, den Code zu strukturieren, die Wiederverwendbarkeit zu verbessern und eine effiziente Datenkapselung zu erreichen. Sie ist ein leistungsstarkes Konzept, das es uns ermöglicht, komplexe Programme zu erstellen und zu verwalten.
== Zugriffsbereiche
In C++ ermöglichen Zugriffsbereiche (Access Specifiers) in Klassen die Kontrolle über den Zugriff auf Datenmember und Memberfunktionen. Es gibt drei Hauptzugriffsbereiche: public, private und protected, die festlegen, welche Teile der Klasse von außerhalb der Klasse zugänglich sind und welche nicht.
=== public Zugriffsbereich:
Datenmember und Memberfunktionen, die als public deklariert sind, sind von überall zugänglich, sowohl von außerhalb der Klasse als auch von abgeleiteten Klassen.
Die public-Elemente können verwendet werden, um auf die Schnittstelle der Klasse zuzugreifen und mit den Objekten der Klasse zu interagieren.
Beispiel: Public Zugriffsbereich
#boxed(```cpp
class Circle {
public:
    double radius; // Öffentlicher Datenmember

    double calculateArea() { // Öffentliche Memberfunktion
        return 3.14 * radius * radius;
    }
};```)
#boxed(```cpp
Circle circle;
circle.radius = 5.0; // Zugriff auf den öffentlichen Datenmember
double area = circle.calculateArea(); // Aufruf der öffentlichen Memberfunktion```)
=== private Zugriffsbereich:
Datenmember und Memberfunktionen, die als private deklariert sind, sind nur innerhalb der Klasse zugänglich und können nicht direkt von außerhalb der Klasse oder von abgeleiteten Klassen aufgerufen werden.
Der private-Bereich dient dazu, die Daten der Klasse vor direktem Zugriff zu schützen und die Datenkapselung zu gewährleisten.
Beispiel: Private Zugriffsbereich
#boxed(```cpp
class BankAccount {
private:
    double balance; // Privater Datenmember

public:
    void deposit(double amount) { // Öffentliche Memberfunktion
        balance += amount;
    }

    double getBalance() { // Öffentliche Memberfunktion
        return balance;
    }
};```)
#boxed(```cpp
BankAccount account;
account.deposit(1000.0); // Aufruf der öffentlichen Memberfunktion
double balance = account.getBalance(); // Aufruf der öffentlichen Memberfunktion```)
=== protected Zugriffsbereich:
Datenmember und Memberfunktionen, die als protected deklariert sind, sind ähnlich wie private-Elemente, können jedoch von abgeleiteten Klassen aufgerufen werden.
Der protected-Bereich wird normalerweise verwendet, um die abgeleiteten Klassen auf bestimmte Elemente zugreifen zu lassen, während der direkte Zugriff von außerhalb der Klasse eingeschränkt bleibt.
Beispiel: Protected Zugriffsbereich
#boxed(```cpp
class Shape {
protected:
    int width; // Geschützter Datenmember
    int height; // Geschützter Datenmember
};```)
#boxed(```cpp
class Rectangle : public Shape {
public:
    void setDimensions(int w, int h) {
        width = w; // Zugriff auf geschützten Datenmember von der abgeleiteten Klasse
        height = h; // Zugriff auf geschützten Datenmember von der abgeleiteten Klasse
    }
};```)
Die Wahl des richtigen Zugriffsbereichs hängt von den Anforderungen und dem Design der Klasse ab. Durch die Verwendung der Zugriffsbereiche public, private und protected kann die Sichtbarkeit und der Zugriff auf die Datenmember und Memberfunktionen effektiv kontrolliert und die Datenkapselung gewährleistet werden. Dies trägt zu einem sauberen und strukturierten Code bei und ermöglicht die Erstellung robuster Klassen und abgeleiteter Klassen in C++.
== Klassen sind benutzerdefinierte Datentypen in C++
In C++ ermöglichen Klassen die Definition benutzerdefinierter Datentypen, die aus einer Gruppe von Datenmembern und Memberfunktionen bestehen. Klassen bilden eine abstrakte Darstellung eines realen Objekts oder Konzepts und stellen eine Möglichkeit dar, Daten und zugehörige Funktionen zu organisieren.
*Vorteile von Klassen als benutzerdefinierte Datentypen:*

- *Datenkapselung*: Klassen ermöglichen es, Daten und zugehörige Funktionen in einer Einheit zu organisieren und den Zugriff auf private Details zu kontrollieren.
- *Modularität*: Klassen fördern die Modulbauweise und erleichtern die Strukturierung des Codes, was zu besser lesbarem und wartbarem Code führt.
- Wiederverwendbarkeit: Durch die Definition benutzerdefinierter Datentypen können Objekte dieses Typs in verschiedenen Teilen des Programms verwendet werden.
- *Abstraktion*: Klassen ermöglichen die Abstraktion von Details und ermöglichen es, komplexe Operationen in einfache Funktionen zu kapseln.

Die Verwendung von Klassen als benutzerdefinierte Datentypen ist eine der grundlegenden Konzepte der objektorientierten Programmierung in C++. Durch die Verwendung von Klassen können Entwickler komplexe Programme schreiben, die effizient, strukturiert und leicht zu warten sind.
== Konstruktoren
Konstruktoren sind spezielle Memberfunktionen einer Klasse in C++, die automatisch aufgerufen werden, wenn ein Objekt dieser Klasse erzeugt wird. Sie dienen dazu, das neu erstellte Objekt zu initialisieren und seinen gültigen Anfangszustand sicherzustellen. Ein Konstruktor hat denselben Namen wie die Klasse und wird durch eine spezielle Syntax gekennzeichnet.
=== Arten von Konstruktoren:
==== Standardkonstruktor (Default Constructor):
Ein Standardkonstruktor hat keine Parameter oder alle seine Parameter haben Standardwerte.
Wenn keine anderen Konstruktoren in der Klasse definiert sind, wird automatisch ein impliziter Standardkonstruktor generiert.
Beispiel: Standardkonstruktor
#boxed(```cpp
class Point {
public:
    int x;
    int y;

    Point() { // Standardkonstruktor
        x = 0;
        y = 0;
    }
};```)
==== Parameterisierter Konstruktor:
Ein parameterisierter Konstruktor hat mindestens einen Parameter und wird verwendet, um Objekte mit bestimmten Werten zu initialisieren.
Er ermöglicht die Festlegung der Anfangswerte der Datenmember bei der Erstellung des Objekts.
Beispiel: Parameterisierter Konstruktor
#boxed(```cpp
class Rectangle {
public:
    int width;
    int height;

    Rectangle(int w, int h) { // Parameterisierter Konstruktor
        width = w;
        height = h;
    }
};```)
=== Implizite und explizite Verwendung von Konstruktoren:
Konstruktoren können implizit oder explizit verwendet werden.
- Implizite Verwendung tritt auf, wenn ein Objekt ohne expliziten Aufruf des Konstruktors erstellt wird. Zum Beispiel: Point p;
- Explizite Verwendung tritt auf, wenn der Konstruktor mit dem new-Operator oder durch expliziten Aufruf erstellt wird. Zum Beispiel: Point p(5, 10);
=== Konstruktoraufruf bei der Objekterzeugung:
Beim Erzeugen eines Objekts wird der passende Konstruktor aufgerufen, um den Speicher für das Objekt zu reservieren und die Datenmember zu initialisieren.
#boxed(```cpp
Point p; // Aufruf des Standardkonstruktors
Rectangle r(5, 10); // Aufruf des parameterisierten Konstruktors```)
=== Standardkonstruktor und Initialisierungsliste:
In C++ können Konstruktoren auch mithilfe einer Initialisierungsliste initialisiert werden. Dies ermöglicht die effiziente Initialisierung von Datenmembern, insbesondere wenn es sich um konstante oder Referenztypen handelt.

Beispiel: Konstruktor mit Initialisierungsliste
#boxed(```cpp
class Circle {
public:
    double radius;

    Circle(double r) : radius(r) { // Konstruktor mit Initialisierungsliste
        // Andere Initialisierungen oder Operationen
    }
};```)
Die Verwendung von Konstruktoren ermöglicht die sichere Initialisierung von Objekten und hilft, unerwünschte Zustände zu vermeiden. Sie sind ein leistungsfähiges Werkzeug in C++, um die Klasse zu definieren und sicherzustellen, dass Objekte in einem gültigen Zustand erstellt werden.
== Destruktoren
Destruktoren sind spezielle Memberfunktionen einer Klasse in C++, die automatisch aufgerufen werden, wenn ein Objekt dieser Klasse seinen Gültigkeitsbereich verlässt oder explizit gelöscht wird. Der Destruktor hat denselben Namen wie die Klasse, ist jedoch durch eine Tilde (~) gefolgt vom Klassennamen gekennzeichnet.
=== Verwendungszweck von Destruktoren:
Der Hauptzweck eines Destruktors besteht darin, Ressourcen freizugeben, die vom Objekt während seiner Lebensdauer verwendet wurden. Dies könnte beispielsweise Speicher sein, der während der Objekterzeugung allokiert wurde, oder andere Ressourcen wie Dateien, Sockets oder Verbindungen.

Syntax:
#boxed(```cpp
class MyClass {
public:
    // Konstruktor
    MyClass() {
        // Initialisierung
    }

    // Destruktor
    ~MyClass() {
        // Freigabe von Ressourcen
    }
};```)
=== Automatische Aufruf des Destruktors:
Der Destruktor wird automatisch aufgerufen, wenn das Objekt seinen Gültigkeitsbereich verlässt, normalerweise am Ende des Blocks, in dem das Objekt erstellt wurde. Wenn ein Objekt als lokales Objekt innerhalb einer Funktion deklariert wird, wird sein Destruktor aufgerufen, wenn die Funktion ihren Gültigkeitsbereich verlässt.

Beispiel: Automatischer Aufruf des Destruktors
#boxed(```cpp
void someFunction() {
    MyClass obj; // Objekt wird innerhalb der Funktion deklariert
    // ... Weitere Operationen mit dem Objekt
} // Am Ende des Blocks wird der Destruktor von 'obj' automatisch aufgerufen```)
=== Expliziter Aufruf des Destruktors:
In einigen Fällen kann es notwendig sein, den Destruktor eines Objekts explizit aufzurufen, bevor der Gültigkeitsbereich endet. Dies kann z. B. bei der dynamischen Objekterzeugung mit dem new-Operator der Fall sein.
#boxed(```cpp
MyClass *ptr = new MyClass(); // Dynamische Objekterzeugung
// ... Weitere Operationen mit 'ptr'
delete ptr; // Expliziter Aufruf des Destruktors und Freigabe von Ressourcen```)
=== Hinweis:
Der Destruktor sollte immer dann implementiert werden, wenn die Klasse Ressourcen verwendet, die explizit freigegeben werden müssen.
Wenn der Destruktor nicht explizit implementiert wird, erstellt der Compiler standardmäßig einen impliziten Destruktor, der jedoch in einigen Fällen möglicherweise nicht die richtige Funktionalität bietet.
Die Verwendung von Destruktoren ist wichtig, um sicherzustellen, dass Ressourcen ordnungsgemäß freigegeben werden und Speicherlecks vermieden werden. Durch die Kombination von Konstruktoren und Destruktoren können C++-Klassen robuste und effiziente Objekte verwalten.
== This
Das Schlüsselwort "this" ist ein spezielles Zeigerwort in C++, das innerhalb einer Klassenmethode verwendet wird, um auf das aktuelle Objekt zu verweisen, auf dem die Methode aufgerufen wird. Es ist ein verdeckter Zeiger, der auf die Speicheradresse des aktuellen Objekts verweist, sodass auf die Datenmember und Memberfunktionen des Objekts zugegriffen werden kann.
=== Verwendung von "this":
In C++ wird "this" hauptsächlich in Methoden einer Klasse verwendet, um zwischen den lokalen Variablen und Datenmembern des Objekts zu unterscheiden, wenn beide denselben Namen haben.

Syntax:
#boxed(```cpp
class MyClass {
public:
    void printValue() {
        // Verwendung von "this" zum Zugriff auf Datenmember des Objekts
        cout << "Value: " << this->value << endl;
    }

private:
    int value;
};```)
=== Vorteile der Verwendung von "this":
- Klarheit:
    - Wenn eine Methode auf ein Datenmember des Objekts zugreifen muss, hilft "this", die Klarheit zu verbessern und potenzielle Verwechslungen mit lokalen Variablen zu vermeiden.
- Objektorientierte Paradigmen:
    - "this" unterstützt das objektorientierte Paradigma, indem es ermöglicht, dass Methoden direkt auf die Eigenschaften des Objekts zugreifen und mit ihnen arbeiten können.

Beispiel: Verwendung von "this"
#boxed(```cpp
class Counter {
public:
    void increment() {
        this->count++; // Inkrementieren des Datenmembers 'count' des aktuellen Objekts
    }

    int getCount() {
        return this->count; // Rückgabe des Datenmembers 'count' des aktuellen Objekts
    }

private:
    int count = 0;
};```)
In der obigen Klasse "Counter" wird das Schlüsselwort "this" verwendet, um auf den Datenmember "count" des aktuellen Objekts zu verweisen. Dadurch kann die Methode "increment" den Zähler des aktuellen Objekts erhöhen und die Methode "getCount" den aktuellen Wert des Zählers zurückgeben.

Die Verwendung von "this" ist eine wichtige Technik in C++, um effektiv mit den Daten eines Objekts zu arbeiten und die Klarheit und Lesbarkeit des Codes zu verbessern.
== Deklaration
In C++ kann eine Klasse in zwei Teilen definiert werden: der Deklaration und der Definition. Die Deklaration einer Klasse stellt lediglich die Struktur und die öffentlichen Schnittstellen der Klasse vor, während die Definition die Implementierung der Klassenmethoden und -datenmember enthält.
=== Syntax:
Die Deklaration einer Klasse erfolgt üblicherweise in einem Header-Datei (.h) und sieht folgendermaßen aus:
#boxed(```cpp
// MyClass.h - Header-Datei (Deklaration)
class MyClass {
public:
    // Öffentliche Schnittstelle und Methodendeklarationen
    void someMethod();
    int someOtherMethod(int x, int y);

private:
    // Private Datenmember
    int data;
};```)
*Erklärung*:

Der Name der Klasse lautet "MyClass", gefolgt von der Deklaration der öffentlichen Schnittstelle (public) und der privaten Datenmember (private).
Die öffentliche Schnittstelle enthält die Methodendeklarationen, die von außen aufgerufen werden können. Hier werden die Signaturen der Methoden angegeben, jedoch keine Implementierungen.
Die private Sektion enthält die Datenmember der Klasse, auf die nur die Methoden der Klasse selbst zugreifen können.

*Hinweis*:

Die Definition der Methoden erfolgt in einer separaten Implementierungsdatei (.cpp), in der die Funktionalität der Klasse implementiert wird.
Verwendung der deklarierten Klasse:

Nach der Deklaration kann die Klasse in anderen Dateien (z. B. main.cpp) verwendet werden, indem die Header-Datei mit `#include` eingebunden wird:
#boxed(```cpp
#include "MyClass.h"

int main() {
    MyClass obj; // Erzeugung eines Objekts der Klasse

    obj.someMethod(); // Aufruf einer Methode der Klasse
    int result = obj.someOtherMethod(5, 10); // Aufruf einer Methode mit Rückgabewert
    return 0;
}```)
=== Vorteile der Trennung von Deklaration und Definition:
Die Trennung von Deklaration und Definition ermöglicht eine klare Aufteilung von Schnittstelle und Implementierung. Es hilft auch, zyklische Abhängigkeiten zwischen verschiedenen Klassen zu vermeiden und den Kompilierungsprozess zu beschleunigen, da Änderungen an der Implementierung nicht zu einer erneuten Kompilierung aller Dateien führen, die die Klasse verwenden.

Die Deklaration von Klassen ist eine bewährte Praxis in C++, um die Struktur und Schnittstelle einer Klasse zu definieren, bevor ihre Implementierung bekannt ist. Dies trägt zur Verbesserung der Codeorganisation und -wartbarkeit bei.
== Klassen in externe Dateien auslagern in C++
In C++ können Klassen in externe Dateien ausgelagert werden, um den Quellcode zu organisieren und die Wiederverwendbarkeit von Klassen zu verbessern. Dies wird oft durch die Verwendung von Header-Dateien (.h) für die Deklaration der Klasse und von Implementierungsdateien (.cpp) für die Definition der Klassenmethoden und -datenmember erreicht.
=== Verwendung von Header-Dateien (.h):
Eine Header-Datei enthält normalerweise die Deklaration der Klasse, einschließlich der Methodendeklarationen und Datenmember, aber keine Implementierungen.
Die Header-Datei wird mit der `#include-Direktive` in andere Dateien eingebunden, die die Klasse verwenden möchten.
Durch die Trennung der Deklaration in eine Header-Datei wird sichergestellt, dass andere Dateien nur auf die öffentliche Schnittstelle der Klasse zugreifen können, während die Implementierung privat bleibt.
Syntax:
#boxed(```cpp
// MyClass.h - Header-Datei (Deklaration)
class MyClass {
public:
    void someMethod();
    int someOtherMethod(int x, int y);

private:
    int data;
};```)
=== Verwendung von Implementierungsdateien (.cpp):
In einer Implementierungsdatei werden die Methoden der Klasse definiert und die Funktionalität der Klasse implementiert.
Die Implementierungsdatei wird normalerweise mit derselben Namen wie die Header-Datei, jedoch mit der Erweiterung .cpp, erstellt.
Durch diese Trennung bleibt der Header-Code in der Regel leichtgewichtig und es ist einfacher, den Code der Klasse zu organisieren und zu warten.
Syntax:
#boxed(```cpp
// MyClass.cpp - Implementierungsdatei (Definition)
#include "MyClass.h"

void MyClass::someMethod() {
    // Implementierung der Methode someMethod
}

int MyClass::someOtherMethod(int x, int y) {
    // Implementierung der Methode someOtherMethod
    return x + y;
}```)
=== Vorteile der Auslagerung in externe Dateien:
- Trennung von Schnittstelle und Implementierung: Die Verwendung von Header-Dateien ermöglicht die Trennung der Schnittstelle einer Klasse (Deklaration) von ihrer Implementierung. Dadurch können andere Dateien nur auf die öffentlichen Methoden zugreifen, während die Implementierung privat bleibt.
- Organisation und Wartbarkeit: Durch das Auslagern in externe Dateien wird der Quellcode übersichtlicher und leichter zu warten, da die Klassenlogik in einer separaten Datei zentralisiert ist.
- Wiederverwendbarkeit: Klassen können in verschiedenen Projekten wiederverwendet werden, indem einfach die Header-Datei in das neue Projekt eingebunden wird.
=== Unterschied zwischen Verwendung einer Datei und Aufteilung der Klasse:
Die Verwendung einer Header-Datei und einer Implementierungsdatei ermöglicht die Trennung von Schnittstelle und Implementierung, wodurch der Code besser organisiert und gewartet werden kann. Auf der anderen Seite können kleinere Klassen auch in einer einzelnen Datei definiert werden. Die Aufteilung der Klasse in Header- und Implementierungsdateien bietet jedoch die Möglichkeit, größere Projekte besser zu strukturieren und die Wiederverwendbarkeit von Klassen zu erhöhen.
== Vererbung in C++
Die Vererbung ist ein wichtiges Konzept in der objektorientierten Programmierung, das es ermöglicht, eine neue Klasse (abgeleitete Klasse) zu erstellen, die Eigenschaften und Verhalten einer bereits existierenden Klasse (Basis- oder Elternklasse) erbt. Die abgeleitete Klasse erweitert die Funktionalität der Basis-Klasse und kann sowohl ihre Datenmember als auch ihre Methoden nutzen.
=== Syntax der Vererbung:
Die Syntax der Vererbung in C++ erfolgt durch einen Doppelpunkt : nach dem Namen der abgeleiteten Klasse, gefolgt vom Zugriffsmodifizierer (public, protected oder private) und dem Namen der Basis-Klasse.
#boxed(```cpp
class BaseClass {
public:
    // Basis-Klasse Definition
};

class DerivedClass : public BaseClass {
    // Abgeleitete Klasse Definition, die von BaseClass erbt
};```)
=== Zugriffsmodifizierer:
- public: Die öffentlichen Member der Basis-Klasse bleiben öffentlich in der abgeleiteten Klasse.
- protected: Die öffentlichen Member der Basis-Klasse werden in der abgeleiteten Klasse als geschützt (protected) definiert.
- private: Die öffentlichen Member der Basis-Klasse werden in der abgeleiteten Klasse als private definiert.
=== Vererbungshierarchie:
Die Vererbung ermöglicht es, eine Hierarchie von Klassen zu erstellen, wobei abgeleitete Klassen von anderen abgeleiteten Klassen oder Basis-Klassen erben können. Dies führt zu einer Baumstruktur, in der die abgeleiteten Klassen schrittweise die Eigenschaften und Verhaltensweisen ihrer übergeordneten Klassen erben.

Beispiel:
#boxed(```cpp
// Basis-Klasse
class Animal {
public:
    void makeSound() {
        cout << "Animal makes a sound" << endl;
    }
};

// Abgeleitete Klasse
class Dog : public Animal {
public:
    void makeSound() {
        cout << "Dog barks" << endl;
    }
};```)
=== Verwendung der Vererbung:
Durch die Vererbung kann die abgeleitete Klasse (z. B. "Dog") die Methoden der Basis-Klasse ("Animal") überschreiben, um ihr eigenes Verhalten zu definieren. Wenn eine Methode in der abgeleiteten Klasse denselben Namen und dasselbe Rückgabetyp hat wie in der Basis-Klasse, wird die Methode in der abgeleiteten Klasse die Methode in der Basis-Klasse überschreiben.
=== Vorteile der Vererbung:
- Wiederverwendbarkeit: Vererbung ermöglicht die Wiederverwendung von Code, indem Eigenschaften und Verhalten bereits existierender Klassen in neuen Klassen wiederverwendet werden können.
- Modularität: Vererbung führt zu einer klaren Trennung der Funktionalität in verschiedenen Klassen, was die Lesbarkeit und Wartbarkeit des Codes verbessert.
- Polymorphismus: Vererbung ist ein Grundstein für das Konzept des Polymorphismus in der objektorientierten Programmierung, das es ermöglicht, Methoden in der abgeleiteten Klasse zu überschreiben und das Verhalten zur Laufzeit zu ändern.

Die Vererbung ist ein leistungsstarkes Konzept, das es Programmierern ermöglicht, komplexe Beziehungen zwischen Klassen zu erstellen und Code effizient und wiederverwendbar zu gestalten. Es ist wichtig, die richtigen Zugriffsmodifizierer zu wählen, um die gewünschte Sichtbarkeit und Sicherheit des Codes zu gewährleisten.
=== Unterschiede zwischen Vererbung in C++ und Java
Obwohl sowohl C++ als auch Java objektorientierte Programmiersprachen sind und das Konzept der Vererbung unterstützen, gibt es einige wichtige Unterschiede in der Art und Weise, wie Vererbung in beiden Sprachen implementiert wird:
- Syntax der Vererbung:
    - In C++ wird die Vererbung durch einen Doppelpunkt : nach dem Namen der abgeleiteten Klasse und dem Zugriffsmodifizierer (public, protected oder private) angegeben.
    - In Java wird die Vererbung durch das Schlüsselwort extends nach dem Namen der abgeleiteten Klasse angegeben.
- Standardzugriffsmodifizierer:
    - In C++ ist der Standardzugriffsmodifizierer für die Vererbung "private". Das bedeutet, dass alle öffentlichen und geschützten Member der Basis-Klasse in der abgeleiteten Klasse als privat gelten.
    - In Java ist der Standardzugriffsmodifizierer für die Vererbung "package-private" (kein Schlüsselwort). Das bedeutet, dass alle Mitglieder der Basis-Klasse, die in derselben Paketebene wie die abgeleitete Klasse liegen, zugänglich sind.
- Multiple Vererbung:
    - In C++ können Klassen mehrere Basis-Klassen haben und somit multiple Vererbung unterstützen.
    - In Java ist die Mehrfachvererbung von Klassen nicht erlaubt. Eine Klasse kann nur von einer einzigen Klasse erben.
- Methodenaufruf und Overriding:
    - In C++ wird das Schlüsselwort virtual verwendet, um eine Methode als virtuell zu deklarieren, damit sie durch Methodenaufrufe in der abgeleiteten Klasse überschrieben werden kann.
    - In Java sind alle nicht-statischen Methoden standardmäßig virtuell, d.h., sie können in der abgeleiteten Klasse überschrieben werden. Das Schlüsselwort final verhindert das Überschreiben einer Methode.
- Datenkapselung:
    - In C++ sind die privaten Member der Basis-Klasse standardmäßig in der abgeleiteten Klasse nicht zugänglich. Die Zugriffsbereiche können jedoch durch die Verwendung der Zugriffsmodifizierer (public, protected, private) angepasst werden.
    - In Java sind die privaten Member der Basis-Klasse in der abgeleiteten Klasse nicht zugänglich. Die Zugriffsbereiche können ebenfalls durch die Verwendung der Zugriffsmodifizierer (public, protected, private) gesteuert werden.
- Super-Referenz:
    - In C++ gibt es keine explizite Super-Referenz, um auf Methoden oder Datenmember der Basis-Klasse zuzugreifen.
    - In Java kann das Schlüsselwort super verwendet werden, um auf die Methoden oder Datenmember der Basis-Klasse zuzugreifen.
Trotz dieser Unterschiede ist das Konzept der Vererbung in beiden Sprachen ein wichtiges Prinzip der objektorientierten Programmierung, das es ermöglicht, die Struktur und das Verhalten von Klassen hierarchisch zu organisieren und die Wiederverwendbarkeit von Code zu fördern. Die Wahl zwischen C++ und Java hängt von den spezifischen Anforderungen und Präferenzen des Projekts ab.
== Sichtbarkeitsmodifizierer und Friends in C++ Klassen
In C++ bieten Sichtbarkeitsmodifizierer (public, private, protected) und das friend-Schlüsselwort Möglichkeiten, den Zugriff auf die Member einer Klasse zu steuern. Diese Konzepte sind wichtig für die Datenkapselung und die Definition von Zugriffsrechten zwischen verschiedenen Klassen.
=== public:
Die Member, die als public deklariert sind, sind von überall aus zugänglich, sowohl von der Klasse selbst als auch von anderen Klassen.
Öffentliche Member sind Teil der Schnittstelle der Klasse und können von externen Klassen verwendet werden, um auf die Funktionalität der Klasse zuzugreifen.
Beispiel:
#boxed(```cpp
class MyClass {
public:
    int publicVar;

    void publicFunction() {
        // Code
    }
};```)
=== private:
Die Member, die als private deklariert sind, sind nur von der Klasse selbst zugänglich und können nicht von externen Klassen verwendet werden.
Private Member sind Teil der internen Implementierung der Klasse und sollen vor direktem Zugriff von außen geschützt werden.
Beispiel:
#boxed(```cpp
class MyClass {
private:
    int privateVar;

    void privateFunction() {
        // Code
    }
};```)
=== protected:
Die Member, die als protected deklariert sind, sind von der Klasse selbst und ihren abgeleiteten Klassen zugänglich, aber nicht von anderen externen Klassen.
Geschützte Member werden häufig verwendet, um Eigenschaften zu definieren, die nur für abgeleitete Klassen relevant sind, aber vor direktem Zugriff von außen geschützt werden sollen.
Beispiel:
#boxed(```cpp
class BaseClass {
protected:
    int protectedVar;

    void protectedFunction() {
        // Code
    }
};```)
=== friends:
Das friend-Schlüsselwort ermöglicht es einer anderen Klasse, private Member einer Klasse zu erreichen und auf sie zuzugreifen. Es gewährt einer anderen Klasse spezielle Zugriffsrechte.
Eine Funktion oder eine ganze Klasse kann als Freund deklariert werden, indem sie in der Klassendefinition mit dem friend-Schlüsselwort vorangestellt wird.
Beispiel:
#boxed(```cpp
class FriendClass {
public:
    void accessPrivateMember(MyClass& obj) {
        cout << "FriendClass can access private member: " << obj.privateVar << endl;
    }
};

class MyClass {
private:
    int privateVar;

    friend class FriendClass; // FriendClass hat Zugriff auf private Member von MyClass

public:
    void publicFunction() {
        // Code
    }
};```)
Die Verwendung der Sichtbarkeitsmodifizierer und des friend-Schlüsselworts ermöglicht es, die Datenkapselung in C++ zu steuern und die Sicherheit und den Zugriff auf die Member einer Klasse zu definieren. Die richtige Wahl der Zugriffsebenen hängt von den Designentscheidungen und der Funktionalität der Klasse ab.
== Mehrfachvererbung in C++
Mehrfachvererbung ist ein Konzept in C++, das es einer abgeleiteten Klasse ermöglicht, Eigenschaften und Verhalten von mehreren Basis-Klassen zu erben. Mit der Mehrfachvererbung kann eine Klasse von mehr als einer Basisklasse abgeleitet werden, was in einigen Szenarien nützlich sein kann, aber auch komplexe Probleme mit sich bringen kann.
=== Syntax:
Die Syntax für die Mehrfachvererbung in C++ lautet:
#boxed(```cpp
class DerivedClass : accessSpecifier BaseClass1, accessSpecifier BaseClass2, ... {
    // Member und Funktionen der abgeleiteten Klasse
};```)
=== Zugriffsmodifizierer:
Jede Basisklasse in der Mehrfachvererbung kann einen eigenen Zugriffsmodifizierer haben, der angibt, wie die Member der Basisklasse in der abgeleiteten Klasse zugänglich sind.
Die Zugriffsspezifizierer public, protected oder private können vor den Basisklassennamen in der abgeleiteten Klasse platziert werden, um den Zugriff zu steuern. Der Zugriff auf die Member jeder Basisklasse richtet sich dann nach dem entsprechenden Zugriffsspezifizierer.
Beispiel:
#boxed(```cpp
// Basisklasse 1
class BaseClass1 {
public:
    void display1() {
        cout << "BaseClass1::display1()" << endl;
    }
};

// Basisklasse 2
class BaseClass2 {
public:
    void display2() {
        cout << "BaseClass2::display2()" << endl;
    }
};

// Abgeleitete Klasse von BaseClass1 und BaseClass2
class DerivedClass : public BaseClass1, private BaseClass2 {
public:
    void displayDerived() {
        display1(); // Zugriff auf öffentliche Member von BaseClass1
        //display2(); // Zugriff auf private Member von BaseClass2 nicht möglich, da private geerbt wurde

        cout << "DerivedClass::displayDerived()" << endl;
    }
};```)
=== Vererbungsbaum und Diamantproblem:
Mehrfachvererbung kann zu einem sogenannten "Diamantproblem" führen, wenn eine abgeleitete Klasse von zwei Basisklassen erbt, die wiederum eine gemeinsame Basis haben. Dadurch entsteht ein Vererbungsbaum, der die Diamantform hat, und es kann zu Konflikten bei der Vererbung von Membern kommen.
In C++ kann das Diamantproblem durch virtuelle Vererbung gelöst werden, bei der die gemeinsame Basisklasse nur einmal instanziiert wird, auch wenn sie mehrfach in der Vererbungshierarchie auftritt.
=== Virtuelle Vererbung:
Virtuelle Vererbung wird erreicht, indem das Schlüsselwort virtual vor die Basisklassendeklaration in der abgeleiteten Klasse platziert wird.
Dadurch wird sichergestellt, dass nur eine einzige Instanz der gemeinsamen Basisklasse existiert, und das Diamantproblem wird vermieden.
Beispiel:
#boxed(```cpp
class BaseClass {
public:
    int value;
};

class BaseClass1 : virtual public BaseClass {
};

class BaseClass2 : virtual public BaseClass {
};

class DerivedClass : public BaseClass1, public BaseClass2 {
};

int main() {
    DerivedClass obj;
    obj.BaseClass::value = 10; // Zugriff auf das gemeinsame Member "value" über den Qualified Name
    cout << obj.BaseClass::value << endl; // Ausgabe: 10
    return 0;
}```)
=== Zusammenfassung:
Mehrfachvererbung ist ein leistungsstarkes Konzept in C++, das es einer abgeleiteten Klasse ermöglicht, von mehreren Basisklassen zu erben. Dies kann nützlich sein, um die Wiederverwendung von Code zu fördern und komplexe Klassenhierarchien zu erstellen. Jedoch kann die Mehrfachvererbung auch zu Herausforderungen führen, insbesondere im Zusammenhang mit dem Diamantproblem. Durch die Verwendung von virtueller Vererbung kann das Diamantproblem gelöst werden, indem sicherstellt wird, dass nur eine einzige Instanz der gemeinsamen Basisklasse existiert.
== Klassenvariablen und Klassenmethoden
Klassenvariablen und Klassenmethoden sind spezielle Elemente in C++ Klassen, die nicht an eine bestimmte Instanz der Klasse gebunden sind, sondern von allen Instanzen einer Klasse gemeinsam genutzt werden. Diese werden auch als statische Member bezeichnet, da sie mit der Klasse selbst und nicht mit den Objekten der Klasse verbunden sind.
=== Klassenvariablen:
Eine Klassenvariable ist eine Variable, die von allen Instanzen einer Klasse gemeinsam genutzt wird.
Sie wird mit dem Schlüsselwort static deklariert und muss außerhalb der Klasse definiert werden, um Speicherplatz für die Variable zu reservieren.
Klassenvariablen werden üblicherweise verwendet, um Eigenschaften oder Informationen zu speichern, die für alle Objekte einer Klasse gleich sind.
Beispiel:
#boxed(```cpp
class MyClass {
public:
    static int classVariable; // Deklaration der Klassenvariablen
};

int MyClass::classVariable = 0; // Definition der Klassenvariablen

int main() {
    MyClass obj1, obj2;
    obj1.classVariable = 10;
    cout << obj2.classVariable; // Ausgabe: 10 (da die Klassenvariable für alle Objekte gleich ist)
    return 0;
}```)
=== Klassenmethoden:
Eine Klassenmethode ist eine Methode, die auf Klassenebene definiert wird und nicht an ein spezifisches Objekt der Klasse gebunden ist.
Sie wird ebenfalls mit dem Schlüsselwort static deklariert und kann nur auf die Klassenvariablen und anderen statischen Methoden zugreifen.
Klassenmethoden werden häufig verwendet, um Operationen auszuführen, die mit der Klasse als Ganzes zusammenhängen, aber nicht von den spezifischen Eigenschaften eines Objekts abhängen.
Beispiel:
#boxed(```cpp
class MyClass {
public:
    static int classVariable;

    static void staticMethod() {
        cout << "This is a static method." << endl;
    }
};

int MyClass::classVariable = 0;

int main() {
    MyClass::staticMethod(); // Aufruf der Klassenmethode ohne ein Objekt zu instanziieren
    return 0;
}```)
=== Hinweise zur Verwendung:
Klassenvariablen und Klassenmethoden sind für die gesamte Klasse gemeinsam und haben keinen Zugriff auf die nicht-statischen Member oder Methoden.
Sie können verwendet werden, um z. B. eine Zählervariable für alle Objekte einer Klasse zu erstellen, oder um Hilfsfunktionen zu definieren, die mit der Klasse selbst zusammenhängen, aber nicht auf die Objekte angewiesen sind.
=== Zusammenfassung:
Klassenvariablen und Klassenmethoden sind spezielle Elemente in C++ Klassen, die von allen Objekten einer Klasse gemeinsam genutzt werden. Sie werden mit dem Schlüsselwort static deklariert und sind unabhängig von den spezifischen Instanzen der Klasse. Klassenvariablen werden verwendet, um Eigenschaften zu speichern, die für alle Objekte gleich sind, während Klassenmethoden verwendet werden, um Operationen auszuführen, die mit der Klasse als Ganzes zusammenhängen.
== Virtuelle Funktionen
Virtuelle Funktionen sind ein leistungsstarkes Konzept in der objektorientierten Programmierung, das es ermöglicht, Polymorphismus zu erreichen. Polymorphismus bedeutet, dass eine Methode in der Basisklasse eine unterschiedliche Implementierung in den abgeleiteten Klassen haben kann, und der Compiler zur Laufzeit die richtige Implementierung basierend auf dem tatsächlichen Typ des Objekts auswählt.
=== Grundlagen:
Eine virtuelle Funktion wird in der Basisklasse mit dem Schlüsselwort virtual deklariert, und die abgeleiteten Klassen überschreiben diese Funktion mit einer eigenen Implementierung, wenn sie dies wünschen.
Die Basisklasse kann auch eine Standardimplementierung der virtuellen Funktion bereitstellen, die von den abgeleiteten Klassen verwendet wird, wenn sie die Funktion nicht explizit überschreiben.
=== Dynamische Bindung:
Die Auswahl der richtigen Implementierung einer virtuellen Funktion zur Laufzeit wird als dynamische Bindung bezeichnet. Sie erfolgt erst zur Laufzeit, wenn das Programm ausgeführt wird.
Der Compiler verwendet die vtable (Virtual Table) oder VMT (Virtual Method Table), um die virtuellen Funktionen aufzulösen.
Beispiel:
#boxed(```cpp
#include <iostream>
using namespace std;

class Shape {
public:
    virtual void draw() {
        cout << "Drawing a shape." << endl;
    }
};

class Circle : public Shape {
public:
    void draw() override {
        cout << "Drawing a circle." << endl;
    }
};

class Square : public Shape {
public:
    void draw() override {
        cout << "Drawing a square." << endl;
    }
};

int main() {
    Shape* shape1 = new Circle();
    Shape* shape2 = new Square();

    shape1->draw(); // Dynamische Bindung: Aufruf der draw()-Methode von Circle
    shape2->draw(); // Dynamische Bindung: Aufruf der draw()-Methode von Square

    delete shape1;
    delete shape2;
    return 0;
}```)
=== Hinweise:
Virtuelle Funktionen sollten nur in Klassen verwendet werden, die als Basisklassen dienen und von denen andere Klassen erben.
Klassen, die von einer Basisklasse abgeleitet werden, können die virtuelle Funktion der Basisklasse als override markieren, um zu verdeutlichen, dass sie die Funktion überschreiben.
Virtuelle Funktionen können auch als rein virtuelle Funktionen deklariert werden, indem sie mit = 0 initialisiert werden. Diese müssen in den abgeleiteten Klassen überschrieben werden und können in der Basisklasse keine Implementierung haben.
=== Zusammenfassung:
Virtuelle Funktionen ermöglichen es, Polymorphismus in C++ zu erreichen, indem die Auswahl der richtigen Implementierung einer Funktion zur Laufzeit ermöglicht wird. Die dynamische Bindung erfolgt zur Laufzeit basierend auf dem tatsächlichen Typ des Objekts. Virtuelle Funktionen sollten in Basisklassen verwendet werden, um die Flexibilität und Wiederverwendbarkeit von Code zu erhöhen.
== Polymorphismus in C++
Polymorphismus ist eines der wichtigsten Konzepte in der objektorientierten Programmierung. Es ermöglicht, dass ein und dieselbe Funktion verschiedene Implementierungen haben kann, abhängig von den spezifischen Typen der Objekte, auf die sie angewendet wird. Dies führt zu flexiblerem und wiederverwendbarem Code.

=== Statischer Polymorphismus (Compile-Time Polymorphismus):
Statischer Polymorphismus tritt zur Übersetzungszeit (Compile-Time) auf und bezieht sich auf Situationen, in denen die Entscheidung, welche Methode aufgerufen wird, bereits zur Compile-Zeit bekannt ist.
==== Funktionenüberladung (Function Overloading):
Funktionenüberladung ist ein Beispiel für statischen Polymorphismus. Hier können mehrere Funktionen denselben Namen haben, aber unterschiedliche Parameterlisten haben. Der Compiler entscheidet zur Compile-Zeit, welche Funktion basierend auf den Argumenten aufgerufen wird.

Beispiel:
#boxed(```cpp
#include <iostream>
using namespace std;

int add(int a, int b) {
    return a + b;
}

double add(double a, double b) {
    return a + b;
}

int main() {
    int result1 = add(2, 3);         // Aufruf von int add(int, int)
    double result2 = add(2.5, 3.5);  // Aufruf von double add(double, double)
    return 0;
}```)
=== Dynamischer Polymorphismus (Run-Time Polymorphismus):
Dynamischer Polymorphismus tritt zur Laufzeit (Run-Time) auf und bezieht sich auf Situationen, in denen die Entscheidung, welche Methode aufgerufen wird, erst während der Laufzeit basierend auf dem tatsächlichen Typ des Objekts erfolgt.
==== Virtuelle Funktionen (Virtual Functions):
Virtuelle Funktionen sind ein leistungsstarkes Konzept, das es ermöglicht, dynamischen Polymorphismus zu erreichen. Eine virtuelle Funktion in der Basisklasse kann von abgeleiteten Klassen überschrieben werden, um unterschiedliche Implementierungen bereitzustellen. Zur Laufzeit wird die richtige Implementierung der virtuellen Funktion basierend auf dem tatsächlichen Typ des Objekts ausgewählt.

Beispiel:
#boxed(```cpp
#include <iostream>
using namespace std;

class Shape {
public:
    virtual void draw() {
        cout << "Drawing a shape." << endl;
    }
};

class Circle : public Shape {
public:
    void draw() override {
        cout << "Drawing a circle." << endl;
    }
};

class Square : public Shape {
public:
    void draw() override {
        cout << "Drawing a square." << endl;
    }
};

int main() {
    Shape* shape1 = new Circle();
    Shape* shape2 = new Square();

    shape1->draw(); // Dynamische Bindung: Aufruf der draw()-Methode von Circle
    shape2->draw(); // Dynamische Bindung: Aufruf der draw()-Methode von Square

    delete shape1;
    delete shape2;
    return 0;
}```)
==== Abstrakte Klassen (Abstract Classes):
Eine abstrakte Klasse ist eine Klasse, die mindestens eine reine virtuelle Funktion enthält. Eine reine virtuelle Funktion wird durch das Hinzufügen des = 0 Modifikators gekennzeichnet und hat keine Implementierung in der Basisklasse. Abstrakte Klassen können nicht direkt instanziiert werden, sondern dienen als Schnittstellen, von denen andere Klassen erben und die virtuellen Funktionen implementieren müssen.

Beispiel:
#boxed(```cpp
#include <iostream>
using namespace std;

class Shape {
public:
    virtual void draw() = 0; // Reine virtuelle Funktion
};

class Circle : public Shape {
public:
    void draw() override {
        cout << "Drawing a circle." << endl;
    }
};

int main() {
    // Shape* shape = new Shape(); // Fehler: Abstract class cannot be instantiated
    Shape* shape = new Circle();
    shape->draw(); // Dynamische Bindung: Aufruf der draw()-Methode von Circle
    delete shape;
    return 0;
}```)
=== Hinweise:
Polymorphismus verbessert die Flexibilität und Erweiterbarkeit von Code, da verschiedene Klassen die gleichen Funktionen verwenden können, aber unterschiedliche Implementierungen bereitstellen.
Statischer Polymorphismus wird durch Überladung und Vorlagen (Templates) erreicht, während dynamischer Polymorphismus durch virtuelle Funktionen und abstrakte Klassen erreicht wird.
Bei der Verwendung von dynamischem Polymorphismus ist es ratsam, einen Zeiger oder eine Referenz auf die Basisklasse zu verwenden, um die Flexibilität der Klassenhierarchie zu gewährleisten.
=== Zusammenfassung:
Polymorphismus in C++ ermöglicht es, dass Funktionen unterschiedliche Implementierungen haben können, basierend auf dem tatsächlichen Typ des Objekts, auf dem sie angewendet werden. Statischer Polymorphismus wird zur Compile-Zeit durch Überladung und Vorlagen erreicht, während dynamischer Polymorphismus zur Laufzeit durch virtuelle Funktionen und abstrakte Klassen ermöglicht wird. Dynamischer Polymorphismus verbessert die Flexibilität und Erweiterbarkeit von Code, da er es ermöglicht, dass verschiedene Klassen die gleichen Funktionen verwenden, aber unterschiedliche Implementierungen bereitstellen.
= Präprozessor
Der Präprozessor ist eine Phase des Übersetzungsprozesses in C++, die vor der eigentlichen Kompilierung stattfindet. Er führt spezielle Anweisungen, die mit einem vorangestellten `#` gekennzeichnet sind, aus, bevor der Compiler den eigentlichen Quellcode verarbeitet. Der Präprozessor kann den Quellcode manipulieren, indem er bestimmte Teile einfügt, ersetzt oder aus dem Code entfernt, bevor der Compiler den endgültigen Maschinencode generiert.
== Verwendung von `#include`:
Eine der häufigsten Verwendungen des Präprozessors ist die Einbindung von Header-Dateien mit der Direktive `#include`. Header-Dateien enthalten die Deklarationen von Funktionen, Klassen und Variablen, die in anderen Dateien verwendet werden. Durch die Einbindung von Header-Dateien wird der Code modularisiert und ermöglicht die Wiederverwendung von Funktionen und Klassen in verschiedenen Teilen des Programms.

#boxed(```cpp
#include <iostream> // Einbindung der Standard-Header-Datei für Ein- und Ausgabe
#include "myheader.h" // Einbindung einer benutzerdefinierten Header-Datei```)
== Makros mit `#define`:
Mit der Direktive `#define` kann der Präprozessor Makros definieren, die anstelle des definierten Ausdrucks im Quellcode eingefügt werden. Makros sind nützlich, um wiederkehrende Ausdrücke oder Konstanten zu definieren und den Code lesbarer zu machen.

#boxed(```cpp
#define PI 3.14159
#define SQUARE(x) ((x) * (x))

int main() {
    double radius = 2.5;
    double area = PI * SQUARE(radius);
    // Nach der Expansion: double area = 3.14159 * ((2.5) * (2.5));
    return 0;
}```)
== Bedingte Kompilierung:
Der Präprozessor ermöglicht auch die bedingte Kompilierung von Codeblöcken. Mit den Direktiven `#ifdef`, `#ifndef`, `#else` und `#endif` kann der Code je nach Bedingung kompiliert oder übersprungen werden.
#boxed(```cpp
#define DEBUG // Definiert das Makro DEBUG für Debugging-Zwecke

int main() {
    #ifdef DEBUG
        // Codeblock wird nur bei aktiviertem DEBUG kompiliert
        cout << "Debugging aktiviert." << endl;
    #else
        cout << "Debugging deaktiviert." << endl;
    #endif
    return 0;
}```)
== Undefinieren von Makros:
Mit der Direktive `#undef` kann der Präprozessor ein zuvor definiertes Makro wieder entfernen.
#boxed(```cpp
#define MY_MACRO 42
#undef MY_MACRO // Undefiniert das zuvor definierte Makro MY_MACRO```)
== Hinweise:
Der Präprozessor ist mächtig, aber auch vorsichtig zu verwenden. Übermäßiger Einsatz von Makros kann den Code unleserlich machen und zu Fehlern führen.
Die meisten modernen C++-Programmierer bevorzugen den Einsatz von const-Variablen oder Funktionen, um statische Konstanten zu definieren, anstatt Makros zu verwenden.
Die Verwendung des Präprozessors sollte auf spezifische Szenarien beschränkt sein, in denen sie tatsächlich notwendig ist, wie die Einbindung von Header-Dateien und bedingte Kompilierung.
Zusammenfassung:
Der Präprozessor in C++ führt spezielle Anweisungen mit der Syntax `#` vor der eigentlichen Kompilierung aus. Er ermöglicht die Einbindung von Header-Dateien, das Definieren von Makros, die bedingte Kompilierung und das Entfernen von Makros. Der Präprozessor ist ein nützliches Werkzeug, sollte jedoch sparsam und mit Bedacht eingesetzt werden, um den Code lesbar und fehlerfrei zu halten.
= Compiler
Der Compiler ist ein entscheidender Bestandteil des C++-Entwicklungsprozesses. Er ist für die Umwandlung des menschenlesbaren C++-Quellcodes in ausführbaren Maschinencode verantwortlich. Der Compiler arbeitet in verschiedenen Phasen und durchläuft dabei den Prozess des Lexikalischen Analyse, Syntaktischen Analyse und die Semantische Analyse, um den Quellcode zu verstehen und zu optimieren.
== Phasen des Kompilierungsprozesses:
- *Lexikalische Analyse*: In dieser Phase wird der Quellcode in einzelne Token aufgeteilt. Ein Token ist eine einzelne Einheit des Codes, wie ein Schlüsselwort, ein Bezeichner, ein Operator oder eine Konstante. Der Compiler identifiziert die Tokens und erstellt eine Liste davon, die später für die syntaktische Analyse verwendet wird.
- *Syntaktische Analyse*: In dieser Phase analysiert der Compiler die Reihenfolge und Struktur der Tokens, um die Syntax des Programms zu überprüfen. Er stellt sicher, dass der Quellcode den Regeln der C++-Syntax entspricht. Wenn Fehler gefunden werden, gibt der Compiler entsprechende Fehlermeldungen aus.
- *Semantische Analyse*: Hier überprüft der Compiler die Bedeutung und Gültigkeit des Codes. Er prüft beispielsweise, ob die Variablen und Funktionen korrekt deklariert wurden und ob die Operationen mit den richtigen Datentypen durchgeführt werden. Auch hier werden Fehlermeldungen ausgegeben, wenn die Semantik des Codes inkorrekt ist.
- *Code-Optimierung*: Nachdem der Compiler den Quellcode erfolgreich analysiert hat, optimiert er den generierten Maschinencode, um die Ausführungsgeschwindigkeit und den Speicherverbrauch zu verbessern. Der Compiler sucht nach Möglichkeiten, den Code zu vereinfachen und unnötige Anweisungen zu entfernen.
- *Code-Generierung*: Schließlich erzeugt der Compiler den ausführbaren Maschinencode, der von der CPU des Computers ausgeführt werden kann. Dieser Maschinencode wird in einer ausführbaren Datei gespeichert, die das C++-Programm darstellt.
== Verwendung des Compilers:
Um ein C++-Programm zu kompilieren, verwendet man normalerweise die Kommandozeile oder eine integrierte Entwicklungsumgebung (IDE). Die Kommandozeile bietet die Möglichkeit, den Compiler mit den gewünschten Optionen zu verwenden und die Ausgabe zu steuern.
#boxed(```bash
g++ -o output.exe source.cpp```)
In diesem Beispiel verwendet der Compiler "g++" den Quellcode "source.cpp" und erzeugt die ausführbare Datei "output.exe".
== Zusammenfassung:
Der Compiler ist ein essentieller Bestandteil des C++-Entwicklungsprozesses. Er übersetzt den menschenlesbaren C++-Quellcode in ausführbaren Maschinencode, den die CPU des Computers verstehen kann. Der Compiler durchläuft dabei verschiedene Phasen wie die lexikalische, syntaktische und semantische Analyse, um den Quellcode zu verstehen und zu optimieren. Die korrekte Verwendung des Compilers ist entscheidend, um fehlerfreie und effiziente C++-Programme zu erstellen.
= Linker
Der Linker ist ein weiterer wichtiger Bestandteil des C++-Kompilierungsprozesses. Nachdem der Compiler den Quellcode in ausführbaren Maschinencode übersetzt hat, ist der Linker dafür verantwortlich, verschiedene Objektdateien und Bibliotheken zu verknüpfen und eine ausführbare Datei zu erzeugen. Der Linker übernimmt diese Aufgabe, indem er Referenzen zu Funktionen und Variablen in verschiedenen Quelldateien auflöst und sie zu einem ausführbaren Programm zusammenfügt.
== Phasen des Linker-Vorgangs:
- *Objektdateien erstellen*: Der Compiler übersetzt jede C++-Quelldatei in ein Objektfile (.obj, .o), das den Maschinencode und die Informationen über die Symbole (Funktionen, Variablen) enthält, die von anderen Dateien referenziert werden.
- *Symbolauflösung*: Der Linker durchsucht alle Objektdateien und sucht nach Referenzen zu Funktionen und Variablen, die in anderen Dateien definiert sind. Wenn eine Referenz gefunden wird, sucht der Linker nach der Definition des Symbols.
- *Verknüpfung*: In dieser Phase werden die gefundenen Referenzen zu den richtigen Definitionen zusammengeführt. Der Linker verbindet die Funktionen und Variablen, die über verschiedene Dateien verteilt sind, und erstellt eine einzige ausführbare Datei.
- *Auflösung externer Bibliotheken*: Wenn das Programm externe Bibliotheken verwendet, sucht der Linker nach den erforderlichen Funktionen und Variablen in diesen Bibliotheken und fügt sie in die ausführbare Datei ein.
- *Adressauflösung*: Der Linker legt die endgültigen Adressen für den Maschinencode und die Variablen im Speicher fest, um sicherzustellen, dass das Programm ordnungsgemäß ausgeführt werden kann.
== Statisches Linken vs. Dynamisches Linken:
Es gibt zwei Arten des Linkens: statisches Linken und dynamisches Linken.
- Beim statischen Linken werden alle verwendeten Bibliotheken und Funktionen in die ausführbare Datei eingebunden. Dadurch ist die Datei größer, aber das Programm kann auf jedem System ausgeführt werden, ohne dass zusätzliche Bibliotheken benötigt werden.
- Beim dynamischen Linken wird das Programm so erstellt, dass es zur Laufzeit externe Bibliotheken verwendet. Die ausführbare Datei ist kleiner, aber das Programm benötigt die entsprechenden Bibliotheken, um ausgeführt zu werden. Dies ermöglicht eine bessere Wiederverwendung von Bibliotheken und eine einfachere Aktualisierung von Programmen, die dieselben Bibliotheken verwenden.
== Zusammenfassung:
Der Linker ist ein wichtiger Schritt im C++-Kompilierungsprozess, der die verschiedenen Objektdateien und Bibliotheken verknüpft und eine ausführbare Datei erstellt. Der Linker löst Referenzen zu Funktionen und Variablen auf, die in verschiedenen Dateien definiert sind, und fügt sie zu einem ausführbaren Programm zusammen. Es gibt zwei Arten des Linkens: statisches Linken, bei dem alle Bibliotheken in die Datei eingebunden werden, und dynamisches Linken, bei dem externe Bibliotheken zur Laufzeit verwendet werden. Der Linker ist unerlässlich, um vollständige und lauffähige C++-Programme zu erstellen.
