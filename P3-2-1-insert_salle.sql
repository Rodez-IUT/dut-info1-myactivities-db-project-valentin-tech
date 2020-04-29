cr√er ou remplacer la fonction  gds .insert_salle (
	        un_nom VARCHAR ( 250 ),
		        un_nb_personnes_max entier )
RETOURS gds . salle  AS $$
		        - ins√©rer la salle
			Ins√rer dans  gds . salle (id, nom, nb_personnes_max, date_creation, date_modification)
		        VALEURS (nextval ( ' gds.salle_seq ' ), un_nom, un_nb_personnes_max, now (), now ()) return * ;
$$ LANGUAGE SQL;
