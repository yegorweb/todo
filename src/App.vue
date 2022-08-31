<!-- Мой первый Vue проект. Не судите строго ) -->

<template>
    <Header />
	<router-view />
</template>

<script setup>
import Header from '@/components/Header.vue'
</script>

<!-- Global styles -->
<style>
html, body {
  margin: 0;
  padding: 0;
}

/* FONT */
@font-face {
    font-family: 'Montserrat';
    src: url('@/assets/fonts/Montserrat-Bold.woff2') format('woff2'),
        url('@/assets/fonts/Montserrat-Bold.woff') format('woff'),
        url('@/assets/fonts/Montserrat-Bold.ttf') format('truetype');
    font-weight: bold;
    font-style: normal;
    font-display: swap;
}

@font-face {
    font-family: 'Montserrat';
    src: url('@/assets/fonts/Montserrat-Black.woff2') format('woff2'),
        url('@/assets/fonts/Montserrat-Black.woff') format('woff'),
        url('@/assets/fonts/Montserrat-Black.ttf') format('truetype');
    font-weight: 900;
    font-style: normal;
    font-display: swap;
}

@font-face {
    font-family: 'Montserrat';
    src: url('@/assets/fonts/Montserrat-ExtraBold.woff2') format('woff2'),
        url('@/assets/fonts/Montserrat-ExtraBold.woff') format('woff'),
        url('@/assets/fonts/Montserrat-ExtraBold.ttf') format('truetype');
    font-weight: bold;
    font-style: normal;
    font-display: swap;
}

@font-face {
    font-family: 'Montserrat';
    src: url('@/assets/fonts/Montserrat-BlackItalic.woff2') format('woff2'),
        url('@/assets/fonts/Montserrat-BlackItalic.woff') format('woff'),
        url('@/assets/fonts/Montserrat-BlackItalic.ttf') format('truetype');
    font-weight: 900;
    font-style: italic;
    font-display: swap;
}

@font-face {
    font-family: 'Montserrat';
    src: url('@/assets/fonts/Montserrat-BoldItalic.woff2') format('woff2'),
        url('@/assets/fonts/Montserrat-BoldItalic.woff') format('woff'),
        url('@/assets/fonts/Montserrat-BoldItalic.ttf') format('truetype');
    font-weight: bold;
    font-style: italic;
    font-display: swap;
}

@font-face {
    font-family: 'Montserrat';
    src: url('@/assets/fonts/Montserrat-Italic.woff2') format('woff2'),
        url('@/assets/fonts/Montserrat-Italic.woff') format('woff'),
        url('@/assets/fonts/Montserrat-Italic.ttf') format('truetype');
    font-weight: normal;
    font-style: italic;
    font-display: swap;
}

@font-face {
    font-family: 'Montserrat';
    src: url('@/assets/fonts/Montserrat-ExtraLightItalic.woff2') format('woff2'),
        url('@/assets/fonts/Montserrat-ExtraLightItalic.woff') format('woff'),
        url('@/assets/fonts/Montserrat-ExtraLightItalic.ttf') format('truetype');
    font-weight: 200;
    font-style: italic;
    font-display: swap;
}

@font-face {
    font-family: 'Montserrat';
    src: url('@/assets/fonts/Montserrat-ExtraBoldItalic.woff2') format('woff2'),
        url('@/assets/fonts/Montserrat-ExtraBoldItalic.woff') format('woff'),
        url('@/assets/fonts/Montserrat-ExtraBoldItalic.ttf') format('truetype');
    font-weight: bold;
    font-style: italic;
    font-display: swap;
}

@font-face {
    font-family: 'Montserrat';
    src: url('@/assets/fonts/Montserrat-ExtraLight.woff2') format('woff2'),
        url('@/assets/fonts/Montserrat-ExtraLight.woff') format('woff'),
        url('@/assets/fonts/Montserrat-ExtraLight.ttf') format('truetype');
    font-weight: 200;
    font-style: normal;
    font-display: swap;
}

@font-face {
    font-family: 'Montserrat';
    src: url('@/assets/fonts/Montserrat-Light.woff2') format('woff2'),
        url('@/assets/fonts/Montserrat-Light.woff') format('woff'),
        url('@/assets/fonts/Montserrat-Light.ttf') format('truetype');
    font-weight: 300;
    font-style: normal;
    font-display: swap;
}

@font-face {
    font-family: 'Montserrat';
    src: url('@/assets/fonts/Montserrat-LightItalic.woff2') format('woff2'),
        url('@/assets/fonts/Montserrat-LightItalic.woff') format('woff'),
        url('@/assets/fonts/Montserrat-LightItalic.ttf') format('truetype');
    font-weight: 300;
    font-style: italic;
    font-display: swap;
}

@font-face {
    font-family: 'Montserrat';
    src: url('@/assets/fonts/Montserrat-SemiBold.woff2') format('woff2'),
        url('@/assets/fonts/Montserrat-SemiBold.woff') format('woff'),
        url('@/assets/fonts/Montserrat-SemiBold.ttf') format('truetype');
    font-weight: 600;
    font-style: normal;
    font-display: swap;
}

@font-face {
    font-family: 'Montserrat';
    src: url('@/assets/fonts/Montserrat-Medium.woff2') format('woff2'),
        url('@/assets/fonts/Montserrat-Medium.woff') format('woff'),
        url('@/assets/fonts/Montserrat-Medium.ttf') format('truetype');
    font-weight: 500;
    font-style: normal;
    font-display: swap;
}

@font-face {
    font-family: 'Montserrat';
    src: url('@/assets/fonts/Montserrat-MediumItalic.woff2') format('woff2'),
        url('@/assets/fonts/Montserrat-MediumItalic.woff') format('woff'),
        url('@/assets/fonts/Montserrat-MediumItalic.ttf') format('truetype');
    font-weight: 500;
    font-style: italic;
    font-display: swap;
}

@font-face {
    font-family: 'Montserrat';
    src: url('@/assets/fonts/Montserrat-Regular.woff2') format('woff2'),
        url('@/assets/fonts/Montserrat-Regular.woff') format('woff'),
        url('@/assets/fonts/Montserrat-Regular.ttf') format('truetype');
    font-weight: normal;
    font-style: normal;
    font-display: swap;
}

@font-face {
    font-family: 'Montserrat';
    src: url('@/assets/fonts/Montserrat-SemiBoldItalic.woff2') format('woff2'),
        url('@/assets/fonts/Montserrat-SemiBoldItalic.woff') format('woff'),
        url('@/assets/fonts/Montserrat-SemiBoldItalic.ttf') format('truetype');
    font-weight: 600;
    font-style: italic;
    font-display: swap;
}

@font-face {
    font-family: 'Montserrat';
    src: url('@/assets/fonts/Montserrat-ThinItalic.woff2') format('woff2'),
        url('@/assets/fonts/Montserrat-ThinItalic.woff') format('woff'),
        url('@/assets/fonts/Montserrat-ThinItalic.ttf') format('truetype');
    font-weight: 100;
    font-style: italic;
    font-display: swap;
}

@font-face {
    font-family: 'Montserrat';
    src: url('@/assets/fonts/Montserrat-Thin.woff2') format('woff2'),
        url('@/assets/fonts/Montserrat-Thin.woff') format('woff'),
        url('@/assets/fonts/Montserrat-Thin.ttf') format('truetype');
    font-weight: 100;
    font-style: normal;
    font-display: swap;
}


</style>