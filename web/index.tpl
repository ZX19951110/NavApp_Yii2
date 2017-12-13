<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>MicroService:Library</title>
    <link href="./dep/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <link href="./dep/bootstrap-combobox/bootstrap-combobox.css" rel="stylesheet">
    <link href="./dep/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <link href="./dep/select2/css/select2.min.css" rel="stylesheet">
    <link href="./dep/webuploader/dist/webuploader.css" rel="stylesheet">

    <link href="./asset/entry-css.css?201712132209" rel="stylesheet">
</head>
<body id="app">
  <nav class="navbar navbar-inverse" role="navigation">
    <div class="navbar-header">
      <a class="navbar-brand" href="/">MicroService:Library<span></span></a>
    </div>
  </nav>
  <side-bar :cur="sidebar"></side-bar>
  <div class="viewport">
     <router-view></router-view>
  </div>
  <div id="loading" class="loading"><span></span></div>
  <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
  <script src="./dep/bootstrap/js/bootstrap.min.js"></script>

  <script src="./dep/bootstrap-combobox/bootstrap-combobox.js"></script>
  <script src="./dep/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
  <script src="./dep/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>

  <script src="./dep/select2/js/select2.min.js"></script>
  <script src="./dep/select2/js/i18n/zh-CN.js"></script>

  <script src="./dep/webuploader/dist/webuploader.min.js"></script>

  <script src="./asset/entry-js.js?201712132209"></script>
</body>
</html>
