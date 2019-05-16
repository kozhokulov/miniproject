<#import "parts/common.ftl" as c>

    <title>Mininews</title>
<@c.page>
    <div class="bg-info clearfix ">
    <button type="button" class="btn btn-secondary float-right" data-toggle="modal" data-target="#exampleModal">Поделиться новостью</button>
    </div>

    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModal" aria-hidden="true">
        <div class="modal-dialog" role="document" >
            <div class="modal-content mt-3">
                <form method="post" enctype="multipart/form-data">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Добавление новости</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"> &times;</span></button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <textarea class="form-control" type="text" rows="5" name="text" placeholder="Что у вас нового?"></textarea>
                        </div>
                        <div class="form-group">
                            <div class="custom-file">
                                <input type="file" name="file" id="customFile">
                                <label class="custom-file-label" for="customFile"> Выберите файл</label>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-outline-primary" type="submit">Добавить</button>
                    </div>
                    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                </form>
            </div>
        </div>
    </div>
    <#list news as n>
        <div class="card mx-auto mb-3" style="width: 50rem;">
            <div class="card-header"> <p><strong >${n.authorName}</strong></p></div>
            <#if n.filename??>
                <img class="card-img-top mx-auto d-block" src="/img/${n.filename}">
            </#if>
            <div class="card-body">
                <div class="card-text"> <p> ${n.text} </p></div>
            </div>

        </div>
        <#else >
        <div>Нет новостей(</div>
    </#list>
</@c.page>