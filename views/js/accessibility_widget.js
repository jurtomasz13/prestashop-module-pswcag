const widget = document.getElementById('#pswcag-accessibility-widget');
widget.addEventListener('click', function (e) {
  // Prevent the redirect to the settings page if scripts are enabled and widget is clicked
  e.preventDefault();
  console.log('Accessibility widget clicked - prevented refresh');
});

// If the user has JavaScript enabled but earlier had noscript_user cookie set, remove the cookie
document.addEventListener('DOMContentLoaded', function () {
  if (document.cookie.split('; ').find(row => row.startsWith('noscript_user='))) {
    document.cookie = 'noscript_user=; path=/; expires=Thu, 01 Jan 1970 00:00:00 GMT';
    console.log('noscript_user cookie removed on DOMContentLoaded');
  }
});
