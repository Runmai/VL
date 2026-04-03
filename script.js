// ===== SIDEBAR HTML =====
const sidebarHTML = `
<div class="sidebar-logo">
  <img src="LOGOPATH/logo.svg" alt="Veda Learning" class="sidebar-logo-img"/>
</div>
<nav><ul>
<li class="nav-item"><a href="ROOTPATH/dashboard.html"><i class="fas fa-tachometer-alt"></i> Dashboard</a></li>
<li class="nav-item has-sub"><a href="#" onclick="toggleMenu('masters')"><i class="fas fa-book"></i> Masters <i class="fas fa-chevron-down arrow"></i></a>
<ul class="submenu" id="masters">
  <li><a href="PGPATH/course-creation.html"><i class="fas fa-plus-circle"></i> Course Creation</a></li>
  <li><a href="PGPATH/find-course.html"><i class="fas fa-search"></i> Find Course</a></li>
</ul></li>
<li class="nav-item has-sub"><a href="#" onclick="toggleMenu('employee')"><i class="fas fa-users"></i> Employee <i class="fas fa-chevron-down arrow"></i></a>
<ul class="submenu" id="employee">
  <li><a href="PGPATH/employee-registration.html"><i class="fas fa-user-plus"></i> Employee Registration</a></li>
  <li><a href="PGPATH/find-employee.html"><i class="fas fa-search"></i> Find Employee</a></li>
</ul></li>
<li class="nav-item has-sub"><a href="#" onclick="toggleMenu('enquiry')"><i class="fas fa-question-circle"></i> Enquiry <i class="fas fa-chevron-down arrow"></i></a>
<ul class="submenu" id="enquiry">
  <li><a href="PGPATH/enquiry-source-master.html"><i class="fas fa-list"></i> Enquiry Source Master</a></li>
  <li><a href="PGPATH/new-quick-enquiry.html"><i class="fas fa-bolt"></i> New Quick Enquiry</a></li>
  <li><a href="PGPATH/new-enquiry-details.html"><i class="fas fa-file-alt"></i> New Enquiry / Quick Enquiry Details</a></li>
  <li><a href="PGPATH/find-enquiry.html"><i class="fas fa-search"></i> Find Enquiry</a></li>
  <li><a href="PGPATH/course-summary.html"><i class="fas fa-chart-pie"></i> Course Summary</a></li>
</ul></li>
<li class="nav-item has-sub"><a href="#" onclick="toggleMenu('registration')"><i class="fas fa-id-card"></i> Registration <i class="fas fa-chevron-down arrow"></i></a>
<ul class="submenu" id="registration">
  <li><a href="PGPATH/new-registration.html"><i class="fas fa-user-check"></i> New Registration</a></li>
  <li><a href="PGPATH/find-registration.html"><i class="fas fa-search"></i> Find Registration</a></li>
  <li><a href="PGPATH/downgrading-course.html"><i class="fas fa-arrow-down"></i> Downgrading the Course</a></li>
</ul></li>
<li class="nav-item has-sub"><a href="#" onclick="toggleMenu('fees')"><i class="fas fa-rupee-sign"></i> Fees Details <i class="fas fa-chevron-down arrow"></i></a>
<ul class="submenu" id="fees">
  <li><a href="PGPATH/fees-payment.html"><i class="fas fa-credit-card"></i> Fees Payment</a></li>
  <li><a href="PGPATH/find-fees-payment.html"><i class="fas fa-search"></i> Find Fees Payment</a></li>
  <li><a href="PGPATH/installment-pay.html"><i class="fas fa-calendar-check"></i> Installment Pay</a></li>
  <li><a href="PGPATH/fees-receipt.html"><i class="fas fa-receipt"></i> Fees Receipt</a></li>
</ul></li>
<li class="nav-item has-sub"><a href="#" onclick="toggleMenu('followup')"><i class="fas fa-phone-alt"></i> Follow Up <i class="fas fa-chevron-down arrow"></i></a>
<ul class="submenu" id="followup">
  <li><a href="PGPATH/enquiry-followup.html"><i class="fas fa-comments"></i> Enquiry Follow Up</a></li>
  <li><a href="PGPATH/fees-followup.html"><i class="fas fa-money-bill-wave"></i> Fees Follow Up</a></li>
</ul></li>
<li class="nav-item has-sub"><a href="#" onclick="toggleMenu('transaction')"><i class="fas fa-exchange-alt"></i> Transaction <i class="fas fa-chevron-down arrow"></i></a>
<ul class="submenu" id="transaction">
  <li><a href="PGPATH/fee-refund.html"><i class="fas fa-undo"></i> Fee Refund</a></li>
  <li><a href="PGPATH/fee-refund-details.html"><i class="fas fa-file-invoice"></i> Fee Refund Details</a></li>
  <li><a href="PGPATH/new-expense.html"><i class="fas fa-wallet"></i> New Expense</a></li>
  <li><a href="PGPATH/find-expense.html"><i class="fas fa-search"></i> Find Expense</a></li>
</ul></li>
<li class="nav-item has-sub"><a href="#" onclick="toggleMenu('ecertificate')"><i class="fas fa-certificate"></i> E-Certificate <i class="fas fa-chevron-down arrow"></i></a>
<ul class="submenu" id="ecertificate">
  <li><a href="PGPATH/old-student-entry.html"><i class="fas fa-user-graduate"></i> Old Student Entry</a></li>
  <li><a href="PGPATH/request-certificate.html"><i class="fas fa-paper-plane"></i> Request Certificate</a></li>
  <li><a href="PGPATH/rejected-student.html"><i class="fas fa-times-circle"></i> Rejected Student Details</a></li>
  <li><a href="PGPATH/generate-certificate.html"><i class="fas fa-stamp"></i> Generate Certificate</a></li>
  <li><a href="PGPATH/new-certificate.html"><i class="fas fa-plus-square"></i> New Certificate</a></li>
</ul></li>
<li class="nav-item has-sub"><a href="#" onclick="toggleMenu('reports')"><i class="fas fa-chart-bar"></i> Reports <i class="fas fa-chevron-down arrow"></i></a>
<ul class="submenu" id="reports">
  <li><a href="PGPATH/business-glance.html"><i class="fas fa-eye"></i> Business Glance</a></li>
  <li><a href="PGPATH/database-backup.html"><i class="fas fa-database"></i> Database Backup</a></li>
  <li><a href="PGPATH/report-quick-enquiry.html"><i class="fas fa-bolt"></i> Quick Enquiry</a></li>
  <li><a href="PGPATH/report-enquiry.html"><i class="fas fa-question"></i> Enquiry</a></li>
  <li><a href="PGPATH/non-admission.html"><i class="fas fa-user-times"></i> Non Admission</a></li>
  <li><a href="PGPATH/enquiry-followup-report.html"><i class="fas fa-comments"></i> Enquiry Follow-Up</a></li>
  <li><a href="PGPATH/enquiry-source-report.html"><i class="fas fa-list-alt"></i> Enquiry Source</a></li>
  <li><a href="PGPATH/enquiry-course-report.html"><i class="fas fa-book-open"></i> Enquiry Course</a></li>
  <li><a href="PGPATH/admission-report.html"><i class="fas fa-user-check"></i> Admission Report</a></li>
  <li><a href="PGPATH/registration-course.html"><i class="fas fa-id-badge"></i> Registration Course</a></li>
  <li><a href="PGPATH/enq-vs-reg.html"><i class="fas fa-balance-scale"></i> Enq. Vs Reg.</a></li>
  <li><a href="PGPATH/fees-received.html"><i class="fas fa-hand-holding-usd"></i> Fees Received</a></li>
  <li><a href="PGPATH/fees-installment-report.html"><i class="fas fa-calendar-alt"></i> Fees Installment</a></li>
  <li><a href="PGPATH/fees-receivable.html"><i class="fas fa-hourglass-half"></i> Fees Receivable</a></li>
  <li><a href="PGPATH/receipt-number-report.html"><i class="fas fa-hashtag"></i> Receipt Number Report</a></li>
  <li><a href="PGPATH/fees-refund-report.html"><i class="fas fa-undo-alt"></i> Fees Refund</a></li>
  <li><a href="PGPATH/expense-report.html"><i class="fas fa-file-invoice-dollar"></i> Expense</a></li>
  <li><a href="PGPATH/duplicate-fee-receipt.html"><i class="fas fa-copy"></i> Duplicate Fee Receipt</a></li>
  <li><a href="PGPATH/student-feedback.html"><i class="fas fa-star"></i> Student Feedback</a></li>
</ul></li>
</ul></nav>`;

// ===== INJECT SIDEBAR =====
document.addEventListener('DOMContentLoaded', () => {
  const sidebar = document.getElementById('sidebar');
  if (!sidebar) return;

  const isRoot = !window.location.pathname.includes('/pages/');
  const logoPath = isRoot ? '' : '../';
  const rootPath = isRoot ? '' : '../';
  const pgPath   = isRoot ? 'pages' : '.';

  sidebar.innerHTML = sidebarHTML
    .replace(/LOGOPATH\//g, logoPath)
    .replace(/ROOTPATH\//g, rootPath)
    .replace(/PGPATH\//g, pgPath + '/');

  // Auto-open active submenu
  const current = window.location.pathname.split('/').pop();
  sidebar.querySelectorAll('.submenu li a').forEach(link => {
    const href = link.getAttribute('href') || '';
    if (href.includes(current) && current !== 'dashboard.html') {
      const sub = link.closest('.submenu');
      if (sub) sub.classList.add('open');
      link.style.color = '#d580ff';
      link.style.fontWeight = '700';
    }
  });

  // Dashboard active
  if (current === 'dashboard.html' || current === '') {
    const dash = sidebar.querySelector('a[href*="dashboard.html"]');
    if (dash) dash.parentElement.classList.add('active');
  }
});

// ===== SIDEBAR TOGGLE =====
function toggleSidebar() {
  const sidebar = document.getElementById('sidebar');
  const main = document.querySelector('.main-content');
  sidebar.classList.toggle('collapsed');
  if (main) main.classList.toggle('expanded');
}

// ===== SUBMENU TOGGLE =====
function toggleMenu(id) {
  const submenu = document.getElementById(id);
  const isOpen = submenu.classList.contains('open');
  document.querySelectorAll('.submenu').forEach(s => s.classList.remove('open'));
  if (!isOpen) submenu.classList.add('open');
}

// ===== PRINT PAGE =====
function printPage() { window.print(); }

// ===== CONFIRM DELETE =====
function confirmDelete(msg) {
  return confirm(msg || 'Are you sure you want to delete this record?');
}
