package com.trex.f2paie.Service;

import com.trex.f2paie.Entity.Employee;
import com.trex.f2paie.Entity.Leave;

import java.util.List;

public interface LeaveService {
    int addLeave(Leave leave);
    int editLeave(Leave leave);
    List<Leave> getLeavesByEmployee(Integer employee);
    Leave getLeaveById(Integer id);
    List<Leave> getAllLeaves();
    int deleteLeave(Integer leave);
}
