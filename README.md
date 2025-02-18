# Opis bazy danych szpitala

Baza danych została zaprojektowana do zarządzania informacjami w szpitalu, obejmującą pacjentów, pracowników, wizyty, hospitalizacje, leki, sprzęt medyczny oraz wiele innych aspektów związanych z funkcjonowaniem placówki medycznej. Poniżej znajduje się szczegółowy opis struktury bazy danych oraz zastosowanych funkcjonalności.

## Struktura bazy danych

### Tabele

1. **doktor_specjalizacja**  
   Tabela łącząca lekarzy z ich specjalizacjami. Każdy lekarz może mieć wiele specjalizacji.

2. **doktorzy**  
   Zawiera informacje o lekarzach, takie jak numer licencji.

3. **grafik**  
   Przechowuje informacje o grafikach pracy pracowników, w tym daty rozpoczęcia i zakończenia pracy.

4. **historia**  
   Zawiera historię chorób i leczenia pacjentów. Każdy wpis jest powiązany z konkretnym pacjentem.

5. **historia_logowania**  
   Przechowuje historię logowań użytkowników do systemu, w tym adresy IP i daty logowania.

6. **hospitalizacja**  
   Zawiera informacje o hospitalizacjach pacjentów, w tym daty rozpoczęcia i zakończenia pobytu, oraz powiązania z salami i płatnościami.

7. **hospitalizacja_doktor**  
   Tabela łącząca hospitalizacje z lekarzami, którzy się nimi zajmują.

8. **kwalifikacja**  
   Przechowuje informacje o kwalifikacjach pielęgniarek.

9. **lek**  
   Zawiera informacje o lekach, w tym ich nazwy, ilości, typy opakowań i dawkowanie.

10. **lek-oddzial**  
    Tabela łącząca leki z oddziałami, w których są dostępne.

11. **nalezy**  
    Tabela łącząca pracowników z oddziałami, do których są przypisani.

12. **oddzial**  
    Przechowuje informacje o oddziałach szpitalnych, w tym nazwy i ordynatorów.

13. **oddzial-sprzet**  
    Tabela łącząca sprzęt medyczny z oddziałami, w których jest używany.

14. **pacjent**  
    Zawiera informacje o pacjentach, w tym imiona, nazwiska, daty urodzenia, PESEL i rodzaj ubezpieczenia.

15. **pielegniarka_kwalifikacja**  
    Tabela łącząca pielęgniarki z ich kwalifikacjami.

16. **pielegniarki**  
    Zawiera informacje o pielęgniarkach, w tym ich wykształcenie.

17. **platnosc**  
    Przechowuje informacje o płatnościach za usługi medyczne, w tym sposób płatności i kwoty.

18. **pracownik**  
    Zawiera informacje o pracownikach szpitala, w tym imiona, nazwiska, numery telefonów i typy pracowników (lekarz/pielęgniarka).

19. **role**  
    Przechowuje informacje o rolach użytkowników w systemie (np. lekarz, pielęgniarka, administrator).

20. **role_uprawnienia**  
    Tabela łącząca role z uprawnieniami, które posiadają.

21. **sala**  
    Zawiera informacje o salach szpitalnych, w tym numery, ilość miejsc i powiązania z oddziałami.

22. **sala_udogodnienie**  
    Tabela łącząca sale z udogodnieniami, które oferują (np. telewizor, klimatyzacja).

23. **specjalizacja**  
    Przechowuje informacje o specjalizacjach medycznych.

24. **sprzet**  
    Zawiera informacje o sprzęcie medycznym dostępnym w szpitalu.

25. **typ_opakowania**  
    Przechowuje informacje o typach opakowań leków (np. blister, butelka).

26. **udogodnienie**  
    Zawiera informacje o udogodnieniach dostępnych w salach szpitalnych.

27. **uprawnienia**  
    Przechowuje informacje o uprawnieniach, które mogą być przypisane do ról.

28. **uzytkownicy**  
    Zawiera informacje o użytkownikach systemu, w tym imiona, nazwiska, adresy e-mail i hasła.

29. **uzytkownicy_role**  
    Tabela łącząca użytkowników z rolami, które posiadają.

30. **wizyta**  
    Przechowuje informacje o wizytach pacjentów, w tym daty wizyt, lekarzy i płatności.

### Widoki

1. **Grafik pracowników**  
   Widok pokazujący grafik pracy pracowników.

2. **Specjalizacje lekarzy**  
   Widok pokazujący lekarzy wraz z ich specjalizacjami.

3. **Aktualnie hospitalizowani pacjenci**  
   Widok pokazujący pacjentów aktualnie hospitalizowanych.

4. **Płatności**  
   Widok pokazujący płatności związane z hospitalizacjami i wizytami pacjentów.

5. **Uprawnienia**  
   Widok pokazujący użytkowników wraz z ich rolami i uprawnieniami.

### Procedury i funkcje

1. **DodajWizyte**  
   Procedura dodająca nową wizytę dla pacjenta, sprawdzająca poprawność danych i unikalność terminu.

2. **ObliczCzasPracyPracownikaWMiesiacu**  
   Funkcja obliczająca całkowity czas pracy pracownika w danym miesiącu.

3. **PobierzGrafikPracownika**  
   Procedura zwracająca grafik pracy danego pracownika w określonym miesiącu i roku.

4. **PobierzHistoriePacjenta**  
   Funkcja zwracająca historię chorób i leczenia pacjenta w formacie JSON.

5. **PobierzPacjentowNaOddziale**  
   Procedura zwracająca listę pacjentów aktualnie hospitalizowanych na danym oddziale.

6. **ZwrocHistoriePacjenta**  
   Procedura zwracająca historię chorób i leczenia pacjenta.

### Wyzwalacze

1. **grafik_before_insert**  
   Wyzwalacz sprawdzający poprawność dat rozpoczęcia i zakończenia pracy przed dodaniem nowego wpisu do grafiku.

2. **grafik_before_update**  
   Wyzwalacz sprawdzający poprawność dat rozpoczęcia i zakończenia pracy przed aktualizacją wpisu w grafiku.

3. **before_insert_historia_logowania**  
   Wyzwalacz sprawdzający, czy użytkownik istnieje przed dodaniem wpisu do historii logowania.

### Eventy

1. **dodaj_partycje_na_nowy_rok**  
   Event dodający nową partycję do tabeli `historia_logowania` na początku każdego roku.

## Zastosowane funkcjonalności

- **Zarządzanie pracownikami**: Baza danych umożliwia zarządzanie informacjami o pracownikach, w tym ich specjalizacjach, kwalifikacjach i grafikach pracy.
- **Zarządzanie pacjentami**: Baza przechowuje informacje o pacjentach, ich historiach chorób, hospitalizacjach i wizytach.
- **Zarządzanie płatnościami**: Baza umożliwia śledzenie płatności za usługi medyczne, zarówno za wizyty, jak i hospitalizacje.
- **Zarządzanie lekami i sprzętem**: Baza przechowuje informacje o lekach i sprzęcie medycznym dostępnym w szpitalu.
- **Bezpieczeństwo i uprawnienia**: Baza umożliwia zarządzanie rolami i uprawnieniami użytkowników systemu.
- **Automatyzacja**: Dzięki wyzwalaczom i eventom baza automatycznie sprawdza poprawność danych i zarządza partycjami w tabelach.
