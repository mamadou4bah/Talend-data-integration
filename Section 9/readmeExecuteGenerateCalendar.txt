
1/ Créez sur le C: le dossier Talend et ensuite créez dans le dossier Talend un sous-dossier dataGenerate
   Cela vous permettra d'avoir ce répertoire : C:\Talend\dataGenerate
   
1/ Dézippez le fichier jGenerateCalendar_0.1.zip

2/ Allez dans le dossier : jGenerateCalendar

3/ Lancez l'invite de commmande

4/ Depuis l'invite de commande, il faut se positionner sur le répertoire : jGenerateCalendar
   Exemple de commande : cd C:\Talend\jobConstruit\jGenerateCalendar 
   (Dans cet exemple, le fichier zip a été extrait dans le dossier C:\Talend\jobConstruit)
   
5/ Lancez le script jGenerateCalendar_run.bat (Pour un poste Windows). Sur Linux, il faut lancer le script jGenerateCalendar_run.sh
   Après avoir exécuté cela, vous verrez dans le dossier C:\Talend\dataGenerate, le fichier Calendrier.xlsx
   
6/ Vous pouvez également modifier la date début et fin de génération du calendrier 
   Pour cela, il faut aller dans le répertoire  ~\jGenerateCalendar\formation\jgeneratecalendar_0_1\contexts
   Ensuite vous pouvez ouvrir le fichier Default.properties et modifier les dates.
   
    Contenu actuel du fichier : 
    #this is context properties
	#Sat Jan 14 20:08:23 CET 2023
	dtDeb=2023-01-01 00\:00\:00
	dtFin=2023-12-31 00\:00\:00
	prFolder=C\:/Talend/dataGenerate/
	nameFile=Calendrier.xlsx
	dtDebExecution=2023-01-14 18\:59\:20
	nbJours=0
	

Copyright (c) 2023

   
