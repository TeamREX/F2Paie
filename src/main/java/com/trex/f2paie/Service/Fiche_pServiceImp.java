package com.trex.f2paie.Service;

import com.trex.f2paie.Entity.Fiche_P;
import com.trex.f2paie.Repository.Fiche_pRepository;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class Fiche_pServiceImp implements Fiche_pService{
    @Autowired
    Fiche_pRepository fiche_pRepository;

    @Override
    public int addFicheP(Fiche_P fiche_p) {
        return 0;
    }

    @Override
    public Fiche_P getFicheP(Integer id_fiche) {
        return null;
    }

    @Override
    public List<Fiche_P> getAllFicheP() {
        return null;
    }

}
