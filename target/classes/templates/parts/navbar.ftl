<#include "security.ftl">
<#import "login.ftl" as l>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark container">
    <a class="navbar-brand" href="/"><img src="/static/img/outline-hearing-24px.svg" class="d-inline-block align-top" width="35" height="35" alt=""> Ushak</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/home">Новости</a>
            </li>
            <#if isAdmin>
                <li class="nav-item">
                    <a class="nav-link" href="/user">Cписок пользователей</a>
                </li>
            </#if>
        </ul>
        <div class="navbar-text mr-3">
            <#if user??>
                <a class="nav-link" href="/user/profile">${name}</a>
            <#elseif isActive>
                <a class="nav-link" href="/login">
                    <button class="btn btn-sm btn-outline-light" type="submit">Войти</button>
                </a>
            </#if>
        </div>
        <#if isActive>
                <@l.logout />
        </#if>
    </div>
</nav>