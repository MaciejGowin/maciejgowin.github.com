![WSB](LOGO)

# Programowanie aplikacji w Java

## Maciej Gowin

### Zjazd 4 - zadania dodatkowe

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
# **Programowanie: zadanie dodatkowe 18**

Stwórz aplikację wykorzystującą Apache Maven do procesu budowania. Aplikacja powinna przyjmować dwa parametry liczbowe: wzrost (w cm) oraz wagę (w kg) pozwalające na obliczenie wskaźnika BMI w zaokrągleniu do dwóch miejsc po przecinku.
Program powinien prawidłowo weryfikować dane wejściowe. W przypadku podania złych parametrów powinno zostać zgłoszone ostrzeżenie.

Przykładowe wywołanie:

```
> java -jar converter.jar 180 85.5
Your BMI: 28.39
```

```
> java -jar converter.jar 180 xx
Incorrect input parameters. Should be: [height in cm] [weight in kg]
```

```
> java -jar converter.jar 180
Wrong number of parameters. Should be: [height in cm] [weight in kg]
```
