# TodoMVC with Rails 7, StimulusReflex, & Import Maps

A minimal, but fully functioning, demo [TodoMVC](https://todomvc.com/) app built with [Rails 7](https://rubyonrails.org/2021/12/15/Rails-7-fulfilling-a-vision), [StimulusReflex](https://docs.stimulusreflex.com/), and [Import Maps](https://github.com/WICG/import-maps).

_Only 185 lines of code. 😳_

[View a full diff from `rails new` to functional app.](https://github.com/hopsoft/todomvc/compare/69d97c94872895f0cdead979c70fb766919bb872...0ebc5cfee04498fb5ca34794d13df665f0fa2cd3) _It's a great way to quickly grok what's required to get Rails 7 and StimulusReflex 3.5.0.pre8 working with Import Maps._

## How to run it locally

```
git clone -o github https://github.com/hopsoft/todomvc.git
cd todomvc
bundle
bin/rails db:migrate
bin/rails s
```

Then visit http://localhost:3000 in a web browser.

## Lines of code

```
cloc app
      21 text files.
      21 unique files.
       0 files ignored.

github.com/AlDanial/cloc v 1.92  T=0.01 s (1823.4 files/s, 20838.7 lines/s)
-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
ERB                              6              6              1             92
Ruby                            11             17             16             79
JavaScript                       3              7              7             14
CSS                              1              0              1              0
-------------------------------------------------------------------------------
SUM:                            21             30             25            185
-------------------------------------------------------------------------------
```

## Best Practices

Note that this demo app violates what might be considered "best practices."
Namely, it uses reflexes for what would traditionally be handled with Rails forms.
