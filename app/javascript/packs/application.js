// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

require('bootstrap');

import React from "react";
import { render } from "react-dom";
import AceEditor from "react-ace";
 
import "ace-builds/src-noconflict/mode-markdown";
import "ace-builds/src-noconflict/theme-monokai";
 
// Render editor
window.onload = (_) => {
  render(
    <AceEditor
      mode="markdown"
      theme="monokai"
      name="UNIQUE_ID_OF_DIV"
      editorProps={{ $blockScrolling: true }}
    />,
    document.getElementById("editor")
  );
}

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
