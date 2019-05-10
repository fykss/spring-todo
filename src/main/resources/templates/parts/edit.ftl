<#import "../main.ftl" as c>

<@c.page>
    <h2 class="mb-3">This is edit menu</h2>
    <#list tasks as task>

    <form class="form-group d-flex" action="/tasks/edit/${task.id}" method="post">
        <input class="form-control" type="text" name="text" style="border-radius: 0;" value=${task.text}>
        <button class="btn btn-outline-secondary w-50" type="submit" style="margin-left: -1px; border-radius: 0;">Edit</button>
    </form>
    </#list>
    <a href="/tasks">Back to list</a>
</@c.page>