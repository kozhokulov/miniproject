<#macro  page>
    <!DOCTYPE html>
    <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <title>Mininews</title>
            <link rel="stylesheet" href="/static/css/bootstrap.min.css">

        </head>
    <body>
        <#include "navbar.ftl">
        <div class="container mt-5">
            <#nested >
        </div>
        <script src="/static/js/jquery-3.4.1.min.js"></script>
        <script src="/static/js/popper.min.js" ></script>
        <script src="/static/js/bootstrap.min.js"></script>
    </body>
    </html>
</#macro>