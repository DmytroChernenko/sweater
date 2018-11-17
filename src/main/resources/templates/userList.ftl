<#import "parts/common.ftl" as c>

<@c.page>
<h1>List of users:</h1>
<table>
    <thead>
        <tr>
            <td>User</td>
            <td>Role</td>
        </tr>
    </thead>
    <tbody>
        <#list users as user>
            <tr>
                <td>${user.username}</td>
                <td><#list user.roles as role>${role}<#sep> , </#list></td>
                <td><a href="/user/${user.id}">edit</a> </td>
            </tr>
        </#list>
    </tbody>


</table>


</@c.page>