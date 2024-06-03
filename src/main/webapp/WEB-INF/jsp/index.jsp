<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="/docs/4.0/assets/img/favicons/favicon.ico">

    <title>Home</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/checkout/">

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <!-- Custom styles for this template -->
    <link href="css/main.css" rel="stylesheet">
  </head>

  <body class="bg-light">

    <div class="container">
      <div class="row">
        <div class="col-md-4 order-md-2 mb-4">
          <h4 class="d-flex justify-content-between align-items-center mb-3">
            <span class="text-muted">Your Notes</span>
            <span class="badge badge-secondary badge-pill">3</span>
          </h4>
          <ul class="list-group mb-3">
            <li class="list-group-item d-flex justify-content-between lh-condensed">
              <div>
                <h6 class="my-0">Note this</h6>
                <small class="text-muted">Brief description od this</small>
              </div>
              <span class="text-muted">*</span>
            </li>
            <li class="list-group-item d-flex justify-content-between lh-condensed">
              <div>
                <h6 class="my-0">Note this also</h6>
                <small class="text-muted">Brief description of this</small>
              </div>
              <span class="text-muted">done</span>
            </li>
            <li class="list-group-item d-flex justify-content-between bg-light">
              <div class="text-success">
                <h6 class="my-0">Remember this</h6>
                <small>9043216585</small>
              </div>
              <span class="text-success">*</span>
            </li>
            
          </ul>

          <form class="card p-2">
            <div class="input-group">
              <input type="text" class="form-control" placeholder="Promo code">
              <div class="input-group-append">
                <button type="submit" class="btn btn-secondary">Note this</button>
              </div>
            </div>
          </form>
        </div>
        <div class="col-md-8 order-md-1">
            <div class="col-md-12 order-md-2 mb-4">
                <h4 class="d-flex justify-content-between align-items-center mb-3">
                  <span class="text-muted">Your Remainder</span>
                  <span class="badge badge-secondary badge-pill">3</span>
                </h4>

                <UL class="list-group mb-3" id="notes">
                  <!-- <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div><h6 class="my-0">---STATIC---</h6>
                      
                      <div>
                        <small class="text-muted">Brief description of this</small>
                        
                      </div>    
                    </div>
                    <div>
                      <small class="text-muted due-status">due: <small class="text-danger">Today</small></small>
                        <small class="text-muted due-status">status: <small  class="text-danger">pending</small></small>
                    </div>
                    <div class="btn-toolbar mb-3" role="toolbar" aria-label="Toolbar with button groups">
                      <div class="btn-group me-2" role="group" aria-label="First group">
                        <button type="button" class="btn btn-outline-secondary"><i class="bi bi-pencil-square"></i></button>
                        <button type="button" class="btn btn-outline-secondary"><i class="bi bi-trash"></i></button>
                      </div>
                  </li> -->
                </UL>
      
                <form class="card p-2">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Promo code">
                    <div class="input-group-append">
                      <button type="submit" class="btn btn-secondary">Note this</button>
                    </div>
                  </div>
                </form>
              </div>
          <h4 class="mb-3">New Remainder</h4>
          <form class="needs-validation" novalidate>
            <div class="row">
              <div class="col-md-3 mb-3" style="padding:1px;text-align: center;">
                <label for="what">What</label>
                <input type="text" class="form-control" id="what" placeholder="" value="" required>
                <div class="invalid-feedback">
                  Valid What is required.
                </div>
              </div>
              <div class="col-md-3 mb-3" style="padding:1px;text-align: center;">
                <label for="when">When</label>
                <div class='input-group date' id='datetimepicker4'>
                  <input type='text' class="form-control" value="2024-06-03"/>
                  <span class="input-group-addon">
                  <span class="glyphicon glyphicon-calendar"></span>
                  </span>
               </div>
                <div class="invalid-feedback">
                  Valid When is required.
                </div>
              </div>
              <div class="col-md-3 mb-3" style="padding:1px;text-align: center;">
                <label for="where">Where</label>
                <input type="text" class="form-control" id="where" placeholder="" value="" required>
                <div class="invalid-feedback">
                  Valid Where is required.
                </div>
              </div>
              <div class="col-md-3 mb-3" style="padding:1px;text-align: center;">
                <label for="description">Description</label>
                <input type="text" class="form-control" id="description" placeholder="" value="" required>
                <div class="invalid-feedback">
                  Valid description is required.
                </div>
              </div>

            </div>

            <hr class="mb-4">
            <button id="create-new-remainder" class="btn btn-primary btn-lg btn-block" type="button">Create</button>
          </form>
        </div>
      </div>

      <footer class="my-5 pt-5 text-muted text-center text-small">
       <!--  -->
      </footer>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" src="js\jquery-3.7.1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    
    <script>
      // Example starter JavaScript for disabling form submissions if there are invalid fields
      (function() {
        'use strict';

        window.addEventListener('load', function() {
          // Fetch all the forms we want to apply custom Bootstrap validation styles to
          var forms = document.getElementsByClassName('needs-validation');

          // Loop over them and prevent submission
          var validation = Array.prototype.filter.call(forms, function(form) {
            form.addEventListener('submit', function(event) {
              if (form.checkValidity() === false) {
                event.preventDefault();
                event.stopPropagation();
              }
              form.classList.add('was-validated');
            }, false);
          });
        }, false);
      })();
    </script>
  </body>
</html>
