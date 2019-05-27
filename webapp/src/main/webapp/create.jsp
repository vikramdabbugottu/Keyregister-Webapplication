<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>
<title>Create Page</title>
</head>
<body>

<h2>Create a new key</h2>
<p>Add a new key to the database.</p>

<div class="container">
  <form action="/sucesspage">
    <div class="row">
      <div class="col-25">
        <label for="district">district</label>
      </div>
      <div class="col-75">
        <input type="text" id="district" name="district" placeholder="enter the district number..">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="ownername">Owner name</label>
      </div>
      <div class="col-75">
        <input type="text" id="ownername" name="Owner name" placeholder="enter the appartment owners name..">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="city">City</label>
      </div>
      <div class="col-75">
        <select id="city" name="city">
          <option value="Linkoping">Linköping</option>
          <option value="norrkoping">Norrköping</option>
          <option value="uppsala">uppsala</option>
          <option value="Motala">Motala</option>
        </select>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="adress">Adress</label>
      </div>
      <div class="col-75">
        <textarea id="adress" name="adress" placeholder="enter the adress.." style="height:100px"></textarea>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="keytype">Type</label>
      </div>
      <div class="col-75">
        <input type="text" id="keytype" name="keytype" placeholder="enter if its key or tagg or code..">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="keydetails">Key Details</label>
      </div>
      <div class="col-75">
        <input type="text" id="keydetails" name="keydetails" placeholder="enter key details (ASSA/ALFA) or tagg number..">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="keyinfo">Key/tag Information</label>
      </div>
      <div class="col-75">
        <input type="text" id="keyinfo" name="keyinfo" placeholder="enter the key number of the tag RFID info..">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="otherinfo">Other Information</label>
      </div>
      <div class="col-75">
        <textarea id="otherinfo" name="otherinfo" placeholder="enter other info (date, company, reason for new key e.t.c).." style="height:100px"></textarea>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="ownerdetails">Contact Information</label>
      </div>
      <div class="col-75">
        <textarea id="ownerdetails" name="ownerdetails" placeholder="enter contact person details (nmae, mobile, adress).." style="height:100px"></textarea>
      </div>
    </div>
    <br>
    <div class="row">
      <input type="submit" value="Create new keys">
    </div>
  </form>
</div>

</body>

</html>