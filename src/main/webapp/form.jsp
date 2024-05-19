<%-- 
    Document   : form
    Created on : May 18, 2024, 10:49:36 p.m.
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Popup Form</title>
  <!-- Bootstrap CSS -->
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom CSS -->
  <style>
    /* Center the popup */
    .popup {
      display: none;
      position: fixed;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      background-color: #f8f9fa;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0,0,0,0.2);
      z-index: 9999;
    }
    body {
      background-color: #f8f9fa;
    }
  </style>
</head>
<body>

<div class="container mt-5">
  <div class="row justify-content-center">
    <div class="col-md-6">
      <div class="card">
        <div class="card-body">
          <h1 class="card-title text-center">Popup Form</h1>
          <div class="text-center">
            <button id="open-popup-btn" class="btn btn-primary mt-3">Open Popup</button>
          </div>
          <div id="popup-form" class="popup mt-3">
            <!-- Form will be loaded here -->
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Bootstrap JS and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- Custom Script -->
<script>
  $(document).ready(function(){
    $('#open-popup-btn').click(function(){
      $('#popup-form').load('popup.jsp');
      $('#popup-form').toggle('slow');
    });
  </script>
</body>
</html>
