<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
    <title>Регистрация </title>
<@c.page>
    <div class="form-group row">
        <div class="col-sm-6"> <h5 class="text">Создать новый аккаунт</h5> </div>
    </div>
    ${message?ifExists}
    <@l.login "/registration" true/>
</@c.page>