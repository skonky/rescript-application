module.exports = {
  plugins: [require("daisyui")],
  content: [
    "./src/components/**/*.res",
    "./src/layouts/**/*.res",
    "./src/*.res",
  ],
  purge: {
    content: [
      "./src/components/**/*.res",
      "./src/layouts/**/*.res",
      "./src/*.res",
    ],
  },
};
