# Gym-Management
Proiectul vizeaza gestionarea activitatilor si resurelor dintr-o sala de fitness. Sistemul informatic propus are rolul de a organiza date referitoare la clienti, antrenori, clase de antrenament, abonamente si programari. 

Constrangerile proiectului:
-	Fiecare client are un abonament activ, ce poate fi lunar sau anual.
-	Fiecare abonament este asociat cu o data de inceput si o data de expirare.
-	Datele personale ale clientului trebuie sa includa: nume complet, CNP, numar de telefon, email.
-	Un antrenor poate coordona mai multe clase de antrenament, avand cel putin o specializare, dar fiecare clasa are un singur antrenor.
-	Clasele de antrenament au o capacitate maxima de participanti.
-	Programarile la clase trebuie facute cu cel putin 24 de ore inainte.
-	Salile pot gazdui o singura clasa la o anumita zi si ora programata.

Am creat fisierele XML si JSON, si am introdus date pentru clienti, antrenori, clase si programari, sub forma urmatoare:
 ![image](https://github.com/user-attachments/assets/50c6d6b1-fc5e-4d41-9f22-6619fd1aa342)


Am proiectat schemele XSD si JSON pentru baza de date, prin care am putut valida formatul si restrictiile impuse la inceput de proiect. Am folosit un script python pentru a realiza procesul de validare.

![image](https://github.com/user-attachments/assets/2c353001-37f6-43bc-996f-4730332b5b65)


Am proiectat fisierul XSL pentru afisarea intr-un format mai prietenos al datelor. Folosind, live server din Visual Studio Code, am reusit sa afisez bazele de date intr-o forma tabelara:

![image](https://github.com/user-attachments/assets/e78e79ee-7bde-4c9c-b064-52cf1e3785d8)



Interfata vizuala si interactiva pentru aceste baze de date a fost realizata printr-o aplicatie desktop dezvoltata in Python cu libraria Tkinter. Aceasta aplicatie are ca scop vizualizarea, gestionarea si manipularea fisierelor de tip XML si JSON. Este conceputa pentru a lucra cu datele unei sali de fitness, permitand administrarea clientilor, antrenorilor, claselor si programarilor.

![image](https://github.com/user-attachments/assets/138dfca2-c9b4-4947-93d8-a8af0694be91)

 
Functionalitatile principale ale aplicatiei sunt:
-	Posibilitatea de incarcare a fisierelor XML si JSON de la orice sala de fitness.

![image](https://github.com/user-attachments/assets/78246038-3744-4d7d-b785-5381b6667977)






-	Afisarea structurii complete a datelor din fisierul incarcat intr-un format arborescent.

![image](https://github.com/user-attachments/assets/653a44b1-bc1a-4e86-919d-ba7ec9d5cdf6)













-	Cautarea instanta dupa orice descriptor din fisier.

 ![image](https://github.com/user-attachments/assets/2b99c3c9-004b-4f00-a89b-f0afcd878eae)

-	Adaugarea de clienti noi printr-un formular grafic

 ![image](https://github.com/user-attachments/assets/70c76427-67c5-4405-83da-c0b686b740cf)

-	Stergerea unui client dupa ID

 ![image](https://github.com/user-attachments/assets/923655c8-9f9d-4d6a-9146-5682d59ae3f0)


Aplicatia poate fi adaptata usor pentru orice sistem care presupune gestionarea de date structurate (ex: scoli, spitale, biblioteci), servind ca interfata grafica pentru fisiere de tip XML si JSON.

Pentru partea de ontologie am creat fisierul .owl in care sunt reprezentate fomal conceptele, relatiile si regulile intre clasele proiectului. Se pot face interogari pentru a se afla relatiile dintre clasele dorite.

![image](https://github.com/user-attachments/assets/39a58b8d-5843-4f4d-bf89-3ed82f63cf59)

Proiectul a demonstrat aptitudinea de a gestiona si vizualiza date structurate in formatele XML si JSON, utilizate in contextul gestionarii unei sali de fitness. Prin interfata unei aplicatii grafice implementate cu Python si Tkinter, utilizatorul poate: incarca si vizualiza fisierele structurate; performa cautari rapide dupa orice camp; adauga sau elimina direct clienti; salva modificarile in fisierele originale. 
Dezvoltarea acestui sistem a permis inelegerea organizarii datelor ierahice, iar integrarea unui sistem de interactiune grafica usor de utilizat a adus un plus de accesibilitate proiectului. Acest proiect imbina teoria cu aplicatia practica, fiind un exemplu eficient de interoperabilitate a datelor in sisteme informationale.

