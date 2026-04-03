import os

base_path = r"c:\Stark Communication Website\VL\pages"

pages = [
    ("course-creation.html", "Course Creation", "fa-plus-circle"),
    ("find-course.html", "Find Course", "fa-search"),
    ("employee-registration.html", "Employee Registration", "fa-user-plus"),
    ("find-employee.html", "Find Employee", "fa-search"),
    ("enquiry-source-master.html", "Enquiry Source Master", "fa-list"),
    ("new-quick-enquiry.html", "New Quick Enquiry", "fa-bolt"),
    ("new-enquiry-details.html", "New Enquiry / Quick Enquiry Details", "fa-file-alt"),
    ("find-enquiry.html", "Find Enquiry", "fa-search"),
    ("course-summary.html", "Course Summary", "fa-chart-pie"),
    ("new-registration.html", "New Registration", "fa-user-check"),
    ("find-registration.html", "Find Registration", "fa-search"),
    ("downgrading-course.html", "Downgrading the Course", "fa-arrow-down"),
    ("fees-payment.html", "Fees Payment", "fa-credit-card"),
    ("find-fees-payment.html", "Find Fees Payment", "fa-search"),
    ("installment-pay.html", "Installment Pay", "fa-calendar-check"),
    ("fees-receipt.html", "Fees Receipt", "fa-receipt"),
    ("enquiry-followup.html", "Enquiry Follow Up", "fa-comments"),
    ("fees-followup.html", "Fees Follow Up", "fa-money-bill-wave"),
    ("fee-refund.html", "Fee Refund", "fa-undo"),
    ("fee-refund-details.html", "Fee Refund Details", "fa-file-invoice"),
    ("new-expense.html", "New Expense", "fa-wallet"),
    ("find-expense.html", "Find Expense", "fa-search"),
    ("old-student-entry.html", "Old Student Entry", "fa-user-graduate"),
    ("request-certificate.html", "Request Certificate", "fa-paper-plane"),
    ("rejected-student.html", "Rejected Student Details", "fa-times-circle"),
    ("generate-certificate.html", "Generate Certificate", "fa-stamp"),
    ("new-certificate.html", "New Certificate", "fa-plus-square"),
    ("business-glance.html", "Business Glance", "fa-eye"),
    ("database-backup.html", "Database Backup", "fa-database"),
    ("report-quick-enquiry.html", "Quick Enquiry Report", "fa-bolt"),
    ("report-enquiry.html", "Enquiry Report", "fa-question"),
    ("non-admission.html", "Non Admission", "fa-user-times"),
    ("enquiry-followup-report.html", "Enquiry Follow-Up Report", "fa-comments"),
    ("enquiry-source-report.html", "Enquiry Source Report", "fa-list-alt"),
    ("enquiry-course-report.html", "Enquiry Course Report", "fa-book-open"),
    ("admission-report.html", "Admission Report", "fa-user-check"),
    ("registration-course.html", "Registration Course", "fa-id-badge"),
    ("enq-vs-reg.html", "Enq. Vs Reg.", "fa-balance-scale"),
    ("fees-received.html", "Fees Received", "fa-hand-holding-usd"),
    ("fees-installment-report.html", "Fees Installment Report", "fa-calendar-alt"),
    ("fees-receivable.html", "Fees Receivable", "fa-hourglass-half"),
    ("receipt-number-report.html", "Receipt Number Report", "fa-hashtag"),
    ("fees-refund-report.html", "Fees Refund Report", "fa-undo-alt"),
    ("expense-report.html", "Expense Report", "fa-file-invoice-dollar"),
    ("duplicate-fee-receipt.html", "Duplicate Fee Receipt", "fa-copy"),
    ("student-feedback.html", "Student Feedback", "fa-star"),
]

template = '''<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>{title} - Veda Learning</title>
<link rel="stylesheet" href="../style.css"/>
<link rel="stylesheet" href="page.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"/>
</head>
<body>
<header class="topbar">
<div class="topbar-left"><button class="toggle-btn" onclick="toggleSidebar()"><i class="fas fa-bars"></i></button><a href="../dashboard.html" class="brand">🎓 Veda Learning</a></div>
<div class="topbar-right"><span><i class="fas fa-bell"></i></span><span class="user-info"><i class="fas fa-user-circle"></i> Admin</span><a href="#" class="logout"><i class="fas fa-sign-out-alt"></i> Logout</a></div>
</header>
<div class="layout">
<aside class="sidebar" id="sidebar"><nav><ul>
<li class="nav-item"><a href="../dashboard.html"><i class="fas fa-tachometer-alt"></i> Dashboard</a></li>
<li class="nav-item has-sub"><a href="#" onclick="toggleMenu('masters')"><i class="fas fa-book"></i> Masters <i class="fas fa-chevron-down arrow"></i></a><ul class="submenu" id="masters"><li><a href="course-creation.html"><i class="fas fa-plus-circle"></i> Course Creation</a></li><li><a href="find-course.html"><i class="fas fa-search"></i> Find Course</a></li></ul></li>
<li class="nav-item has-sub"><a href="#" onclick="toggleMenu('employee')"><i class="fas fa-users"></i> Employee <i class="fas fa-chevron-down arrow"></i></a><ul class="submenu" id="employee"><li><a href="employee-registration.html"><i class="fas fa-user-plus"></i> Employee Registration</a></li><li><a href="find-employee.html"><i class="fas fa-search"></i> Find Employee</a></li></ul></li>
<li class="nav-item has-sub"><a href="#" onclick="toggleMenu('enquiry')"><i class="fas fa-question-circle"></i> Enquiry <i class="fas fa-chevron-down arrow"></i></a><ul class="submenu" id="enquiry"><li><a href="enquiry-source-master.html">Enquiry Source Master</a></li><li><a href="new-quick-enquiry.html">New Quick Enquiry</a></li><li><a href="new-enquiry-details.html">New Enquiry Details</a></li><li><a href="find-enquiry.html">Find Enquiry</a></li><li><a href="course-summary.html">Course Summary</a></li></ul></li>
<li class="nav-item has-sub"><a href="#" onclick="toggleMenu('registration')"><i class="fas fa-id-card"></i> Registration <i class="fas fa-chevron-down arrow"></i></a><ul class="submenu" id="registration"><li><a href="new-registration.html">New Registration</a></li><li><a href="find-registration.html">Find Registration</a></li><li><a href="downgrading-course.html">Downgrading the Course</a></li></ul></li>
<li class="nav-item has-sub"><a href="#" onclick="toggleMenu('fees')"><i class="fas fa-rupee-sign"></i> Fees Details <i class="fas fa-chevron-down arrow"></i></a><ul class="submenu" id="fees"><li><a href="fees-payment.html">Fees Payment</a></li><li><a href="find-fees-payment.html">Find Fees Payment</a></li><li><a href="installment-pay.html">Installment Pay</a></li><li><a href="fees-receipt.html">Fees Receipt</a></li></ul></li>
<li class="nav-item has-sub"><a href="#" onclick="toggleMenu('followup')"><i class="fas fa-phone-alt"></i> Follow Up <i class="fas fa-chevron-down arrow"></i></a><ul class="submenu" id="followup"><li><a href="enquiry-followup.html">Enquiry Follow Up</a></li><li><a href="fees-followup.html">Fees Follow Up</a></li></ul></li>
<li class="nav-item has-sub"><a href="#" onclick="toggleMenu('transaction')"><i class="fas fa-exchange-alt"></i> Transaction <i class="fas fa-chevron-down arrow"></i></a><ul class="submenu" id="transaction"><li><a href="fee-refund.html">Fee Refund</a></li><li><a href="fee-refund-details.html">Fee Refund Details</a></li><li><a href="new-expense.html">New Expense</a></li><li><a href="find-expense.html">Find Expense</a></li></ul></li>
<li class="nav-item has-sub"><a href="#" onclick="toggleMenu('ecertificate')"><i class="fas fa-certificate"></i> E-Certificate <i class="fas fa-chevron-down arrow"></i></a><ul class="submenu" id="ecertificate"><li><a href="old-student-entry.html">Old Student Entry</a></li><li><a href="request-certificate.html">Request Certificate</a></li><li><a href="rejected-student.html">Rejected Student Details</a></li><li><a href="generate-certificate.html">Generate Certificate</a></li><li><a href="new-certificate.html">New Certificate</a></li></ul></li>
<li class="nav-item has-sub"><a href="#" onclick="toggleMenu('reports')"><i class="fas fa-chart-bar"></i> Reports <i class="fas fa-chevron-down arrow"></i></a><ul class="submenu" id="reports"><li><a href="business-glance.html">Business Glance</a></li><li><a href="database-backup.html">Database Backup</a></li><li><a href="report-quick-enquiry.html">Quick Enquiry</a></li><li><a href="report-enquiry.html">Enquiry</a></li><li><a href="non-admission.html">Non Admission</a></li><li><a href="enquiry-followup-report.html">Enquiry Follow-Up</a></li><li><a href="enquiry-source-report.html">Enquiry Source</a></li><li><a href="enquiry-course-report.html">Enquiry Course</a></li><li><a href="admission-report.html">Admission Report</a></li><li><a href="registration-course.html">Registration Course</a></li><li><a href="enq-vs-reg.html">Enq. Vs Reg.</a></li><li><a href="fees-received.html">Fees Received</a></li><li><a href="fees-installment-report.html">Fees Installment</a></li><li><a href="fees-receivable.html">Fees Receivable</a></li><li><a href="receipt-number-report.html">Receipt Number Report</a></li><li><a href="fees-refund-report.html">Fees Refund</a></li><li><a href="expense-report.html">Expense</a></li><li><a href="duplicate-fee-receipt.html">Duplicate Fee Receipt</a></li><li><a href="student-feedback.html">Student Feedback</a></li></ul></li>
</ul></nav></aside>
<main class="main-content">
<div class="page-title"><h2><i class="fas {icon}"></i> {title}</h2><span><a href="../dashboard.html">Dashboard</a> / {title}</span></div>
<div class="form-card"><p style="color:#888;font-size:14px;"><i class="fas {icon}" style="color:#6a0dad"></i> {title} content goes here.</p></div>
</main></div>
<script src="../script.js"></script>
</body>
</html>'''

for filename, title, icon in pages:
    content = template.format(title=title, icon=icon)
    with open(os.path.join(base_path, filename), 'w', encoding='utf-8') as f:
        f.write(content)

print(f"Successfully created {len(pages)} pages!")
