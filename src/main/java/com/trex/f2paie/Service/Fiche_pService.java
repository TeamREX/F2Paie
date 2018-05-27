package com.trex.f2paie.Service;

import com.trex.f2paie.Entity.FicheCnss;
import com.trex.f2paie.Entity.Fiche_P;

import java.util.List;

public interface Fiche_pService {

    int addFicheP(Fiche_P fiche_p);
    Fiche_P getFicheP(Integer id_fiche);
    List<Fiche_P> getAllFicheP();
    List<Fiche_P> findByEmployee_Id(Integer employee);
    List<Fiche_P> findByMonthAndYear(Integer month,Integer year);
    List<Fiche_P> findByEmployee_IdAndMonthAndYear(Integer employee,Integer month,Integer year);
    FicheCnss ficheCNSS(Integer cmpID, Integer trimestre, Integer year);
    int deleteFicheP(Integer id);


}
