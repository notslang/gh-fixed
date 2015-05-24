var data = require("sdk/self").data;
var pageMod = require("sdk/page-mod");

pageMod.PageMod({
  include: "*.github.com",
  contentScriptFile: './index.js',
  contentStyleFile: './index.css'
});
