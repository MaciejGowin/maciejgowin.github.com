![WSB](https://maciejgowin.github.io/assets/img/wsb-merito-logo.png)

# Programowanie aplikacji Java

## Maciej Gowin

### Zjazd 8 - zadania dodatkowe

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
# **Programowanie: zadanie dodatkowe**

Przeanalizuj dokumentację Logback oraz rozszerz przykład o pisanie logów do plików.

---
# **Programowanie: zadanie dodatkowe**

Stwórz program wczytujący dane w formacie JSON do obiektu przy pomocy bibliotek Lombok oraz Jackson.

Format pliku jest zdefiniowany jako:
```
{
    "price": "12 PLN"
}
```

---
Gdzie wartość "12 PLN" będzie odpowiadała obiektowi klasy `Price`:

```
public class Price {
    private Integer value;
    private String currency;
}
```

---
# **Programowanie: zadanie dodatkowe**

Rozszerz przykład 79 o połączenie z bazą danych przy pomocy biblioteki Hibernate. Połączenie zadeklaruj jako ziarno `Spring`. Zdefiniuj poprawne encje pozwalające na zapis i odczyt.
