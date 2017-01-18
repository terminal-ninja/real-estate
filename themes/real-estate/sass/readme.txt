
Design  Development  Work  Us  Blog
 Infobahn logo
OUR FRONT-END DEVELOPMENT PRACTICES: HOW I STRUCTURE MY SASS PROJECTS

Sam posted this on April 4, 2014 under process

  SHARE ON TWITTER   SHARE ON FACEBOOK   SHARE ON LINKEDIN
One of the problems with CSS is that it can be difficult to maintain on larger projects. Files soon become hundreds of lines long and, especially if there are lots of people working on a project, it can take a long time to search through and find the bit of code you’re looking for.

Preprocessors like Sass, Less and Stylus are designed to make working with CSS easier, and add exciting features such as variables, mixins and nesting that improve your workflow, reduce the amount of code you have to write and lead to better structured, more maintainable CSS.

I’ve been using Sass for a couple of years now. One huge benefit of using a preprocessor is the ability to split your CSS code into separate files (or partials) to make it easier to work with. Partials are not compiled into actual CSS files but are designed to be imported into other files.

I like breaking my CSS down into lots of small, specific modules, which I can import as necessary on each project. I concatenate all my partials into a single file which is then minified for use on the production site.

MY STRUCTURE
All our projects use the same Sass structure, which I have set up as a git repository on our server so I can easily clone the files into each new project. This allows me to gradually iterate on my set up as I see how it performs in the wild. At the moment, I structure my Sass files like this:

sass/
|
|-- base/                     # Default settings and normalise
|   |-- _fonts.scss           # Define fonts
|   |-- _typography.scss      # Set up font scale
|   |-- _colours.scss         # Define colours
|   |-- _defaults.scss        # Default settings and values
|   |-- _normalise.scss       # Normalise
|   |-- _base.scss            # Some additional base styles
|   ...
|
|-- elements/                 # Standard HTML elements
|   |-- _buttons.scss         # Buttons
|   |-- _forms.scss           # Form elements
|   |-- _headings.scss        # H1-h6
|   |-- _images.scss          # Images and figures
|   |-- _links.scss           # Links
|   |-- _lists.scss           # Lists
|   |-- _paragraphs.scss      # Paragraph level elements
|   |-- _tables.scss          # Tables
|   ...
|
|-- mixins/                   # Mixins and functions to ease dev
|   |-- _clearfix.scss        # Clearfix mixin
|   |-- _inline-block.scss    # Inline block mixin
|   |-- _ems.scss             # Convert a px value to ems
|   |-- _rems.scss            # Functions for working with rems
|   |-- _percent-font.scss    # Express values as % of the base
|   |-- _strip-units.scss     # Strip units from a value
|   ...
|
|-- modules/                  # Specific styles for the site
|   |-- _layout.scss          # Site structure
|   |-- _header.scss          # Header styles
|   |-- _footer.scss          # Etc...
|   ...
|
|-- objects/                  # OOCSS objects and abstractions
|   |-- _box.scss             # The OOCSS box object
|   |-- _media.scss           # Nicole Sullivan’s media object
|   |-- _nav.scss             # Nav abstraction
|   ...
|
|-- vendor/                   # Third party CSS files
|   |-- _jqueryui             # Third party library
|   |-- _slider               # Third party library
|   ...
|   |-- _overrides.scss       # Override any vendor styles
|
|-- _config.scss              # Sass environment settings
|-- style.scss                # Main file compiles to style.css
This is just one example of how to structure Sass files. There are loads of others. So far, this is the way I have found that fits best with the way I write CSS (using OOCSS and BEM style naming conventions), but I’m always looking for ways to make it better. If you have ideas about how my current implementation could be improved, or if you want to share your own structure, let me know @infobahndesign.

LIKE WHAT YOU’VE READ?

Enter your email below to get future posts beamed straight to your inbox.

Email address
ADD MY EMAIL

SEARCH

Search the site
CATEGORIES
Case Studies
Design
Development
Glossary
Infobahn
Process
Promotions
ARCHIVES
May 2016
April 2016
March 2016
September 2014
August 2014
July 2014
May 2014
April 2014
March 2014
February 2014
GET STARTED TODAY

We’d love to work with you. If you’ve got a challenging web design problem that needs solving, you should get in touch: team@infobahndesign.com.


Name

 
Email

 
About your project

 

 
SEND YOUR ENQUIRY
  