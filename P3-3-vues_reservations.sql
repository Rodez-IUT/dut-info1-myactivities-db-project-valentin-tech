CRÉER OU REMPLACER LA  VUE  gds .vue_reservations AS
	SÉLECTIONNER 
		res . id  comme reservation_id,
		nom as salle,
		date_debut,
		date_fin
	DE 
		gds . réservation res
		JOINDRE
		gds . salle salle ON salle_id =  salle . id
	COMMANDER PAR nom, date_debut;

sélectionnez  *  dans  gds . vue_reservations ;
