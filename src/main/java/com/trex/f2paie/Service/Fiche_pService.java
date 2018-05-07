package com.trex.f2paie.Service;

import com.trex.f2paie.Entity.Fiche_P;

import java.util.List;

public interface Fiche_pService {

    int addFicheP(Fiche_P fiche_p);
    Fiche_P getFicheP(Integer id_fiche);
    List<Fiche_P> getAllFicheP();

}
