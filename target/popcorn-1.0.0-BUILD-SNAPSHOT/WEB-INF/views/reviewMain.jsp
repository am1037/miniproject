<%@page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">


<title>bs4 Kanban Board - Bootdey.com</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/styles.css" rel="stylesheet">
</head>
<body>
<main class="content">
    <div class="container p-0">

        <h1 class="h3 mb-3">Kanban Board</h1>

        <div class="row">
            <div class="col-12 col-lg-6 col-xl-3">
                <div class="card card-border-primary">
                    <div class="card-header">
                        <div class="card-actions float-right">
                            <div class="dropdown show">
                                <a href="#" data-toggle="dropdown" data-display="static">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-horizontal align-middle">
                                        <circle cx="12" cy="12" r="1"></circle>
                                        <circle cx="19" cy="12" r="1"></circle>
                                        <circle cx="5" cy="12" r="1"></circle>
                                    </svg>
                                </a>

                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="#">Action</a>
                                    <a class="dropdown-item" href="#">Another action</a>
                                    <a class="dropdown-item" href="#">Something else here</a>
                                </div>
                            </div>
                        </div>
                        <h5 class="card-title">Upcoming</h5>
                        <h6 class="card-subtitle text-muted">Nam pretium turpis et arcu. Duis arcu tortor.</h6>
                    </div>
                <c:forEach var="r" items="${reviewList}">
                    <div class="card-body p-3">

                        <div class="card mb-3 bg-light">
                            <div class="card-body p-3">
                                <div class="float-right mr-n2">
                                    <label class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" checked="">
                                        <span class="custom-control-label"></span>
                                    </label>
                                </div>
                                <p>${r.review_contents}</p>
                                <div class="float-right mt-n1">
                                    <img src="https://bootdey.com/img/Content/avatar/avatar6.png" width="32" height="32" class="rounded-circle" alt="Avatar">
                                </div>
                                <a class="btn btn-outline-primary btn-sm" href="#">View</a>
                            </div>
                        </div>


                        <a href="#" class="btn btn-primary btn-block">Add new</a>

                    </div>
                </c:forEach>
                </div>
            </div>
<!--            <div class="col-12 col-lg-6 col-xl-3">-->
<!--                <div class="card card-border-warning">-->
<!--                    <div class="card-header">-->
<!--                        <div class="card-actions float-right">-->
<!--                            <div class="dropdown show">-->
<!--                                <a href="#" data-toggle="dropdown" data-display="static">-->
<!--                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-horizontal align-middle">-->
<!--                                        <circle cx="12" cy="12" r="1"></circle>-->
<!--                                        <circle cx="19" cy="12" r="1"></circle>-->
<!--                                        <circle cx="5" cy="12" r="1"></circle>-->
<!--                                    </svg>-->
<!--                                </a>-->

<!--                                <div class="dropdown-menu dropdown-menu-right">-->
<!--                                    <a class="dropdown-item" href="#">Action</a>-->
<!--                                    <a class="dropdown-item" href="#">Another action</a>-->
<!--                                    <a class="dropdown-item" href="#">Something else here</a>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                        <h5 class="card-title">In Progress</h5>-->
<!--                        <h6 class="card-subtitle text-muted">Nam pretium turpis et arcu. Duis arcu tortor.</h6>-->
<!--                    </div>-->
<!--                    <div class="card-body">-->

<!--                        <div class="card mb-3 bg-light">-->
<!--                            <div class="card-body p-3">-->
<!--                                <div class="float-right mr-n2">-->
<!--                                    <label class="custom-control custom-checkbox">-->
<!--                                        <input type="checkbox" class="custom-control-input">-->
<!--                                        <span class="custom-control-label"></span>-->
<!--                                    </label>-->
<!--                                </div>-->
<!--                                <p>Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Maecenas malesuada.</p>-->
<!--                                <div class="float-right mt-n1">-->
<!--                                    <img src="https://bootdey.com/img/Content/avatar/avatar6.png" width="32" height="32" class="rounded-circle" alt="Avatar">-->
<!--                                </div>-->
<!--                                <a class="btn btn-outline-primary btn-sm" href="#">View</a>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                        <div class="card mb-3 bg-light">-->
<!--                            <div class="card-body p-3">-->
<!--                                <div class="float-right mr-n2">-->
<!--                                    <label class="custom-control custom-checkbox">-->
<!--                                        <input type="checkbox" class="custom-control-input">-->
<!--                                        <span class="custom-control-label"></span>-->
<!--                                    </label>-->
<!--                                </div>-->
<!--                                <p>Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis.</p>-->
<!--                                <div class="float-right mt-n1">-->
<!--                                    <img src="https://bootdey.com/img/Content/avatar/avatar7.png" width="32" height="32" class="rounded-circle" alt="Avatar">-->
<!--                                </div>-->
<!--                                <a class="btn btn-outline-primary btn-sm" href="#">View</a>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                        <div class="card mb-3 bg-light">-->
<!--                            <div class="card-body p-3">-->
<!--                                <div class="float-right mr-n2">-->
<!--                                    <label class="custom-control custom-checkbox">-->
<!--                                        <input type="checkbox" class="custom-control-input">-->
<!--                                        <span class="custom-control-label"></span>-->
<!--                                    </label>-->
<!--                                </div>-->
<!--                                <p>Nam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum.</p>-->
<!--                                <div class="float-right mt-n1">-->
<!--                                    <img src="https://bootdey.com/img/Content/avatar/avatar8.png" width="32" height="32" class="rounded-circle" alt="Avatar">-->
<!--                                </div>-->
<!--                                <a class="btn btn-outline-primary btn-sm" href="#">View</a>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                        <div class="card mb-3 bg-light">-->
<!--                            <div class="card-body p-3">-->
<!--                                <div class="float-right mr-n2">-->
<!--                                    <label class="custom-control custom-checkbox">-->
<!--                                        <input type="checkbox" class="custom-control-input">-->
<!--                                        <span class="custom-control-label"></span>-->
<!--                                    </label>-->
<!--                                </div>-->
<!--                                <p>In hac habitasse platea dictumst. Curabitur at lacus ac velit ornare lobortis. Curabitur a felis tristique.</p>-->
<!--                                <div class="float-right mt-n1">-->
<!--                                    <img src="https://bootdey.com/img/Content/avatar/avatar1.png" width="32" height="32" class="rounded-circle" alt="Avatar">-->
<!--                                </div>-->
<!--                                <a class="btn btn-outline-primary btn-sm" href="#">View</a>-->
<!--                            </div>-->
<!--                        </div>-->

<!--                        <a href="#" class="btn btn-primary btn-block">Add new</a>-->

<!--                    </div>-->
<!--                </div>-->
<!--            </div>-->
<!--            <div class="col-12 col-lg-6 col-xl-3">-->
<!--                <div class="card card-border-danger">-->
<!--                    <div class="card-header">-->
<!--                        <div class="card-actions float-right">-->
<!--                            <div class="dropdown show">-->
<!--                                <a href="#" data-toggle="dropdown" data-display="static">-->
<!--                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-horizontal align-middle">-->
<!--                                        <circle cx="12" cy="12" r="1"></circle>-->
<!--                                        <circle cx="19" cy="12" r="1"></circle>-->
<!--                                        <circle cx="5" cy="12" r="1"></circle>-->
<!--                                    </svg>-->
<!--                                </a>-->

<!--                                <div class="dropdown-menu dropdown-menu-right">-->
<!--                                    <a class="dropdown-item" href="#">Action</a>-->
<!--                                    <a class="dropdown-item" href="#">Another action</a>-->
<!--                                    <a class="dropdown-item" href="#">Something else here</a>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                        <h5 class="card-title">On hold</h5>-->
<!--                        <h6 class="card-subtitle text-muted">Nam pretium turpis et arcu. Duis arcu tortor.</h6>-->
<!--                    </div>-->
<!--                    <div class="card-body">-->

<!--                        <div class="card mb-3 bg-light">-->
<!--                            <div class="card-body p-3">-->
<!--                                <div class="float-right mr-n2">-->
<!--                                    <label class="custom-control custom-checkbox">-->
<!--                                        <input type="checkbox" class="custom-control-input">-->
<!--                                        <span class="custom-control-label"></span>-->
<!--                                    </label>-->
<!--                                </div>-->
<!--                                <p>In hac habitasse platea dictumst. Curabitur at lacus ac velit ornare lobortis. Curabitur a felis tristique.</p>-->
<!--                                <div class="float-right mt-n1">-->
<!--                                    <img src="https://bootdey.com/img/Content/avatar/avatar2.png" width="32" height="32" class="rounded-circle" alt="Avatar">-->
<!--                                </div>-->
<!--                                <a class="btn btn-outline-primary btn-sm" href="#">View</a>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                        <div class="card mb-3 bg-light">-->
<!--                            <div class="card-body p-3">-->
<!--                                <div class="float-right mr-n2">-->
<!--                                    <label class="custom-control custom-checkbox">-->
<!--                                        <input type="checkbox" class="custom-control-input">-->
<!--                                        <span class="custom-control-label"></span>-->
<!--                                    </label>-->
<!--                                </div>-->
<!--                                <p>Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis.</p>-->
<!--                                <div class="float-right mt-n1">-->
<!--                                    <img src="https://bootdey.com/img/Content/avatar/avatar3.png" width="32" height="32" class="rounded-circle" alt="Avatar">-->
<!--                                </div>-->
<!--                                <a class="btn btn-outline-primary btn-sm" href="#">View</a>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                        <div class="card mb-3 bg-light">-->
<!--                            <div class="card-body p-3">-->
<!--                                <div class="float-right mr-n2">-->
<!--                                    <label class="custom-control custom-checkbox">-->
<!--                                        <input type="checkbox" class="custom-control-input">-->
<!--                                        <span class="custom-control-label"></span>-->
<!--                                    </label>-->
<!--                                </div>-->
<!--                                <p>Nam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum.</p>-->
<!--                                <div class="float-right mt-n1">-->
<!--                                    <img src="https://bootdey.com/img/Content/avatar/avatar4.png" width="32" height="32" class="rounded-circle" alt="Avatar">-->
<!--                                </div>-->
<!--                                <a class="btn btn-outline-primary btn-sm" href="#">View</a>-->
<!--                            </div>-->
<!--                        </div>-->

<!--                        <a href="#" class="btn btn-primary btn-block">Add new</a>-->

<!--                    </div>-->
<!--                </div>-->
<!--            </div>-->
<!--            <div class="col-12 col-lg-6 col-xl-3">-->
<!--                <div class="card card-border-success">-->
<!--                    <div class="card-header">-->
<!--                        <div class="card-actions float-right">-->
<!--                            <div class="dropdown show">-->
<!--                                <a href="#" data-toggle="dropdown" data-display="static">-->
<!--                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-horizontal align-middle">-->
<!--                                        <circle cx="12" cy="12" r="1"></circle>-->
<!--                                        <circle cx="19" cy="12" r="1"></circle>-->
<!--                                        <circle cx="5" cy="12" r="1"></circle>-->
<!--                                    </svg>-->
<!--                                </a>-->

<!--                                <div class="dropdown-menu dropdown-menu-right">-->
<!--                                    <a class="dropdown-item" href="#">Action</a>-->
<!--                                    <a class="dropdown-item" href="#">Another action</a>-->
<!--                                    <a class="dropdown-item" href="#">Something else here</a>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                        <h5 class="card-title">Completed</h5>-->
<!--                        <h6 class="card-subtitle text-muted">Nam pretium turpis et arcu. Duis arcu tortor.</h6>-->
<!--                    </div>-->
<!--                    <div class="card-body">-->

<!--                        <div class="card mb-3 bg-light">-->
<!--                            <div class="card-body p-3">-->
<!--                                <div class="float-right mr-n2">-->
<!--                                    <label class="custom-control custom-checkbox">-->
<!--                                        <input type="checkbox" class="custom-control-input">-->
<!--                                        <span class="custom-control-label"></span>-->
<!--                                    </label>-->
<!--                                </div>-->
<!--                                <p>Nam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum.</p>-->
<!--                                <div class="float-right mt-n1">-->
<!--                                    <img src="https://bootdey.com/img/Content/avatar/avatar6.png" width="32" height="32" class="rounded-circle" alt="Avatar">-->
<!--                                </div>-->
<!--                                <a class="btn btn-outline-primary btn-sm" href="#">View</a>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                        <div class="card mb-3 bg-light">-->
<!--                            <div class="card-body p-3">-->
<!--                                <div class="float-right mr-n2">-->
<!--                                    <label class="custom-control custom-checkbox">-->
<!--                                        <input type="checkbox" class="custom-control-input">-->
<!--                                        <span class="custom-control-label"></span>-->
<!--                                    </label>-->
<!--                                </div>-->
<!--                                <p>In hac habitasse platea dictumst. Curabitur at lacus ac velit ornare lobortis. Curabitur a felis tristique.</p>-->
<!--                                <div class="float-right mt-n1">-->
<!--                                    <img src="https://bootdey.com/img/Content/avatar/avatar7.png" width="32" height="32" class="rounded-circle" alt="Avatar">-->
<!--                                </div>-->
<!--                                <a class="btn btn-outline-primary btn-sm" href="#">View</a>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                        <div class="card mb-3 bg-light">-->
<!--                            <div class="card-body p-3">-->
<!--                                <div class="float-right mr-n2">-->
<!--                                    <label class="custom-control custom-checkbox">-->
<!--                                        <input type="checkbox" class="custom-control-input">-->
<!--                                        <span class="custom-control-label"></span>-->
<!--                                    </label>-->
<!--                                </div>-->
<!--                                <p>Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis.</p>-->
<!--                                <div class="float-right mt-n1">-->
<!--                                    <img src="https://bootdey.com/img/Content/avatar/avatar8.png" width="32" height="32" class="rounded-circle" alt="Avatar">-->
<!--                                </div>-->
<!--                                <a class="btn btn-outline-primary btn-sm" href="#">View</a>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                        <div class="card mb-3 bg-light">-->
<!--                            <div class="card-body p-3">-->
<!--                                <div class="float-right mr-n2">-->
<!--                                    <label class="custom-control custom-checkbox">-->
<!--                                        <input type="checkbox" class="custom-control-input">-->
<!--                                        <span class="custom-control-label"></span>-->
<!--                                    </label>-->
<!--                                </div>-->
<!--                                <p>Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Maecenas malesuada.</p>-->
<!--                                <div class="float-right mt-n1">-->
<!--                                    <img src="https://bootdey.com/img/Content/avatar/avatar1.png" width="32" height="32" class="rounded-circle" alt="Avatar">-->
<!--                                </div>-->
<!--                                <a class="btn btn-outline-primary btn-sm" href="#">View</a>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                        <a href="#" class="btn btn-primary btn-block">Add new</a>-->
<!--                    </div>-->
<!--                </div>-->
<!--            </div>-->
        </div>

    </div>
</main>
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">

</script>
</body>
</html>