@echo off
echo Исправление файлов проекта...

:: Исправляем _variables.scss
(
echo // Colors
echo $color-bg: #f5f7fb;
echo $color-text: #1a1e2b;
echo $color-text-secondary: #334155;
echo $color-white: #ffffff;
echo $color-border: rgba(0, 0, 0, 0.03);
echo $color-shadow: rgba(0, 0, 0, 0.04);
echo.
echo // Fonts
echo $font-family: 'Inter', system-ui, -apple-system, sans-serif;
echo.
echo // Breakpoints
echo $breakpoint-tablet: 640px;
echo $breakpoint-desktop: 1024px;
echo $breakpoint-mobile-menu: 820px;
echo.
echo // Spacing
echo $gap: 20px;
echo $header-height: 68px;
echo $container-max: 1360px;
echo.
echo // Card
echo $card-min-width: 115px;
echo $card-max-width: 150px;
) > src\scss\_variables.scss

:: Исправляем style.scss
(
echo @use 'reset';
echo @use 'header';
echo @use 'cards';
echo @use 'footer';
) > src\scss\style.scss

echo ✅ Файлы исправлены!
echo 🔄 Перезапустите сервер: npm run dev
pause