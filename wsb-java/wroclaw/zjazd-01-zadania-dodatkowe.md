![WSB](https://maciejgowin.github.io/assets/img/wsb-logo-wroclaw.png)

# Programowanie aplikacji w Java

## Maciej Gowin

### Zjazd 1 - zadania dodatkowe

---

# Linki

#### Opis
https://maciejgowin.github.io/wsb-java/

#### Kod źródłowy przykładów oraz zadań
https://github.com/MaciejGowin/wsb-programowanie-aplikacji-java

---
# Zadania dodatkowe

Wszystkie zadanie dodatkowe zostały stworzone z myślą utrwalenia materiału przerobionego na zjeździe. Chociaż mogą one zostać rozwiązane na wiele sposobów, zostały skonstruowane w sposób umożliwiający ukończenie ich jedynie przy użyciu poznanych już technik.

---
# **Programowanie: zadanie dodatkowe 01**

Stwórz klasę `Person` zawierającą własności `String firstName` oraz `String lastName`. Klasa ta powinna posiadać metody:
- `String getFullName()` pobierjącą pełne imię i nazwisko osoby przedzielonego spacją
  - w przypadku braku danej wartości powinna ona zostać pominięta
  - dla przykładu: `Maciej Gowin`, `Gowin`
- statyczną `Person constructPerson(String firstName, String lastName)` tworzącą nową instancję `Person`

W metodzie `main` zainicjalizuj tablicę osób przy pomocy `constructPerson`. Zdefiniuj metodę statyczną: `familyMembers(String lastName, Person[] persons)` wypisującą osoby o danym nazwisku.

Przetestuj działanie w metodzie `main`.

---
# **Programowanie: zadanie dodatkowe 02**

Zdefiniuj statyczną metodę `String[] reverse(String[] items)` odwracającą kolejność elementów w tablicy. Dodatkowe zdefiniuj metodę statyczną `void print(String[] items)` wypisującą elementy w tablicy w formacie `Table: element1 element2 element3`.

Przetestuj działanie w metodzie `main`.

---
# **Programowanie: zadanie dodatkowe 03**

Zdefiniuj statyczną metodę `int max(int[] items)` wyszukującą największą wartości w tablicy. Dla pustej tablicy zwróć wartość `0`.

Przetestuj działanie w metodzie `main`.

---
# **Programowanie: zadanie dodatkowe 04**

Zdefiniuj klasę `DynamicTable` imitującą zachowanie dynamicznej tabeli wartości typu `double` zmieniającej swój rozmiar. Klasa powinna posiadać następujące metody:
- `void addItem(double newItem)` dodającą nową wartość na koniec tabeli
- `void deleteItem(int deleteIndex)` usuwającą element pod danym indeksem, w przypadku indeksów poza zakresem operacja powinna zostać pominięta
- `String toString()` zwracającą tekstową reprezentację tablicy, dla przykładu: `[1.0, 2.0, 3.0]`

Przetestuj działanie w metodzie `main`.

---
# **Programowanie: zadanie dodatkowe 05**

Zdefiniuj klasę `UniqueTable` imitującą zachowanie dynamicznej tabeli z unikatowymi wartościami typu `double` zmieniającej swój rozmiar. Klasa powinna posiadać następujące metody:
- `void addItem(double newItem)` dodającą nową wartość na koniec tabeli, jeżeli wartość ta jeszcze nie istnieje
- `void deleteItem(double deleteItem)` usuwającą element o danej wartości, jeżeli istnieje
- `String toString()` zwracającą tekstową reprezentację tablicy, dla przykładu: `[1.0, 2.0, 3.0]`

Przetestuj działanie w metodzie `main`.
