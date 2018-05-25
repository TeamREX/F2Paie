package com.trex.f2paie.Service;

import com.trex.f2paie.Entity.Fiche_P;
import com.trex.f2paie.Entity.RowFicheCnss;
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

    @Override
    public List<RowFicheCnss> ficheCNSS(Integer cmpID, Integer trimestre, Integer year){

        ArrayList<RowFicheCnss> ficheCnss = new ArrayList<>();

        List<Fiche_P> fiche_pList = fiche_pRepository.findByEmployee_Company_IdAndTrimestreAndYear(cmpID,trimestre,year);

        fiche_pList.forEach(file -> {

            RowFicheCnss rowFicheCnss = new RowFicheCnss();
            rowFicheCnss.setEmployee(file.getEmployee().getPrenom()+" "+file.getEmployee().getNom());
            rowFicheCnss.setTotal(0);

            fiche_pList.forEach(f -> {

                if(file.getEmployee().getId().equals(f.getEmployee().getId() )){
                    String s1 = f.getImSalary().replace(',','.');
                    String s2 = s1.replace(" ","");
                    double total = rowFicheCnss.getTotal();
                    total+= Double.parseDouble(s2);
                    rowFicheCnss.setTotal(total);

                    switch (f.getMonth()){

                        case 1 : case 4 : case 7 : case 10 :
                            rowFicheCnss.setSalImp1(f.getImSalary());
                            break;
                        case 2 : case 5 : case 8 : case 11 :
                            rowFicheCnss.setSalImp2(f.getImSalary());
                            break;
                        case 3 : case 6 : case 9 : case 12 :
                            rowFicheCnss.setSalImp3(f.getImSalary());
                            break;

                        default:
                            System.out.println("Error occured , month = "+ f.getMonth());
                            break;
                    }

                    if (!ficheCnss.contains(rowFicheCnss) )
                    ficheCnss.add(rowFicheCnss);
                }
            });

        });
        return ficheCnss;
    }

    @Override
    public int deleteFicheP(Integer id) {
        fiche_pRepository.delete(id);
        return 1;
    }

}
