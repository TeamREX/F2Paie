package com.trex.f2paie.Repository;

import com.trex.f2paie.Entity.Employee;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EmployeeRepository extends CrudRepository<Employee, Integer> {

    List<Employee> findByCompany_Id(Integer company);
    /*
     * Returns all users with the given firstname. This method will be translated into a query using the one declared in
     * the {@link Query} annotation declared one.
     *
     * @param firstname
     * @return

    @Query("select u from User u where u.firstname = :firstname")
    List<User> findByFirstname(String firstname);
    */
}
