package com.trex.f2paie.Service;

import com.trex.f2paie.Entity.Employee;
import com.trex.f2paie.Repository.EmployeeRepository;
import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;
import jxl.read.biff.BiffException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ResourceUtils;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Service
public class EmployeeServiceImp implements EmployeeService {

    @Autowired
    EmployeeRepository employeeRepository;

    @Override
    public int addEmployee(Employee employee) {
        if ( employeeRepository.save(employee) != null )
        return 1;
        else
        return 0;
    }

    @Override
    public int editEmployee(Employee employee) {
        if ( employeeRepository.save(employee) != null )
            return 1;
        else
            return 0;
    }

    @Override
    public Employee getEmployee(Integer empID) {
        return employeeRepository.findOne(empID);
    }

    @Override
    public List<Employee> getAllEmployees() {
        ArrayList<Employee> employees = new ArrayList<>();
        employeeRepository.findAll().forEach(employees::add);
        return employees;
    }

    @Override
    public List<Employee> getEmployeesByCompany(Integer company) {
        ArrayList<Employee> employees = new ArrayList<>();
        employeeRepository.findByCompany_Id(company).forEach(employees::add);
        return employees;
    }

    @Override
    public int removeEmployee(Integer empID) {
        employeeRepository.delete(empID);
            return 1;
    }

    @Override
    public long countEmployee() {
        return employeeRepository.count();
    }

    @Override
    public List find_salaire_from_xls (int poste , int grade, int r_admin ) {
        List lst = new ArrayList() ;

        int col = (14-grade);
        int sal;
        int heure ;

        try {

            Workbook workbook = Workbook.getWorkbook(ResourceUtils.getFile("classpath:static/xls/table.xls"));
            Sheet sheet = workbook.getSheet(0);
            Cell b1 , b2;

            if (poste != -1){


                if (poste == 1){
                    b1 = sheet.getCell(col,r_admin+2);

                    try {
                        sal =Integer.parseInt( b1.getContents() );
                        lst.add(sal) ;
                        lst.add(0) ;
                        System.out.println("L 111-");
                    } catch (NumberFormatException e) {
                        System.out.println (e ) ;
                    }


                }else {
                    switch (poste ){
                        case 2 : {
                            b1 = sheet.getCell(col,17);
                            b2 = sheet.getCell(col,16);
                            sal =Integer.parseInt(b1.getContents());
                            heure =  Integer.parseInt(b2.getContents());
                            lst.add(sal) ;
                            lst.add(heure) ;

                            break ;
                        }
                        case 3 : {
                            b1 = sheet.getCell(col,19);
                            b2 = sheet.getCell(col,18);
                            sal =Integer.parseInt(b1.getContents());
                            heure =  Integer.parseInt(b2.getContents());
                            lst.add(sal) ;
                            lst.add(heure) ;

                            break ;
                        }
                        case 4 : {
                            b1 = sheet.getCell(col,21);
                            b2 = sheet.getCell(col,20);
                            sal =Integer.parseInt(b1.getContents());
                            heure =  Integer.parseInt(b2.getContents());
                            lst.add(sal) ;
                            lst.add(heure) ;

                            break ;
                        }

                        case 5 : {
                            b1 = sheet.getCell(col,23);
                            b2 = sheet.getCell(col,22);
                            sal =Integer.parseInt(b1.getContents());
                            heure =  Integer.parseInt(b2.getContents());
                            lst.add(sal) ;
                            lst.add(heure) ;

                            break ;

                        }
                        default : lst.add(0) ;
                            lst.add(0) ;
                            System.out.println("default");
                    }


                }
            }

            workbook.close();
            return lst  ;

        } catch (IOException ex) {
            System.out.println("100");
            ex.printStackTrace();
            lst.add(1) ;lst.add(0) ;

            return lst ;
        } catch (BiffException ex) {
            lst.add(2) ;lst.add(0) ;

            System.out.println("200"+ex);
            //Logger.getLogger(Tableaux.class.getName()).log(Level.SEVERE, null, ex);
            return lst ;
        }


    }

}
