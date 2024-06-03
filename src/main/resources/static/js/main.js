var remainder = "<li id=\"%id%\" class=\"list-group-item d-flex justify-content-between lh-condensed\">    <div><h6 class=\"my-0\">%what%</h6>            <div>        <small class=\"text-muted\">Brief description of this</small>              </div>        </div>    <div>      <small class=\"text-muted due-status\">due: <small class=\"text-danger\">%when%</small></small>        <small class=\"text-muted due-status\">status: <small  class=\"text-danger\">%status%</small></small>    </div>    <div class=\"btn-toolbar mb-3\" role=\"toolbar\" aria-label=\"Toolbar with button groups\">      <div class=\"btn-group me-2\" role=\"group\" aria-label=\"First group\">        <button type=\"button\" class=\"btn btn-outline-secondary\"><i class=\"bi bi-pencil-square\"></i></button>        <button id=\"delete\" type=\"button\" class=\"btn btn-outline-secondary delete\"><i class=\"bi bi-trash\"></i></button>      </div>    </li>";
$(document).ready(function(){
    $.ajax({
        type: 'POST',
        url: "get-all-remainders", 
        data: JSON.stringify({
          }),
          error: function(e) {
            console.log(e);
          },
          dataType: "json",
          contentType: "application/json",
          success: function(data) {
            console.log(JSON.stringify(data[0]));

            $.each(data, function(i, item) {
              console.log(item);
              var ele = remainder.replace("%what%", item.what).replace("%when%", item.when).replace("%id%", item.id)
              $("#notes" ).append( ele );
            });
          }
    });
    $(".delete").click(function(){
      alert();
      console.log($(this).parent().parent().id);
    });
});

$("#create-new-remainder").click(function(){
  $.ajax({
    type: 'POST',
    url: "create-new-remainder", 
    data: JSON.stringify({
       "what":$("#what").val(),
       "where":$("#where").val(),
       "when":$("#when").val(),
       "description":$("#description").val(),
       "status":"new"
      }),
      error: function(e) {
        console.log(e);
      },
      dataType: "json",
      contentType: "application/json",
      success: function(data) {
        console.log(JSON.stringify(data[0]));

        $.each(data, function(i, item) {
          console.log(item);
          var ele = remainder.replace("%what%", item.what).replace("%when%", item.when)
          $("#notes" ).append( ele );
        });
      }
});
});
$( '#notes' ).on( 'click', '.delete', function () {
  var li = $(this).parent().parent().parent();
  var remainder = li.children().eq(0).children().eq(0);
  //  alert($(this).parent().parent().parent().attr("id"));
   confirm("Delete "+ li.attr("id") + "-" + remainder.html());
  });
// $(function () {
//   $('#datetimepicker4').datetimepicker();
// });
