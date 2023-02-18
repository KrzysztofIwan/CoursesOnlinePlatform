# CoursesOnlinePlatform

# Opis działania

Jest to projekt ASP.NET MVC który nosi tytuł "Platforma do zarządzania kursami online". 

1. Osoba która nie jest zalogowana ma dostęp do zobaczenia jakie kursy znajdują się na platformie oraz podglądnięcia ich postawowych danych, nie może ich usuwać, kupować i towrzyć nowych. 

2. Osoba która jest zalogowana i ma role podstawową (Common) może kupować kursy oraz je przeglądać.

3. Osoba która jest zalogowana i ma role administratora (Admin) ma pełen dostęp do wszystkich funkcjonalności czyli:
    - dodawanie
    - usuwanie
    - edytowanie
    
#Utworzone konta:

a) Podstawowi użytkownicy:
  - Email : Krzysztof@Iwan.pl , Hasło: zaq1@WSXhaslo@
  - Email : Mateusz@Jaro.pl , Hasło: Pomarancza2334@
  
b) Administratorzy:
  - Email : Admin@CoursPlatform.com, Hasło: @dministr@tor
  - Email : Admin2@CoursPlatform.com, Hasło: Pl@tf0rm@Cours
   

# Specyfikacja

Użyte technologie:
  - ASP.NET
  - .NET 6.0
  - Microsoft.AspNetCore.Identity.EntityFrameWorkCore 6.0.13
  - Microsoft.AspNetCore.Identity.UI 6.0.13
  - Microsoft.EntityFrameworkCore.Sqlite 6.0.13
  - Microsoft.EntityFrameworkCore 6.0.13
  - Microsoft.EntityFrameworkCore.SqlServer 6.0.13
  - Microsoft.EntityFrameworkCore.Tools 6.0.13
  - Microsoft.VisualStudio.Web.CodeGeneration.Design 6.0.11

Wymagania:
  - Microsoft Visual Studio 
  - Microsoft SQL Server ( na którym znajduje się baza danych )

Struktura Projektu:
  - Areas : Folder zawierający obługę Identity
  - Controllers : Folder zawierający wszystkie kontrolery w projekcie
  - Data : Folder zawierający Wszystkie contexty wraz z podfolderami z nazwami odnoszącymi się do każdej tabeli w bazie danych
  - DataBaseScript : Folder zawierający skrypt tworzący i wypełniający danymi bazę danych.
  - Models : Folder zawierający wszystkie modele w projekcie
  - Views : Folder zawierający wszystkie widoki wraz z podfolderami z nazwami odnoszącymi się do każdej tabeli w bazie danych
  - Appsetings.json : plik łaczący projekt z bazą danych
  

# Konfiguracja
Aby uruchomić projekt wpier za pomocą skryptu tworzącego bazę danych uruchomić go w SSMS, następnie otworzyć projekt w VisualStudio i w pliku appsetings.json ustawić poprawne połączenie z bazą danych:

"DevConnection": "Server=Twoja_Nazwa_Serwera;Database=Projekt_ASP_NET;Trusted_Connection=True;Encrypt=False;MultipleActiveResultSets=true",
"IdentityConntection": "Server=Twoja_Nazwa_Serwera;Database=Projekt_ASP_NET;Trusted_Connection=True;MultipleActiveResultSets=true"

Na zielono miejsce z skąd można w najprostrzy sposób uzyskać nazwę serwera SQL (okienko połączeniowe w SSMS)
![image](https://user-images.githubusercontent.com/91775622/219146352-72ae93fd-73dd-4397-94b8-aaed53b52b33.png)

# Wykonawcy
  - Krzysztof Iwański 13666
  - Mateusz Jaroszko 13674
