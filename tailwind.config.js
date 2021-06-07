module.exports = {
  purge: [],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      width: {
        '97': '24.5rem',
        '97.5': '24.75rem',
        '97.75': '24.875rem',
        '98': '25rem',
        '100': '26rem',
        '108': '28rem',
        '116': '30rem',
      },
      height: {
        'laptop-full': '46.2rem',
      },
      margin: {
        '15': '3.5rem',
        '15.5': '3.75rem',
        '18': '4.5rem',
        '18.5': '4.75rem',
        '19': '5rem',
      },
      colors: {
        'original-blue': '#5874FF',
      },
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
}
