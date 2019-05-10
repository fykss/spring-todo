<#import "../main.ftl" as c>

<@c.page>
    <h1 class="mb-3">Todo list</h1>
    <form class="form-group d-flex" action="/tasks/add" method="post">
        <input class="form-control" type="text" name="text" placeholder="Enter task" style="border-radius: 0;">
        <button class="btn btn-outline-secondary w-50" type="submit" style="margin-left: -1px; border-radius: 0;">Add</button>
    </form>
    <form class="form-group d-flex" action="/tasks/filter" method="post">
        <input class="form-control" type="text" name="filter" placeholder="Search task" style="border-radius: 0;">
        <button class="btn btn-outline-secondary w-50" type="submit" style="margin-left: -1px; border-radius: 0;">Search</button>
    </form>
    <#list tasks as task>
        <form action="/tasks/delete/${task.id}" method="post">
            <ul class="list-group">
                <li class="list-group-item d-flex justify-content-between" style="border-radius: 0; margin-bottom: -1px;">
                    <a href="/tasks/edit/${task.id}">${task}</a>
                    <button class="btn btn-outline-danger btn-sm" type="submit" onclick="confirm('Are you sure?')">
                        <i class="fa fa-trash-o"></i>
                    </button>
                </li>
            </ul>
        </form>
    </#list>
</@c.page>