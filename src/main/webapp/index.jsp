<%--
  Created by IntelliJ IDEA.
  User: Dimon
  Date: 14.05.2016
  Time: 17:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Notes</title>
    <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="jquery/jquery.tabledit.min.js"></script>
    <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.11/js/jquery.dataTables.min.js"></script>
    <script>
      $(document).ready(function() {
        var t = $('#example').DataTable();
        var counter = 1;

        $('#addRow').on( 'click', function () {
          t.row.add( [
            counter +'.1',
            counter +'.2',
            counter +'.3',
            counter +'.4',
            counter +'.5'
          ] ).draw( false );

          counter++;
        } );

        // Automatically add a first row of data
        $('#addRow').click();
      } );
    </script>
  </head>
  <body>

  <button id="addRow">Add new row</button>
  <table id="example" class="display" cellspacing="0" width="100%">
    <thead>
    <tr>
      <th>Column 1</th>
      <th>Column 2</th>
      <th>Column 3</th>
      <th>Column 4</th>
      <th>Column 5</th>
    </tr>
    </thead>
    <tfoot>
    <tr>
      <th>Column 1</th>
      <th>Column 2</th>
      <th>Column 3</th>
      <th>Column 4</th>
      <th>Column 5</th>
    </tr>
    </tfoot>
  </table>

  <div class="jquery-script-clear"></div>
  <div class="container" style="margin-top:150px;">
    <h1>jQuery Tabledit Plugin Demo</h1>
    <table class="table table-striped table-bordered" id="example">
      <caption>
        Click the table cells to edit.
      </caption>
      <thead>
      <tr>
        <th>#</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Username</th>
      </tr>
      </thead>
      <tbody>
      <tr>
        <th scope="row">1</th>
        <td>Mark</td>
        <td>Otto</td>
        <td>@mdo</td>
      </tr>
      <tr>
        <th scope="row">2</th>
        <td>Jacob</td>
        <td>Thornton</td>
        <td>@fat</td>
      </tr>
      <tr>
        <th scope="row">3</th>
        <td>Larry</td>
        <td>the Bird</td>
        <td>@twitter</td>
      </tr>
      </tbody>
    </table>
    <table class="table table-striped table-bordered" id="example-2">
      <caption>
        Click the table cells to edit.
      </caption>
      <thead>
      <tr>
        <th>#</th>
        <th>First</th>
        <th>Last</th>
        <th>Nickname</th>
      </tr>
      </thead>
      <tbody>
      <tr>
        <th scope="row">1</th>
        <td>Mark</td>
        <td>Otto</td>
        <td>@mdo</td>
      </tr>
      <tr>
        <th scope="row">2</th>
        <td>Jacob</td>
        <td>Thornton</td>
        <td>@fat</td>
      </tr>
      <tr>
        <th scope="row">3</th>
        <td>Larry</td>
        <td>the Bird</td>
        <td>@twitter</td>
      </tr>
      </tbody>
    </table>
    <button id="newRowButton">New Row</button>
    </div>

  <script>
//    $('#newRowButton').on('click', function(){
//      $('#example').find('tr:last').after('<tr><tr><th scope="row">1</th><td></td><td>new</td><td>@mdo</td></tr></tr>');
//    });
    $('#example').Tabledit({
      editButton: false,
      removeButton: false,
      columns: {
        identifier: [0, 'id'],
        editable: [[1, 'First Name'],[2, 'Last Name'],[3, 'Username', '{"1": "@mdo", "2": "@fat", "3": "@twitter"}']]
      }
    });
    $('#example-2').Tabledit({
      columns: {
        identifier: [0, 'id'],
        editable: [[1, 'First'],[2, 'Last'],[3, 'Nickname', '{"1": "@mdo", "2": "@fat", "3": "@twitter"}']]
      }
    });
  </script>
  </body>
</html>
