/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./index.html", "./src/**/*.{vue,js,ts,jsx,tsx}"],
  theme: {
    extend: {
      colors: {
        "main-background": "#F8F8F8",
        "search-color": "#006666",
        "card-color": "#EBECE9",
        "rating-color": "#ff9529",
        "rat-col": "#D54215",
        "fav-col": "#2b4700",
      },
      spacing: {
        "app-nav": "82px",
        "logo-top": "19px",
        "logo-left": "151px",
        "search-size": "20px",
        "gap-size": "722px",
        "center-footer": "250px",
        "image-width": "600px",
        "image-height": "450px",
        "desc-height": "300px",
        "card-height": "193px",
        "card-width": "98px",
      },
      screens: {
        sm: "576px",
      },
    },
  },
  plugins: [],
};
