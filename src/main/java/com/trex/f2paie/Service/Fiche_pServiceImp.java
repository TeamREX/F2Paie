package com.trex.f2paie.Service;

import com.trex.f2paie.Entity.Fiche_P;
import com.trex.f2paie.Repository.Fiche_pRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class Fiche_pServiceImp implements Fiche_pService{
    @Autowired
    Fiche_pRepository fiche_pRepository;

    @Override
    public int addFicheP(Fiche_P fiche_p) {
        fiche_pRepository.save(fiche_p);
        return 1;
    }

    @Override
    public Fiche_P getFicheP(Integer id_fiche) {
        return fiche_pRepository.findOne(id_fiche);
    }

    @Override
    public List<Fiche_P> getAllFicheP() {
        ArrayList<Fiche_P> fiche_p = new ArrayList<>();
        fiche_pRepository.findAll().forEach(f -> fiche_p.add(f));
        return fiche_p;
    }

    @Override
    public List<Fiche_P> findByEmployee_Id(Integer employee) {
        ArrayList<Fiche_P> fiche_p = new ArrayList<>();
        if(fiche_p.addAll(fiche_pRepository.findByEmployee_Id(employee)))
        return fiche_p;

        return null;
    }

    @Override
    public List<Fiche_P> findByMonthAndYear(Integer month, Integer year) {
        ArrayList<Fiche_P> fiche_p = new ArrayList<>();
        fiche_pRepository.findByMonthAndYear(month,year).forEach(fiche_p::add);
        return fiche_p;
    }

    @Override
    public List<Fiche_P> findByEmployee_IdAndMonthAndYear(Integer employee, Integer month, Integer year) {
        ArrayList<Fiche_P> fiche_p = new ArrayList<>();
        if (fiche_p.addAll(fiche_pRepository.findByEmployee_IdAndMonthAndYear(employee, month, year)) )
        return fiche_p;

        return null;
    }

}
