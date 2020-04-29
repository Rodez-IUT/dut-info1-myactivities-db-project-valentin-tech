cr√er ou remplacer la fonction gds.get_salle_id (un_nom_de_salle caract√re variant (250))
RETOURS bigint AS $$
          s√©lectionner id dans gds . salle o√πnom = un_nom_de_salle;
$$ LANGUAGE SQL;



cr√er ou remplacer la fonction gds .insert_reservation (
    une_date_debut horodatage sans fuseau horaire,
horodatage une_date_fin sans fuseau horaire,
    un_nom_de_salle carat√re variable (250)
) RETOURS gds.r√servation AS $$

     Ins√rer dans  gds . r√©servation (id, date_debut, date_fin, date_creation, date_modification, salle_id)
     VALEURS (nextval ( ' gds.reservation_seq ' ),
		une_date_debut, 
		une_date_fin, 
		maintenant(), 
		maintenant(),
		gds . get_salle_id (un_nom_de_salle)
	   ) 
        retour * ;
$$ LANGUAGE SQL;
