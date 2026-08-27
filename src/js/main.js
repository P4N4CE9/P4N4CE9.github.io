document.addEventListener('DOMContentLoaded', function() {
  const menuToggle = document.getElementById('menuToggle');
  const navLinks = document.querySelectorAll('.nav-menu a');
  const burger = document.querySelector('.burger');

  if (!menuToggle) return;

  // Закрытие по клику на пункт меню
  navLinks.forEach(function(link) {
    link.addEventListener('click', function() {
      if (window.innerWidth <= 820) {
        menuToggle.checked = false;
      }
    });
  });

  // Закрытие по клику на затемнение
  document.addEventListener('click', function(e) {
    if (window.innerWidth <= 820 && menuToggle.checked) {
      const nav = document.querySelector('.app .nav-menu');
      if (!nav) return;
      const isNav = nav.contains(e.target);
      const isBurger = burger ? burger.contains(e.target) : false;
      const isToggle = e.target === menuToggle;
      const isLabel = e.target.closest('label') === burger;
      
      if (!isNav && !isBurger && !isToggle && !isLabel) {
        menuToggle.checked = false;
      }
    }
  });
});