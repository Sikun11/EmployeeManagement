<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Management System</title>
   
    <!-- Bootstrap CSS for styling -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <style>
        body {
    font-family: 'Arial', sans-serif;
    background-color: #f8f9fa;
}

.wrapper {
    display: flex;
    width: 100%;
    align-items: stretch;
}

#sidebar {
    min-width: 250px;
    max-width: 250px;
    background: #3d4a58;
    color: #fff;
    transition: all 0.3s;
}

#sidebar .sidebar-header {
    padding: 20px;
    background: #343a40;
}

#sidebar ul.components {

    padding: 20px 0;
    border-bottom: 1px solid #246180;
}

#sidebar ul p {
    color: #fff;
    padding: 10px;
}

#sidebar ul li a {
    
    text-decoration: none;
    font-weight: bold;
    font-family:monospace;
    color: rgb(0, 179, 255);
    padding: 10px;
    font-size: 1.1em;
    display: block;
}

#sidebar ul li a:hover {
    color: #343a40;
    background: #fff;
}

#sidebar ul li.active > a,
a[aria-expanded="true"] {
    color: #fff;
    background: #343a40;
}

#content {
    width: 100%;
    padding: 20px;
    min-height: 100vh;
    transition: all 0.3s;
}

.card-header h2 {
    margin: 0;
}

.table {
    margin-top: 20px;
}

.btn-group button {
    margin-right: 5px;
}
#submitBtn {
    background-color: #4caf50;
    color: #fff;
}

#resetBtn {
    background-color: #f44336;
    color: #fff;
}
    </style>

</head>
<body>
    <div class="wrapper">
        <!-- Sidebar -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <h3>Employee Management</h3>
            </div>
            <ul style="padding-top: 3rem;">
                <li>
                    <a href="home.jsp">Add New Employee</a>
                </li>
                <li style="padding-top: 1.5rem;">
                    <a href="deleteData.jsp">Delete Employee</a>
                </li>
                <li style="padding-top: 1.5rem;">
                    <a href="updateData.jsp">Update Employee</a>
                </li>
            </ul>
        </nav>

        <!-- Page Content -->

            <div class="container mt-4">
                <h2 class="text-center mb-4">Manage Employees</h2>

                <!-- Form to insert/update an employee -->
                <div class="card mb-4">
                    <div class="card-header">
                        <h2 id="form-title">Update Employee</h2>
                    </div>
                    <div class="card-body">
                        <div class="row mb-3">
                        <form action="updatename" method="post" class="col text-center">
                            <button type="submit" class="btn btn-primary mb-3">Update Name</button>
                            <input type="text" name="id" class="form-control border border-warning" placeholder="Employee id" required>
                            <input type="text" name="name" class="form-control border border-warning mt-2" placeholder="New Employee name" required>
                        </form>
                        <form action="updatepos" method="post" class="col text-center">
                            <button type="submit" class="btn btn-primary mb-3">Update Position</button>
                            <input type="text" name="id" class="form-control border border-warning" placeholder="Employee id"  required>
                            <input type="text" name="position" class="form-control border border-warning mt-2" placeholder="New Position" required>
                        </form>
                        <form action="updatedept" method="post" class="col text-center">
                            <button type="submit" class="btn btn-primary mb-3">Update Department</button>
                            <input type="text" name="id" class="form-control border border-warning" placeholder="Employee id" required>
                            <input type="text" name="department" class="form-control border border-warning mt-2" placeholder="New Department" required>
                        </form>
                        <form action="updatecontact" method="post" class="col text-center">
                            <button type="submit" class="btn btn-primary mb-3">Update Contact-no</button>
                            <input type="text" name="id" class="form-control border border-warning" placeholder="Employee id" required>
                            <input type="number" name="contact" class="form-control border border-warning mt-2" placeholder="New Department" required>
                        </form>
                        <form action="updateemail" method="post" class="col text-center">
                            <button type="submit" class="btn btn-primary mb-3">Update Email</button>
                            <input type="text" name="id" class="form-control border border-warning" placeholder="Employee id" required>
                            <input type="text" name="email" class="form-control border border-warning mt-2" placeholder="New Email"  required>
                        </form>
                    </div>
                    </div>
                </div>

                <!-- Table to display employees -->
                <jsp:include page="view.jsp" />
            </div>
        </div>
    </div>
<script>
     document.getElementById('sidebarCollapse').addEventListener('click', function () {
        document.getElementById('sidebar').classList.toggle('active');
     });
</script>
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="script.js"></script>
</body>
</html>
