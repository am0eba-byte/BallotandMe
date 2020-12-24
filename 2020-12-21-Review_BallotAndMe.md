## The Ballot and Me Project Review


* Site publication: <https://am0eba-byte.github.io/BallotandMe/>
* GitHub: <https://github.com/am0eba-byte/BallotandMe/>
* Developers: Mia Borgia, Brett Meyer, McKenna Ballew 
* Date of Evaluation: 2020-12-23
* Evaluated by: @ebeshero

### General  
You embarked on a challenge to **remediate** a poorly photographed typewritten play into a digital edition that people can read and search. You've made the web a better place because you have made Langston Hughes' play easier for people to find, and read, and learn from. Congratulations on a marvelously successful project! There are aspects of this project that are a little rough, as is to be expected for something developed in about a month. But it is clear you three took care to be responsible curators and editors of this digital edition, and I'm really proud of what you have built together! In my comments here I will provide you advice and suggestions with the hope that you may want to see this as a serious scholarly work that faces the public, and that is read and appreciated not just be your peers and professors at Penn State Behrend, but by people who find their way to Langston Hughes over the web, people who care about the social issues of voting and equality, and African American lives. Those could be students, teachers, poets, or producers of plays looking for something to perform in the next season. 

In other words, I want to help you prepare this work to turn and face the public. You don't have to do any of this, but I hope you will want to because this is a project to care about beyond just an assignment you did for a class and a good grade. I hope that you will present on this work at our campus DIGIT Fest this spring, and when the pandemic days are over, that you will take this project to share at a conference, and that it is something you will link to on your resumes, and use as a sample of digital work you helped to create. So let’s make this project shine!  

### Digital Document Curation and Research Questions
You set out to code this play to organize information from the typewritten pages into a meaningful digital format that holds related information together: so your code in a way improves on the original in *remediating* it. You also collected and organized information to help highlight which members of  the cast list have speaking parts and which are mentioned only. Your table of references provides a wonderful remixing of the play, and we could build on that by sorting the information (ranking the speakers from most talkative to least talkative for example). Your conclusions page reflects on your findings, suggesting that the most vocal characters had the most vocal parts in history as well.

My first recommendation would be to foreground those findings on the home page (your index.html), and rewriting it a little to help *introduce* the play and what we'll be learning about history. You should begin thinking of this site now as a way to introduce people to Langston Hughes first of all, rather than primarily as an assignment to demonstrate your abilities to code. You *do* demonstrate that, of course, and your peers in DIGIT and other coders will also learn from the code you have to share, but don't think of them as your *primary* audience now. You could make the page that currently holds your conclusion just be a page "for coders" where you discuss your schema and coding methods and decisions you made along the way.

### Revising the index.html page

On the first page of your site, readers who come here for Langston Hughes won't know what you're talking about when you say “Here we will showcase our work on transcribing the play into HTML and XSLT.” (Anyway, you didn't literally transcribe anything into XSLT or HTML, since transcription was what you did when you captured the typescript play in XML first of all. You then processed the code with XSLT to produce HTML for the web—but that is stuff to put on that back page for the coders to read!) Remember, put Langston Hughes readers first and talk to them on the main page about what you've learned from the process of building this project, and guide them to the source document and your edition and your analysis pages.

That first page of your site might also introduce a legend for the color coding and CSS styling you provided in the "Full Play in HTML" reading view. Explain what you've done with the styling so people will understand what they're seeing when they visit that reading view.

One last thing: You have a wonderful picture on the Conclusion page that probably you could move to the index.html page. But its caption is incorrect! This is certainly not a photo from the 1800's. See if you can do a reverse image lookup (here, for example https://tineye.com/ ) to look up details about this photo and find out the occasion on which it was really taken. (Was this taken close in time to when Langston Hughes was writing his play?) Also make sure the caption is properly aligned to the bottom left of the image. 

### Revising the site menu

If you take up this revision, you may want to make some changes to the site menu: 

* For the source document, don’t call it "Original Play PDF". (First of all the “original play” is a typewritten document that you didn't actually get to work with.) You could rename this menu item simply “Author’s Typescript (PDF)” or “Typescript Photo Facsimile”. 

* If you foreground your "conclusions" on the index page, you could maybe rename that last page "Coding Methods".

* Don't use ampersands (&) in headings. It's not because they have to be escaped, but really that they detract from the formality of your otherwise professional project.

### Revising the reading view of the play

My comments here are mainly about styling. As we scroll through the play on a computer monitor there's a lot of space between the speaker's name on the left and the speaking part. Is there a way to keep those things together? (This actually reads better on a narrow mobile phone view, since the speaker's names come in immediately on top of their speeches.

On the reading view of the cast list: As we mouse over a character we see the text color change, but sometimes that makes the word unreadable when it changes to a light color on a light background. Here's a styling rule to support strong “UXD“ (User Experience Design): don't change the text color without changing the background color to match. 

For some reason, it is the mark of a student web projects everywhere to center *all* the text. Professional projects don't do that, and there's good reason for it. It's distracting for readers to have an inconsistent left margin because we read from left to right, and it's easier for the eye to track consistently down the page when it is what we call "left-justified." Here's a good article on the subject: <https://guppyfishweb.com/web-design/text-alignment-center/> . 

There *are* times when you want to center text, but read that article about when you want to do it. Apply centering with discretion! 

### Revising the Analysis page

This page is a delight! Your idea to collect images of each character really helps make the history of this play come alive for readers, and your CSS trick to flip the images is very, very cool. We want to make it cooler yet. So here are some CSS styling suggestions:

* Try removing the right-alignment in the table so the character names are not pushed far away from the images, and so they line up nicely under the table headings.

* Try to make the image flip across the *center* of the cell. Right now it is flipping the whole space in the cell which makes it look like it's jumping rather than just mirroring. (Can you make the images flip without jumping over to the right?)

### Revising the Coding/Methods portion
The table format isn't really helpful because it's not giving you a chance to discuss your work. Instead, write out some paragraphs describing your work, and feature the code with links in that write-up. One of the best examples I know for writing a good "coding methodology" page was written up by some of my former students on the Emily Dickinson project team: <http://dickinson.newtfire.org/methodology.html>
Now, that project went on over two semesters and took on an afterlife of its own (one of the student developers, Nicole Lottig, has since graduated but still works on this project and wants to expand it to cover all of Dickinson’s poetry!) I mention this because, you wouldn't have *nearly* this much to write, but you could write something in a similar style to discuss how you worked out your strategies for coding, how you designed your schema (linking to your well-documented work in the code view of your GitHub repo.) Really, discuss your work here. I know that takes time and you were short on that at the end, but you can add more now—as an investment in sharing this project again down the road perhaps at a conference or at our campus DIGIT fest (coming up this spring). 

### Closing Comments
You all prepared a marvellous digital project in a very short timeframe, and your website demonstrates your interesting discoveries about the speaking parts in the play and its historic relevance. I now hope you’ll take this work to the next level and prepare it so it is clearly NOT just something you prepared for a semester class, but is a serious contribution to the public web's resources on Langston Hughes. I am so proud of what you've accomplished with the project and I look forward to seeing you share it widely! 
