module.exports = {
  plugins: [require("daisyui")],
  content: [
    "./src/components/**/*.res",
    "./src/layouts/**/*.res",
    "./src/*.res",
  ],
  daisyui: {
    styled: true,
    themes: ["night"],
    base: true,
    utils: true,
    logs: true,
    rtl: false,
    prefix: "",
  },
  purge: {
    content: [
      "./src/components/**/*.res",
      "./src/layouts/**/*.res",
      "./src/*.res",
    ],
  },
};
