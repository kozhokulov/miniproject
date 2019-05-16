<#import "parts/common.ftl" as c>
<title>Профиль</title>
<@c.page>
    ${message?ifExists}
    <div class="form-group row">
        <div class="col-sm-6"> <h5 class="text">${username}</h5> </div>
    </div>
    <form method="post" class="was-validated">
        <div class="form-group row">
            <div class="col-sm-3">
                <input type="password" name="password" class="form-control" placeholder="Пароль" />
            </div>
        </div>
        <div class="form-group row">
             <div class="col-sm-3">
                 <input type="email" name="email" class="form-control" placeholder="Email" value="${email!''}" />
             </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <div class="form-group row">
            <div class="col-sm-3">
                <button class="btn btn-primary" type="submit">Сохранить</button>
            </div>
        </div>
    </form>
</@c.page>