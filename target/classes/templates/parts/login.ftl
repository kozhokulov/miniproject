<#macro login path isRegisterForm>
    <form action="${path}" method="post" class="was-validated">
        <div class="form-group row">
            <div class="col-sm-3">
                <input type="text" name="username" class="form-control" placeholder="Имя пользователя" required />
                <div class="valid-feedback">Valid.</div>
                <div class="invalid-feedback">Please fill out this field.</div>
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-3">
                <input type="password" name="password" class="form-control" placeholder="Пароль" required/>
                <div class="valid-feedback">Valid.</div>
                <div class="invalid-feedback">Please fill out this field.</div>
            </div>
        </div>
        <#if isRegisterForm>
            <div class="form-group row">
                <div class="col-sm-3">
                    <input type="email" name="email" class="form-control" placeholder="Email" />
                </div>
            </div>
        </#if>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <div class="form-group row">
            <div class="col-sm-3">
                <button class="btn btn-primary" type="submit"><#if isRegisterForm>Создать<#else>Войти</#if></button>
            </div>
        </div>
        <div class="form-group row"><div class="col-sm-3">
                <#if isRegisterForm><a href="/login">Войти в имеющийся аккаунт</a></#if>
            </div>
        </div>
        <div class="form-group row"><div class="col-sm-3">
                <#if !isRegisterForm><a href="/registration">Создать новый аккаунт</a></#if>
            </div>
        </div>
    </form>
</#macro>

<#macro logout>
    <form class="form-inline my-2 my-lg-0" action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button class="btn btn-sm btn-outline-light" type="submit">Выйти</button>
    </form>
</#macro>