package com.trex.f2paie.Repository;

import com.trex.f2paie.Entity.Employee;
import com.trex.f2paie.Entity.Leave;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface LeaveRepository extends CrudRepository<Leave, Integer> {
    List<Leave> findByEmployee_Id(Integer employee);

}
