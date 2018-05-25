package com.trex.f2paie.Repository;

import com.trex.f2paie.Entity.Fiche_P;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface Fiche_pRepository extends CrudRepository<Fiche_P, Integer> {
    List<Fiche_P> findByEmployee_Id(Integer employee);
    List<Fiche_P> findByMonthAndYear(Integer month,Integer year);
    List<Fiche_P> findByEmployee_IdAndMonthAndYear(Integer employee,Integer month,Integer year);
    List<Fiche_P> findByEmployee_Company_IdAndTrimestreAndYear(Integer cmpID, Integer trimestre, Integer year);

}
