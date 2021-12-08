module.exports = {
  purge: ["./*.html", "./src/**/*.js"],
  darkMode: 'media', // or 'media' or 'class'
  theme: {
    screens: {
      sm: {'min': '0px', 'max': '767px'},
      md: "768px",
      lg: {'min': '1024px'},
    },
  },
  variants: {
    extend: {},
  },
  plugins: [
    require('tailwindcss-debug-screens')
  ],
};
