package com.todospring.vlad.controller;

import com.todospring.vlad.domain.Task;
import com.todospring.vlad.repos.TaskRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
@RequestMapping("tasks")
public class MainController {
    private final TaskRepository taskRepository;

    @Autowired
    public MainController(TaskRepository taskRepository) {
        this.taskRepository = taskRepository;
    }

    @GetMapping
    public String main(Map<String, Object> model) {
        Iterable<Task> tasks = taskRepository.findAll();

        model.put("tasks", tasks);
        return "parts/common";
    }

    @PostMapping("/add")
    public String add(@RequestParam String text, Map<String, Object> model) {
        Task task = new Task(text);

        taskRepository.save(task);

        Iterable<Task> tasks = taskRepository.findAll();

        model.put("tasks", tasks);

        return "parts/common";
    }

    @PostMapping("/filter")
    public String filter(
            @RequestParam String filter,
            Map<String, Object> model
    ) {
        Iterable<Task> tasks;

        if (filter != null && !filter.isEmpty()) {
            tasks = taskRepository.findByText(filter);
        } else {
            tasks = taskRepository.findAll();
        }

        model.put("tasks", tasks);

        return "parts/common";
    }

    @GetMapping("/edit/{id}")
    public String editTask(
            @PathVariable int id,
            Map<String, Object> model
    ) {
        Iterable<Task> tasks = taskRepository.findById(id);

        model.put("tasks", tasks);

        return "parts/edit";
    }

    @PostMapping("/edit/{id}")
    public String updateTask(
            @PathVariable int id,
            @RequestParam String text
    ) {
        Task task = new Task(text);
        task.setId(id);
        taskRepository.save(task);

        return "redirect:/tasks";
    }

    @PostMapping("/delete/{id}")
    public String deleteTask(
            @PathVariable int id
    ) {
        taskRepository.deleteById(id);
        return "redirect:/tasks";
    }
}
