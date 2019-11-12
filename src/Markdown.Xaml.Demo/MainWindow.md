|:-|
# Markdown.Xaml #

Markdown XAML is a port of the popular *MarkdownSharp* Markdown processor, but 
with one very significant difference: Instead of rendering to a string 
containing HTML, it renders to a FlowDocument suitable for embedding into a 
WPF window or usercontrol.

## Features ##

MarkDown.Xaml has a number of convenient features

* |:-|The engine itself is a single file, for easy inclusion in your own projects
* Code for the engine is structured in the same manner as the original MarkdownSharp  
If there are any bug fixes to the regular expressions in MarkdownSharp, merging those fixes in the Markdown.Xaml should be straightforward
* Includes a `TextToFlowDocumentConverter` to make it easy to bind Markdown text

# 
## Markdown capabilities and customizables styles: ##

###### 
#|:-:|***_BLOCK MARKDOWN_***
 ===



###***_Text Alignment_***
You can define the text alignment for the document (at the beginning) or a single paragraph (before text).

+ use |:-| or |-| or nothing° for left alignment
+ use |-:| for right alignment
+ use |:-:| for center alignment
+ use |=| for justify alignment

° "nothing" means left alignment only for the document; instead for the paragraphs "nothing" means the same alignment of the text defined for the document.



###***_Headings_***
"Text" accepts any _span markdown_.
Heading 1
=
Heading 2
-
Heading 2
-----------
# Heading 1
## Heading 2
### Heading 3
#### Heading 4
##### Heading 5
###### Heading 6
###### Heading 6 #######
######Heading 6



###***_Separators_***
 ---
 ===
 ***
 ___



###***_Lists_***
"Text" accepts any _span markdown_.

* First
 * Level 2
  + Level 3
   - Level 4
    = Level 5
     1. Level 6 First
     2. Level 6 Second
* Second
 a. Level 2 First
 b. Level 2 Second
* Third
 A. Level 2 First
 B. Level 2 Second
* Fourth
 i, Level 2 First
 ii, Level 2 Second
* Fifth
 I, Level 2 First
 II, Level 2 Second



###***_Tables_***
"Text" accepts any _span markdown_.
|A|b|C|d|E|f|
|:-:|:-|-:|-|
|one|two|three|
|one|two|three|for|five|
|one|two|three|for|five|six|
|one|two|three|for|five|six|

|A|b|C|d|E|f|
=|:-:|:-|-:|-|
|one|two|three|
|one|two|three|for|five|
|one|two|three|for|five|six|
|one|two|three|for|five|six|



###***_Code Block_***
"Text" accepts any _span markdown_.
Text above
«text code block text code block text code block text code block text code block text code block text code block text code block text code block.»
Text below



###***_Note_***
"Text" accepts any _span markdown_.
Text above
<text note text note text note text note text note text note text note text note text note text note text note text note text note text note.
Text below
< text note >



###***_BlockQuotes_***
"Text" accepts any _span markdown_.
>Quote 1
>>Quote 2a
>>Quote 2b
>>> Quote 3
>>>>Quote 4 quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote quote
>>>>>>>>> Up to 9




###### 
 ___
# 
#|:-:|***_SPAN MARKDOWN_***
 ===



###***_Text Decorations_***
+ *Italic*
+ **Bold**
+ ***BoldItalic***
+ _Underline_
+ __Strikethrough__
+ ___StrikethroughUnderline___
+ All combinations from *_TEXT_* to ***___TEXT___***



###***_Color_***
You can color text using color/[deepPink](color brush name), color/[#08F](hex) or color/[#88000000](hex with alpha).
"Text" inside () accepts any _span markdown_.



###***_Code Span_***
You can `highlight` the text.



###***_Links_***
This is a [link](https://www.google.com).

This is a [link with tooltip](https://www.google.com "Google").



###***_Images_***
_Remote images_: 

![image1](http://placehold.it/350x150)

![#1](http://placehold.it/100x150/0000FF) ![#2](http://placehold.it/100x150/00FFFF)![#3](http://placehold.it/100x150/0000FF)![#4](http://placehold.it/100x150/00FFFF "right")

The image **#4** has the "right" tag which is used to set a different style for the image; in this case the style has Margin="20,0,0,0".

_Local image_: 

![image2](sampleimage.jpg)

_Fail to load image_: 

![FailTest1]()

![FailTest2](ttp://placehold.it/100x150/0000FF)
