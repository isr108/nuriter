<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Summernote</title>
  <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
  <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
  <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>
</head>
<body>
  <div id="summernote"><p>Hello Summernote</p></div>
  <script>
    $(document).ready(function() {
        $('#summernote').summernote({
          width: 700,   
          height: 200,                 // set editor height
           minHeight: 200,             // set minimum height of editor
           maxHeight: 200,             // set maximum height of editor
           focus: true                  // set focus to editable area after initializing summernote
       
        });
    });
  </script>
</body>
</html>