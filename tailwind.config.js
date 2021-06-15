module.exports = {
  purge: [],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      backgroundImage: (theme) => ({
        'tokyo-image': "url('../images/ryo.jpg')",
        'dog-image':  "url('../images/dog.png')",
      }),
      width: {
        '97': '24.5rem',
        '97.5': '24.75rem',
        '97.75': '24.875rem',
        '98': '25rem',
        '100': '26rem',
        '108': '28rem',
        '116': '30rem',
        '120': '31rem',
        '130': '33.5rem',
        '140': '36rem',
      },
      height: {
        '98': '25rem',
        '100': '26rem',
        '108': '28rem',
        '116': '30rem',
        '120': '31rem',
        '130': '33.5rem',
        'laptop-full': '46.2rem',
      },
      margin: {
        '15': '3.5rem',
        '15.5': '3.75rem',
        '18': '4.5rem',
        '18.5': '4.75rem',
        '19': '5rem',
        '97': '24.5rem',
        '97.5': '24.75rem',
        '97.75': '24.875rem',
        '98': '25rem',
        '100': '26rem',
        '108': '28rem',
        '116': '30rem',
        '120': '31rem',
        '130': '33.5rem',
        '140': '36rem',
        '150': '38.5rem',
        '160': '41rem',
        '170': '43.5rem',
        '180': '46rem',
        '190': '48.5rem',
        '200': '51rem',

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
