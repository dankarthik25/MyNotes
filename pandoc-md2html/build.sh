#!/bin/sh

#input_path='/home/jayradhey/workspace_deepalgo/calci-app/ReadMe-3-CrossAccount-AmazonEventBridge.org'
input_path='/home/jayradhey/mynotes/org2html/'
######################################## 
#   Pandoc theme 
######################################## 

#css_path='/home/jayradhey/mynotes/org2html/org-theme-collection/pandoc.css'
#css_path='/home/jayradhey/mynotes/org2html/org-theme-collection/simple_unmin.css'



########################################
#   Testing org theme for pandoc md2html
########################################

#css_path='/home/jayradhey/mynotes/org2html/org-theme-collection/comfy_inline.css'
#css_path='/home/jayradhey/mynotes/org2html/org-theme-collection/imagine_light.css' 
#css_path='/home/jayradhey/mynotes/org2html/org-theme-collection/org-style.css'
#css_path='/home/jayradhey/mynotes/org2html/org-theme-collection/readtheorg.css'
#css_path='/home/jayradhey/mynotes/org2html/org-theme-collection/simple_inline.css'
#css_path='/home/jayradhey/mynotes/org2html/org-theme-collection/simple_whiteblue.css'
#css_path='/home/jayradhey/mynotes/org2html/org-theme-collection/gray.css'
#css_path='/home/jayradhey/mynotes/org2html/org-theme-collection/latexcss.css'
#css_path='/home/jayradhey/mynotes/org2html/org-theme-collection/readtheorg-htmlize.css'
#css_path='/home/jayradhey/mynotes/org2html/org-theme-collection/theme-readtheorg.setup'





#pandoc -c simple_unmin.css -f org -s  '${input_path}' -t html -o CrossAccount.html  
echo  pandoc -c "${css_path}" -f org -s  md2html.org -t html -o CrossAccount.html  
pandoc -c "$css_path" -f org -s  md2html.org -t html -o CrossAccount.html


