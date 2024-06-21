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
                        <h2 id="form-title">Remove Employee</h2>
                    </div>
                    <div class="card-body">
                        <form id="employeeForm" action="delete" method="post">
                <div class="row mb-3">
                        <div class="col">
                            <label for="employeId" class="form-label">Employee Id</label>
                            <input type="text" name="id" class="form-control border border-warning" id="employeeId" required>
                        </div>
                       
                    </div>
                    
                    <input type="submit" id="submitBtn" class="btn" value="Delete Employee">
					<a href="delete.jsp" id="resetBtn" class="btn " style="margin-left: 3rem">reset</a>
                </form>
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

