$base = "c:\Stark Communication Website\VL\pages"

$sidebar = @'
<li class="nav-item"><a href="../dashboard.html"><i class="fas fa-tachometer-alt"></i> Dashboard</a></li>
<li class="nav-item has-sub"><a href="#" onclick="toggleMenu('masters')"><i class="fas fa-book"></i> Masters <i class="fas fa-chevron-down arrow"></i></a><ul class="submenu" id="masters"><li><a href="course-creation.html">Course Creation</a></li><li><a href="find-course.html">Find Course</a></li></ul></li>
<li class="nav-item has-sub"><a href="#" onclick="toggleMenu('employee')"><i class="fas fa-users"></i> Employee <i class="fas fa-chevron-down arrow"></i></a><ul class="submenu" id="employee"><li><a href="employee-registration.html">Employee Registration</a></li><li><a href="find-employee.html">Find Employee</a></li></ul></li>
<li class="nav-item has-sub"><a href="#" onclick="toggleMenu('enquiry')"><i class="fas fa-question-circle"></i> Enquiry <i class="fas fa-chevron-down arrow"></i></a><ul class="submenu" id="enquiry"><li><a href="enquiry-source-master.html">Enquiry Source Master</a></li><li><a href="new-quick-enquiry.html">New Quick Enquiry</a></li><li><a href="new-enquiry-details.html">New Enquiry Details</a></li><li><a href="find-enquiry.html">Find Enquiry</a></li><li><a href="course-summary.html">Course Summary</a></li></ul></li>
<li class="nav-item has-sub"><a href="#" onclick="toggleMenu('registration')"><i class="fas fa-id-card"></i> Registration <i class="fas fa-chevron-down arrow"></i></a><ul class="submenu" id="registration"><li><a href="new-registration.html">New Registration</a></li><li><a href="find-registration.html">Find Registration</a></li><li><a href="downgrading-course.html">Downgrading the Course</a></li></ul></li>
<li class="nav-item has-sub"><a href="#" onclick="toggleMenu('fees')"><i class="fas fa-rupee-sign"></i> Fees Details <i class="fas fa-chevron-down arrow"></i></a><ul class="submenu" id="fees"><li><a href="fees-payment.html">Fees Payment</a></li><li><a href="find-fees-payment.html">Find Fees Payment</a></li><li><a href="installment-pay.html">Installment Pay</a></li><li><a href="fees-receipt.html">Fees Receipt</a></li></ul></li>
<li class="nav-item has-sub"><a href="#" onclick="toggleMenu('followup')"><i class="fas fa-phone-alt"></i> Follow Up <i class="fas fa-chevron-down arrow"></i></a><ul class="submenu" id="followup"><li><a href="enquiry-followup.html">Enquiry Follow Up</a></li><li><a href="fees-followup.html">Fees Follow Up</a></li></ul></li>
<li class="nav-item has-sub"><a href="#" onclick="toggleMenu('transaction')"><i class="fas fa-exchange-alt"></i> Transaction <i class="fas fa-chevron-down arrow"></i></a><ul class="submenu" id="transaction"><li><a href="fee-refund.html">Fee Refund</a></li><li><a href="fee-refund-details.html">Fee Refund Details</a></li><li><a href="new-expense.html">New Expense</a></li><li><a href="find-expense.html">Find Expense</a></li></ul></li>
<li class="nav-item has-sub"><a href="#" onclick="toggleMenu('ecertificate')"><i class="fas fa-certificate"></i> E-Certificate <i class="fas fa-chevron-down arrow"></i></a><ul class="submenu" id="ecertificate"><li><a href="old-student-entry.html">Old Student Entry</a></li><li><a href="request-certificate.html">Request Certificate</a></li><li><a href="rejected-student.html">Rejected Student Details</a></li><li><a href="generate-certificate.html">Generate Certificate</a></li><li><a href="new-certificate.html">New Certificate</a></li></ul></li>
<li class="nav-item has-sub"><a href="#" onclick="toggleMenu('reports')"><i class="fas fa-chart-bar"></i> Reports <i class="fas fa-chevron-down arrow"></i></a><ul class="submenu" id="reports"><li><a href="business-glance.html">Business Glance</a></li><li><a href="database-backup.html">Database Backup</a></li><li><a href="report-quick-enquiry.html">Quick Enquiry</a></li><li><a href="report-enquiry.html">Enquiry</a></li><li><a href="non-admission.html">Non Admission</a></li><li><a href="enquiry-followup-report.html">Enquiry Follow-Up</a></li><li><a href="enquiry-source-report.html">Enquiry Source</a></li><li><a href="enquiry-course-report.html">Enquiry Course</a></li><li><a href="admission-report.html">Admission Report</a></li><li><a href="registration-course.html">Registration Course</a></li><li><a href="enq-vs-reg.html">Enq. Vs Reg.</a></li><li><a href="fees-received.html">Fees Received</a></li><li><a href="fees-installment-report.html">Fees Installment</a></li><li><a href="fees-receivable.html">Fees Receivable</a></li><li><a href="receipt-number-report.html">Receipt Number Report</a></li><li><a href="fees-refund-report.html">Fees Refund</a></li><li><a href="expense-report.html">Expense</a></li><li><a href="duplicate-fee-receipt.html">Duplicate Fee Receipt</a></li><li><a href="student-feedback.html">Student Feedback</a></li></ul></li>
'@

$pages = @(
  @{f="employee-registration.html"; t="Employee Registration"; i="fa-user-plus"},
  @{f="find-employee.html"; t="Find Employee"; i="fa-search"},
  @{f="enquiry-source-master.html"; t="Enquiry Source Master"; i="fa-list"},
  @{f="new-quick-enquiry.html"; t="New Quick Enquiry"; i="fa-bolt"},
  @{f="new-enquiry-details.html"; t="New Enquiry / Quick Enquiry Details"; i="fa-file-alt"},
  @{f="find-enquiry.html"; t="Find Enquiry"; i="fa-search"},
  @{f="course-summary.html"; t="Course Summary"; i="fa-chart-pie"},
  @{f="new-registration.html"; t="New Registration"; i="fa-user-check"},
  @{f="find-registration.html"; t="Find Registration"; i="fa-search"},
  @{f="downgrading-course.html"; t="Downgrading the Course"; i="fa-arrow-down"},
  @{f="fees-payment.html"; t="Fees Payment"; i="fa-credit-card"},
  @{f="find-fees-payment.html"; t="Find Fees Payment"; i="fa-search"},
  @{f="installment-pay.html"; t="Installment Pay"; i="fa-calendar-check"},
  @{f="fees-receipt.html"; t="Fees Receipt"; i="fa-receipt"},
  @{f="enquiry-followup.html"; t="Enquiry Follow Up"; i="fa-comments"},
  @{f="fees-followup.html"; t="Fees Follow Up"; i="fa-money-bill-wave"},
  @{f="fee-refund.html"; t="Fee Refund"; i="fa-undo"},
  @{f="fee-refund-details.html"; t="Fee Refund Details"; i="fa-file-invoice"},
  @{f="new-expense.html"; t="New Expense"; i="fa-wallet"},
  @{f="find-expense.html"; t="Find Expense"; i="fa-search"},
  @{f="old-student-entry.html"; t="Old Student Entry"; i="fa-user-graduate"},
  @{f="request-certificate.html"; t="Request Certificate"; i="fa-paper-plane"},
  @{f="rejected-student.html"; t="Rejected Student Details"; i="fa-times-circle"},
  @{f="generate-certificate.html"; t="Generate Certificate"; i="fa-stamp"},
  @{f="new-certificate.html"; t="New Certificate"; i="fa-plus-square"},
  @{f="business-glance.html"; t="Business Glance"; i="fa-eye"},
  @{f="database-backup.html"; t="Database Backup"; i="fa-database"},
  @{f="report-quick-enquiry.html"; t="Quick Enquiry Report"; i="fa-bolt"},
  @{f="report-enquiry.html"; t="Enquiry Report"; i="fa-question"},
  @{f="non-admission.html"; t="Non Admission"; i="fa-user-times"},
  @{f="enquiry-followup-report.html"; t="Enquiry Follow-Up Report"; i="fa-comments"},
  @{f="enquiry-source-report.html"; t="Enquiry Source Report"; i="fa-list-alt"},
  @{f="enquiry-course-report.html"; t="Enquiry Course Report"; i="fa-book-open"},
  @{f="admission-report.html"; t="Admission Report"; i="fa-user-check"},
  @{f="registration-course.html"; t="Registration Course"; i="fa-id-badge"},
  @{f="enq-vs-reg.html"; t="Enq. Vs Reg."; i="fa-balance-scale"},
  @{f="fees-received.html"; t="Fees Received"; i="fa-hand-holding-usd"},
  @{f="fees-installment-report.html"; t="Fees Installment Report"; i="fa-calendar-alt"},
  @{f="fees-receivable.html"; t="Fees Receivable"; i="fa-hourglass-half"},
  @{f="receipt-number-report.html"; t="Receipt Number Report"; i="fa-hashtag"},
  @{f="fees-refund-report.html"; t="Fees Refund Report"; i="fa-undo-alt"},
  @{f="expense-report.html"; t="Expense Report"; i="fa-file-invoice-dollar"},
  @{f="duplicate-fee-receipt.html"; t="Duplicate Fee Receipt"; i="fa-copy"},
  @{f="student-feedback.html"; t="Student Feedback"; i="fa-star"}
)

foreach ($p in $pages) {
  $html = @"
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8"/><meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>$($p.t) - Veda Learning</title>
<link rel="stylesheet" href="../style.css"/><link rel="stylesheet" href="page.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"/>
</head>
<body>
<header class="topbar">
  <div class="topbar-left"><button class="toggle-btn" onclick="toggleSidebar()"><i class="fas fa-bars"></i></button><a href="../dashboard.html" class="brand">&#127891; Veda Learning</a></div>
  <div class="topbar-right"><span><i class="fas fa-bell"></i></span><span class="user-info"><i class="fas fa-user-circle"></i> Admin</span><a href="#" class="logout"><i class="fas fa-sign-out-alt"></i> Logout</a></div>
</header>
<div class="layout">
<aside class="sidebar" id="sidebar"><nav><ul>
$sidebar
</ul></nav></aside>
<main class="main-content">
  <div class="page-title"><h2><i class="fas $($p.i)"></i> $($p.t)</h2><span><a href="../dashboard.html">Dashboard</a> / $($p.t)</span></div>
  <div class="form-card"><p style="color:#888;font-size:14px;padding:20px 0;"><i class="fas $($p.i)" style="color:#6a0dad;margin-right:8px;"></i> $($p.t) — form and data will appear here.</p></div>
</main></div>
<script src="../script.js"></script>
</body></html>
"@
  $html | Out-File -FilePath "$base\$($p.f)" -Encoding UTF8
  Write-Host "Created: $($p.f)"
}

Write-Host "`nAll $($pages.Count) pages created successfully!"
