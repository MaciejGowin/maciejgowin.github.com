![WSB](https://maciejgowin.github.io/assets/img/wsb-merito-logo.png)

# Programowanie aplikacji Java

## Maciej Gowin

### Zjazd 9 - zadania dodatkowe

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
# **Programowanie: zadanie dodatkowe 19**

Stwórz serwis oparty o podejście RESTful pozwalający na konwersję walut oraz pobieranie obecnych kursów walut. Serwis powinien definiować pełną walidację przesyłanych danych do konwersji (weryfikacja zadanej wartości oraz kodów walut biorących udział w konwersji).

---
# **Programowanie: zadanie dodatkowe 20**

Stwórz serwis oparty o podejście RESTful pozwalający na wygenerowanie wszystkich połączeń z jedną przesiadką na podstawie serwisu definiującego połączenia bezpośrednie pod adresem:

```
https://services-api.ryanair.com/views/locate/3/routes
```

Gdzie:
- `airportFrom` to lotnisko wylotu
- `airportTo` to lotnisko przylotu.

---
# **Programowanie: zadanie dodatkowe 21**

Stwórz serwis oparty o podejście RESTful oraz API pozwalające na zarządzanie użytkownikami, oraz przypisanymi do nich rolami.

Aplikacja powinna wspierac następujące operacje:
- użytkownik: listowanie, pobieranie/usuwanie/aktualizacja po identyfikatorze
- rola: listowanie, dodanie, usuwanie w kontekście użytkownika

---
# **Programowanie: zadanie dodatkowe 22**
Stwórz walidator sprawdzający, czy dany ciąg znaków jest poprawnym numerem telefonu.

---
# **Programowanie: zadanie dodatkowe 23**
Stwórz walidator sprawdzający, czy dany ciąg znaków jest poprawnym kodem lotniska. Listę poprawnych kodów lotnisk pobierz z serwisu pod adresem:

```
https://www.ryanair.com/api/views/locate/5/airports/en/active
```
