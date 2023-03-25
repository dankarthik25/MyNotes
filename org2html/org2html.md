
# Table of Contents

-   [Pandoc used cmd](#org91f3a13)
    -   [org2html using pandoc and org2docx or org2odt](#orgd352348)
    -   [VSCode Python Data Science Setup, Part 11: Markdown to (html, pdf ) extensions](#orgc12edb3)
-   [Pandoc cmd](#org5be0700)
-   [host web-site using [static html file] in google-drive  link](#org8479a2e)
-   [google search for github style markdown template](#org66e7c42)
-   [Django Markdown Tutorial - A Simple Blog Example | Django/Python](#org9e09339)
-   [Using pandoc to convert Markdown to HTML](#org8a98a14)
-   [Test codeblock for org2html](#org4a479a9)



<a id="org91f3a13"></a>

# Pandoc used cmd


<a id="orgd352348"></a>

## org2html using pandoc and org2docx or org2odt

    #
    # # # INPUT : md
    #
    # -c : convert input html with css
    # -f : input format , -t : output format ,
    
    
    pandoc -f markdown -t latex hello.txt 
    pandoc -c pandoc.css -s in.md -o out.html 
    
    #
    # # # INPUT : org
    #
    pandoc -c pandoc.css -f org -s markdown-2-other.org -o out.html   
    pandoc -c pandoc.css -f org -s markdown-2-other.org -t docx -o out.docx  
    pandoc -c pandoc.css -f org -s ReadMe-3-CrossAccount-AmazonEventBridge.org -o out.html  


<a id="orgc12edb3"></a>

## VSCode Python Data Science Setup, Part 11: Markdown to (html, pdf ) extensions

<https://www.youtube.com/watch?v=galkO3t_1Og>


<a id="org5be0700"></a>

# Pandoc cmd

Pandoc support below format as input(-f or &#x2013;from) and ouput(-o or &#x2013;output) 

    Specify input format. FORMAT can be:
        epub (EPUB)
        gfm (GitHub-Flavored Markdown), or the deprecated and less accurate markdown_github; use markdown_github only if you need extensions not supported in gfm.
        html (HTML)
        ipynb (Jupyter notebook)
        jats (JATS XML)
        jira (Jira/Confluence wiki markup)
        docx (Word docx)
        json (JSON version of native AST)
        latex (LaTeX)
        markdown (Pandoc’s Markdown)
        markdown_mmd (MultiMarkdown)
        markdown_phpextra (PHP Markdown Extra)
        markdown_strict (original unextended Markdown)
        odt (ODT)
        org (Emacs Org mode)
        rtf (Rich Text Format)
        rst (reStructuredText)

cmd

    # -f/--from      input format 
    # -t/--to        output format 
    # -o/--output    output to a file, use the -o option:
    # -s/--standalone
    # -c/--css       Link to a CSS style sheet
    # --template=FILE|URL
    pandoc -f html -t markdown https://www.fsf.org # 


<a id="org8479a2e"></a>

# host web-site using [static html file] in google-drive  [link](https://www.youtube.com/watch?v=m3TXRxqiGvw)

<https://www.youtube.com/wcatch?v=m3TXRxqiGvwxs>
<https://stackoverflow.com/questions/30576469/reading-markdown-from-a-file-hosted-in-google-docs>


<a id="org66e7c42"></a>

# google search for github style markdown template

<https://stackoverflow.com/questions/50513696/pandoc-convert-github-flavoured-markdown-containing-mixed-html-and-markdown-to>

<https://gist.github.com/killercup/5917178>

<https://gist.github.com/atelierbram/09c8fb742f1518f09ff9e4338ab8f7fb>

<https://gist.github.com/dashed/6714393>


<a id="org9e09339"></a>

# Django Markdown Tutorial - A Simple Blog Example | Django/Python

<https://www.youtube.com/watch?v=t61nTi0lIlk>


<a id="org8a98a14"></a>

# Using pandoc to convert Markdown to HTML

<https://www.youtube.com/watch?v=sZBmoiFTJVY>


<a id="org4a479a9"></a>

# Test codeblock for org2html

python code 

    tuple_1 = ('History', 'Math', 'Physics', 'CompSci')
    tuple_2 = tuple_1
    
    print(tuble_1)
    print(tuble_2)
    
    tuple_1[0] = 'Art'                    # Error because tubles are immutable

shell scripts

    cd test/file
    aws cloudformation deploy --template-file pipelinecf.yaml --stack-name pipeline-build --parameter-overrides Key1=Value1 Key2=Value2 --tags Key1=Value1 Key2=Value2

json file 

    {
        "Version": "2012-10-17",
        "Statement": [
    	{
    	    "Effect": "Allow",
    	    "Principal": {
    		"Service": "codepipeline.amazonaws.com"
    	    },
    	    "Action": "sts:AssumeRole"
    	}
        ]
    }

yml

    version: '3.1'  # if no version is specified then v1 is assumed. Recommend v2 minimum
    
    services:  # containers. same as docker run
      <servicename>: # a friendly name. this is also DNS name inside network
        image: # Optional if you use build:
        build:
    	context : . # current directory
    	dockerfile: #Name of Dockerfile
        command: # Optional, replace the default CMD specified by the image
        environment: # Optional, same as -e in docker run
        secrets:
        volumes: # Optional, same as -v in docker run
        depends_on: # need to run other servers before running this servier
    
      servicename2:
    
    volumes: # Optional, same as docker volume create
    networks: # Optional, same as docker network create
    secrets:

cpp

    #include<iostream>
    using namespace std;
    int main(){
        int i =5;
        cout<<i<< "Data type" <<i<<"Hello World !"<<endl;
        return 0;
    }

    int main()
    {
      // Normal Const 
    
      const int MAX_AGE =90;
      int const MAX_AGE =90;
    
    
      // Normal Pointer pointing a cont var 
    
      int* a = new int;     // create a normal pointer 
      *a  = 2;              // ASSINING VALUE 
      a = (int*) &MAX_AGE;  // poin A cosnt value 
      cout << a<<endl;
    
      // Pointer pointing to a constant value
      const int * a  = new int;
      int const * a  = new int;      //Both give same result as const is left side of  * 
      *a =2;                        //Error we can't  modify contant(value) of pointer
      a = (int*) &MAX_AGE;
      cout << a<<endl;
    
      // Pointer pointing to a constant address
    
      int * const a = new int;
      *a = 2;
      a = (int*) &MAX_AGE;   // Error : we created pointer to point constant address 
      cout << a << endl;
    
    
      // Pointer pointing to a constant address and constant value
      const int* const a  = new int;
      int const * const a = new int;
      *a = 2;                // Error : we created pointer pointing to value
      a = (int*) &MAX_AGE;   // Error : we created pointer to point constant address 
      cout << a << endl;
    
      std::cin.get();
    }

html

    <!DOCTYPE html>
    <html>
    <head>
    <title>Welcome to nginx!</title>
    <style>
    html { color-scheme: light dark; }
    body { width: 35em; margin: 0 auto;
    font-family: Tahoma, Verdana, Arial, sans-serif; }
    </style>
    </head>
    <body>
    <h1>Welcome to DeepAlgorithms!</h1>
    <p>If you see this page, the test ECS web server is successfully installed and
    working. Further configuration is required.</p>
    
    <p>For online documentation and support please refer to
    <a href="http://nginx.org/">nginx.org</a>.<br/>
    Commercial support is available at
    <a href="http://nginx.com/">nginx.com</a>.</p>
    
    <p><em>Thank you for using nginx.</em></p>
    </body>
    </html>

css

    /*
     * I add this to html files generated with pandoc.
     * source link : https://gist.github.com/killercup/5917178
     * From the command line you now need to use --css=pandoc.css or -c pandoc.css not --css pandoc.css
     * pandoc -c pandoc.css -s in.md -o out.html  
     */
    
    html {
      font-size: 100%;
      overflow-y: scroll;
      -webkit-text-size-adjust: 100%;
      -ms-text-size-adjust: 100%;
    }
    
    body {
      color: #444;
      font-family: Georgia, Palatino, 'Palatino Linotype', Times, 'Times New Roman', serif;
      font-size: 12px;
      line-height: 1.7;
      padding: 1em;
      margin: auto;
      max-width: 42em;
      background: #fefefe;
    }
    
    a {
      color: #0645ad;
      text-decoration: none;
    }
    
    a:visited {
      color: #0b0080;
    }
    
    a:hover {
      color: #06e;
    }
    
    a:active {
      color: #faa700;
    }
    
    a:focus {
      outline: thin dotted;
    }
    
    *::-moz-selection {
      background: rgba(255, 255, 0, 0.3);
      color: #000;
    }
    
    *::selection {
      background: rgba(255, 255, 0, 0.3);
      color: #000;
    }
    
    a::-moz-selection {
      background: rgba(255, 255, 0, 0.3);
      color: #0645ad;
    }
    
    a::selection {
      background: rgba(255, 255, 0, 0.3);
      color: #0645ad;
    }
    
    p {
      margin: 1em 0;
    }
    
    img {
      max-width: 100%;
    }
    
    h1, h2, h3, h4, h5, h6 {
      color: #111;
      line-height: 125%;
      margin-top: 2em;
      font-weight: normal;
    }
    
    h4, h5, h6 {
      font-weight: bold;
    }
    
    h1 {
      font-size: 2.5em;
    }
    
    h2 {
      font-size: 2em;
    }
    
    h3 {
      font-size: 1.5em;
    }
    
    h4 {
      font-size: 1.2em;
    }
    
    h5 {
      font-size: 1em;
    }
    
    h6 {
      font-size: 0.9em;
    }
    
    blockquote {
      color: #666666;
      margin: 0;
      padding-left: 3em;
      border-left: 0.5em #EEE solid;
    }
    
    hr {
      display: block;
      height: 2px;
      border: 0;
      border-top: 1px solid #aaa;
      border-bottom: 1px solid #eee;
      margin: 1em 0;
      padding: 0;
    }
    
    pre, code, kbd, samp {
      color: #000;
      font-family: monospace, monospace;
      _font-family: 'courier new', monospace;
      font-size: 0.98em;
    }
    
    pre {
      white-space: pre;
      white-space: pre-wrap;
      word-wrap: break-word;
    }
    
    b, strong {
      font-weight: bold;
    }
    
    dfn {
      font-style: italic;
    }
    
    ins {
      background: #ff9;
      color: #000;
      text-decoration: none;
    }
    
    mark {
      background: #ff0;
      color: #000;
      font-style: italic;
      font-weight: bold;
    }
    
    sub, sup {
      font-size: 75%;
      line-height: 0;
      position: relative;
      vertical-align: baseline;
    }
    
    sup {
      top: -0.5em;
    }
    
    sub {
      bottom: -0.25em;
    }
    
    ul, ol {
      margin: 1em 0;
      padding: 0 0 0 2em;
    }
    
    li p:last-child {
      margin-bottom: 0;
    }
    
    ul ul, ol ol {
      margin: .3em 0;
    }
    
    dl {
      margin-bottom: 1em;
    }
    
    dt {
      font-weight: bold;
      margin-bottom: .8em;
    }
    
    dd {
      margin: 0 0 .8em 2em;
    }
    
    dd:last-child {
      margin-bottom: 0;
    }
    
    img {
      border: 0;
      -ms-interpolation-mode: bicubic;
      vertical-align: middle;
    }
    
    figure {
      display: block;
      text-align: center;
      margin: 1em 0;
    }
    
    figure img {
      border: none;
      margin: 0 auto;
    }
    
    figcaption {
      font-size: 0.8em;
      font-style: italic;
      margin: 0 0 .8em;
    }
    
    table {
      margin-bottom: 2em;
      border-bottom: 1px solid #ddd;
      border-right: 1px solid #ddd;
      border-spacing: 0;
      border-collapse: collapse;
    }
    
    table th {
      padding: .2em 1em;
      background-color: #eee;
      border-top: 1px solid #ddd;
      border-left: 1px solid #ddd;
    }
    
    table td {
      padding: .2em 1em;
      border-top: 1px solid #ddd;
      border-left: 1px solid #ddd;
      vertical-align: top;
    }
    
    .author {
      font-size: 1.2em;
      text-align: center;
    }
    
    @media only screen and (min-width: 480px) {
      body {
        font-size: 14px;
      }
    }
    @media only screen and (min-width: 768px) {
      body {
        font-size: 16px;
      }
    }
    @media print {
      * {
        background: transparent !important;
        color: black !important;
        filter: none !important;
        -ms-filter: none !important;
      }
    
      body {
        font-size: 12pt;
        max-width: 100%;
      }
    
      a, a:visited {
        text-decoration: underline;
      }
    
      hr {
        height: 1px;
        border: 0;
        border-bottom: 1px solid black;
      }
    
      a[href]:after {
        content: " (" attr(href) ")";
      }
    
      abbr[title]:after {
        content: " (" attr(title) ")";
      }
    
      .ir a:after, a[href^="javascript:"]:after, a[href^="#"]:after {
        content: "";
      }
    
      pre, blockquote {
        border: 1px solid #999;
        padding-right: 1em;
        page-break-inside: avoid;
      }
    
      tr, img {
        page-break-inside: avoid;
      }
    
      img {
        max-width: 100% !important;
      }
    
      @page :left {
        margin: 15mm 20mm 15mm 10mm;
    }
    
      @page :right {
        margin: 15mm 10mm 15mm 20mm;
    }
    
      p, h2, h3 {
        orphans: 3;
        widows: 3;
      }
    
      h2, h3 {
        page-break-after: avoid;
      }
    }

> test quote
> quote2
> quote3

    test example
    test2
    test3

<p class="verse">
sdfadsfasfd<br />
</p>

Test **sfafd** *asfda* <span class="underline">asdf</span> `safdfaff` <del>asdfs</del>  

css has code text
in simple<sub>inline</sub>

    pre, code  {
          font-family:  "Source Pro",  Monaco,  "Courier New",  monospace;
          padding-left:  0.3em;
          padding-right:  0.3em;
    }
    .outline-text-2 code,  pre  {
          background-color:  #EEE;
    }
    *, *:before, *:after  {
          -moz-box-sizing:  border-box;
          -webkit-box-sizing:  border-box;
          box-sizing:  border-box;
    }

gray css  code block 

    p > code, li > code {
        background-color: #eee;
        padding: 0.25em;
    }
    code {
        font-family: "Inconsolata", "monospace";
        font-size: 16px;
    }
    body {
        font-family: Helvetica, Arial, sans-serif;
        font-size: 16px;
        line-height: 1.4;
        color: #33333f;
    }

quote color

    blockquote {
        background-color: #C5ECAB;
        border-left: 5px solid #6FEF05;
        font-style: italic;
        line-height: 24px;
        margin: 0px 0px 24px 0px;
        margin-left: 24px;
        padding: 6px 20px;
    }
    *{
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
    }
    body {
        color: #404040;
        font-family: "Lato","proxima-nova","Helvetica Neue",Arial,sans-serif;
        font-weight: normal;
    }

    blockquote {
        background-color: #ddffdd;
        border-left: 5px solid #4caf50;
        background-color: #ffeb3b;
        border-left: 5px solid #ffc107;
        background-color: #ffffcc;
        border-left: 5px solid #ffeb3b;
        background-color: #ffdddd;
        border-left: 5px solid #f44336;
        font-style: italic;
        line-height: 24px;
        margin: 0px 0px 24px 0px;
        margin-left: 24px;
        padding: 6px 20px;
    }
    *{
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
    }
    body {
        color: #404040;
        font-family: "Lato","proxima-nova","Helvetica Neue",Arial,sans-serif;
        font-weight: normal;
    }

