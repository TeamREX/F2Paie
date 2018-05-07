package com.trex.f2paie.Service;

import com.trex.f2paie.Entity.Company;

import java.util.List;

public interface CompanyService {
    int addCompany(Company company);
    int editCompany(Company company);
    Company getCompany(Integer cmpID);
    List<Company> getAllCompanies();
    int removeCompany(Integer cmpID);
    long countCompany();

}
