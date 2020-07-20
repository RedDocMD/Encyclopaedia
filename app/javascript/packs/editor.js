import React from "react";
import { render } from "react-dom";
import AceEditor from "react-ace";

import "ace-builds/src-noconflict/mode-markdown";
import "ace-builds/src-noconflict/theme-github";

render(
  <AceEditor
    mode="markdown"
    theme="github"
    name="UNIQUE_ID_OF_DIV"
    editorProps={{ $blockScrolling: true }}
    placeholder="# Enter your Wiki in Markdown here
                  Like this..."
    width="1100px"
    height="700px"
    fontSize="17"
    wrapEnabled={true}
    highlightActiveLine={true}
    setOptions={{
      "fontFamily": "monospace"
    }}
  />,
  document.getElementById("editor")
);
