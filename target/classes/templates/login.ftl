<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
    <title>Авторизация</title>
<@c.page>
    ${message?ifExists}
    <div class="form-group row">
        <div class="col-sm-6"> <h5 class="text">Войти в MiniNews</h5> </div>
    </div>
    <@l.login "/login" false/>
</@c.page>