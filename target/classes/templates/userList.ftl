<#import "parts/common.ftl" as c>
    <title>Admin page</title>
<@c.page>
        Список пользователей
    <table>
        <thead class="mt-3 mr-2">
        <tr>
            <th class="mr-2"> Ник </th>
            <th class="mr-2"> Роль </th>
            <th></th>
        </tr>
        </thead>
        <tbody class="mb-3 mr-4">
        <#list  users as user>
            <tr>
                <td>${user.username}</td>
                <td><#list user.roles as roles>${roles} <#sep>,</#list></td>
                <td><a href="/user/${user.id}">Изменить </a> </td>
            </tr>

        </#list>
        </tbody>
    </table>
</@c.page>