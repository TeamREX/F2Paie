package com.trex.f2paie.Service;

import com.trex.f2paie.Entity.Employee;
import com.trex.f2paie.Entity.Leave;
import com.trex.f2paie.Repository.LeaveRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class LeaveServiceImp implements LeaveService {

    @Autowired
    LeaveRepository leaveRepository;

    @Override
    public int addLeave(Leave leave) {
        leaveRepository.save(leave);
        return 1;
    }

    @Override
    public int editLeave(Leave leave) {
        leaveRepository.save(leave);
        return 1;
    }

    @Override
    public List<Leave> getLeavesByEmployee(Integer employee) {
        return leaveRepository.findByEmployee_Id(employee);
    }

    @Override
    public Leave getLeaveById(Integer id) {
        return leaveRepository.findOne(id);
    }

    @Override
    public List<Leave> getAllLeaves() {
        ArrayList<Leave> leaves = new ArrayList<>();
        leaveRepository.findAll().forEach(leave -> leaves.add(leave));
        return leaves;
    }

    @Override
    public int deleteLeave(Integer leave) {
        leaveRepository.delete(leave);
        return 1;
    }
}
