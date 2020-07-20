import React from "react";
import { render } from "react-dom";
import AceEditor from "react-ace";

import "ace-builds/src-noconflict/mode-markdown";
import "ace-builds/src-noconflict/theme-github";

import $ from 'jquery';

const onChange = (value) => {
  $('#wiki_text').attr('value', value);
}

render(
  <AceEditor
    mode="markdown"
    theme="github"
    name="UNIQUE_ID_OF_DIV"
    editorProps={{ $blockScrolling: true }}
    placeholder={"# Enter your Wiki in Markdown here\nLike this..."}
    width="1100px"
    height="700px"
    fontSize="17"
    wrapEnabled={true}
    highlightActiveLine={true}
    setOptions={{
      "fontFamily": "monospace"
    }}
    onChange={onChange}
    value={$('#wiki_text').attr('value')}
  />,
  document.getElementById("editor")
);