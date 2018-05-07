package com.trex.f2paie.Service;

import com.trex.f2paie.Entity.Company;
import com.trex.f2paie.Repository.CompanyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CompanyServiceImp implements CompanyService {

    @Autowired
    CompanyRepository companyRepository;

    @Override
    public int addCompany(Company company) {
        if ( companyRepository.save(company) != null )
            return 1;
        else
            return 0;
    }

    @Override
    public int editCompany(Company company) {
        if ( companyRepository.save(company) != null )
            return 1;
        else
            return 0;
    }

    @Override
    public Company getCompany(Integer cmpID) {
        return companyRepository.findOne(cmpID);
    }

    @Override
    public List<Company> getAllCompanies() {
        ArrayList<Company> companies = new ArrayList<>();
        companyRepository.findAll().forEach(companies::add);
        return companies;
    }

    @Override
    public int removeCompany(Integer cmpID) {
        companyRepository.delete(cmpID);
        return 1;
    }

    @Override
    public long countCompany() {
        return companyRepository.count();
    }
}
