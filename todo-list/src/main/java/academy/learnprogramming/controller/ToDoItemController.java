package academy.learnprogramming.controller;

import academy.learnprogramming.model.TodoData;
import academy.learnprogramming.service.ToDoItemServiceImpl;
import academy.learnprogramming.util.Mappings;
import academy.learnprogramming.util.ViewNames;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

@Controller
public class ToDoItemController {

    // == fields ==
    private final ToDoItemServiceImpl toDoItemService;

    // == constructors ==
    @Autowired
    public ToDoItemController(ToDoItemServiceImpl toDoItemService) {
        this.toDoItemService = toDoItemService;
    }

    // == Model attributes ==
    @ModelAttribute
    public TodoData toDoData() {
        return toDoItemService.getData();
    }

    // == handler methods ==
    @GetMapping(Mappings.ITEMS)
    public String items() {
        return ViewNames.ITEMS_LIST;
    }


}
