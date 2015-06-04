# Introduction

This is the code repo for the personal website of designer/front end developer 
Mike Gibson (that's me). This repo has been made public so that they can be 
shared with the community. When I began writing HTML and CSS I learned 
practically everything by viewing the source code of a site I liked, copying it, 
and changing things to see what happened. While we've gained developer tools in 
our browsers that help us wade through the source of websites more easily, 
modern best practices make it more difficult to learn from source than in the 
past. Public Github repos can be the new View Source.

You will find the Sass files (.scss syntax) at [source > assets > stylesheets](https://github.com/lovehasnologic/lhnl-site/tree/master/source/assets/stylesheets). 
The coffeescript files can be found at [source > assets > javascripts](https://github.com/lovehasnologic/lhnl-site/tree/master/source/assets/javascripts) 
and are using. All other files in the source folder (with the exception of 
`feed.xml.builder`, `favicon.ico` and `.htaccess`) are source files for 
generated pages, written in Haml.

# Setup

To setup this site locally, you can follow these steps.

1. Clone the repo to your local environment.
1. Copy `config.rb.template` and rename it to `config.rb`. Update your paths,
   host, analytics `ga.tracking_id`, and deployment settings.  
1. Open up Terminal and `cd` into the directory where you cloned this repo.
1. Run `bundle install` from the command line. If you are using 
   [RVM](http://rvm.io) or [RBENV](http://rbenv.org), I'd suggest creating a 
   unique gemset to avoid development conflicts with any other projects you are 
   working on.
1. Run `middleman server` to start the server.
1. Load `http://localhost:4567` in your browser to see the site.

# Development

### Tools

There are a collection of tools that make developing this site easier. These 
will be installed when you run `bundle install`.

- [Haml](http://haml.info):
  HTML pre-processor
- [Sass](http://sass-lang.com):
  CSS pre-processor
- [Autoprefixer](https://github.com/middleman/middleman-autoprefixer): 
  Generate vendor prefixes during asset compilation
- [Coffeescript](http://coffeescript.org):
  Javascript pre-processor
- [Middleman](https://middlemanapp.com):
  Static site generator
- [Middleman Blog](https://github.com/middleman/middleman-blog):
  Adds blogging tools and collection management to Middleman
- [Middleman Similar Articles](https://github.com/ngs/middleman-blog-similar):
  Output a list of similar articles, based on the content of the page
- [Middleman ImageOptim](https://github.com/plasticine/middleman-imageoptim):
  Compress site images during build and deployment
- [Middleman Minify HTML](https://github.com/middleman/middleman-minify-html):
  Compress site images during build and deployment
- [Middleman Syntax](https://github.com/middleman/middleman-syntax):
  Adds language highlighting to code blocks using the Pygment library
- [Middleman Google Analytics](https://github.com/danielbayerlein/middleman-google-analytics):
  Add Google Analytics to your generated Middleman files in the easiest way 
  possible
- [Middleman Search Engine Sitemap](https://github.com/Aupajo/middleman-search_engine_sitemap):
  Generate sitemap.xml files to make the data sweeping robots happy

### Frontmatter

Middleman uses (YAML frontmatter)[https://middlemanapp.com/basics/frontmatter/] 
to pass variables and data through to the files as they are generated. 
Frontmatter is declared at the start of each file and is wrapped in `---`.

```
---
key: value
another_key: another value
---
```

Common Middleman frontmatter keys include:

- `title`: Page title as displayed on page, and in the browser tab
- `layout`: A unique layout file to use
- `date`: The date the page was published
- `tags`: A comma separated list of tags. In the design section, these become 
  "specialties" while in the blog they become "topics".
  
Additionally, I've added a handful of frontmatter keys in the templates that can 
be accessed.

- `meta_description`: Page description as shown in the meta tag and when the 
  content is shared through sharing services.
- `meta_author`: A stand-in for the article's author, in case I ever include 
  guest posts. This, right now, is only set to update the meta tag and be used 
  in Twitter sharing cards.
- `fb_image`: The image to display on Facebook cards when shared via Facebook.
- `twit_type`: When creating a Twitter card, this option lets us determine if 
  it's a `summary` or a `large_image_summary`. 
- `twit_image`: The image to display on Facebook cards when shared via Twitter.

Using the [Middleman Title](https://github.com/jcypret/middleman-title) add on, 
the ` | Michael Gibson` suffix is added to every page title. Currently, the 
stepped option in this add on is broken and can't be used on this site. It is 
something I plan on exploring.

# Deployment

The site is deployed using the [Middleman Deploy](https://github.com/middleman-contrib/middleman-deploy)
add on. This add on offers many deployment options, but I'm just using simple 
SFTP (mostly because the other stuff confuses me). To deploy, you will need a 
host, and will need to update the deployment options in `config.rb` to push 
files to that host. Once set up, you can run the `middleman deploy` command from 
the project folder in the Terminal. Middleman will build and then deploy the 
built files to your server.

# TODO

**Code Cleanup**

- [ ] Better case study designs
- [ ] Re-examine patterns for better long term re-use
- [ ] Refactor out !important madness
- [ ] Rebuild Sample Images in Portfolio for new site
- [ ] Verify Twitter Cards
- [ ] Verify Facebook Cards
- [ ] Change case, where appropriate, from "us" to "me"
- [ ] Sticky Footer (via Flexbox)

**Blog Articles**

- [ ] View Source vs. Github Source
- [ ] new site optimizations
- [ ] CMS Wrapup update (SS, CMS, MM)
- [ ] Dev/Design integration
- [ ] Fluid typography

**Design Case Studies**

- [ ] Max
- [ ] Medill
- [ ] Field Museum
- [ ] Gradesaver
- [ ] CHIRP: The First Time
