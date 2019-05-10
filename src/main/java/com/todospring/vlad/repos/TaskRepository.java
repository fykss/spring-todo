package com.todospring.vlad.repos;

import com.todospring.vlad.domain.Task;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface TaskRepository extends CrudRepository<Task, Integer> {
    List<Task> findByText(String text);
    List<Task> findById(int id);
}
