# TodoMVC with Rails 7, StimulusReflex, & Import Maps

A minimal, but fully functioning, demo TodoMVC app built with [Rails 7](https://rubyonrails.org/2021/12/15/Rails-7-fulfilling-a-vision), [StimulusReflex](https://docs.stimulusreflex.com/), and [Import Maps](https://github.com/WICG/import-maps).

_Only 185 lines of code. 😳_

[View a full diff from `rails new` to functional app.](#)

## How to run it locally

```
git clone https://github.com/hopsoft/todomvc.git
cd todomvc
bundle
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

```
rails stats
+----------------------+--------+--------+---------+---------+-----+-------+
| Name                 |  Lines |    LOC | Classes | Methods | M/C | LOC/M |
+----------------------+--------+--------+---------+---------+-----+-------+
| Controllers          |      9 |      9 |       2 |       1 |   0 |     7 |
| Helpers              |      2 |      2 |       0 |       0 |   0 |     0 |
| Jobs                 |      7 |      2 |       1 |       0 |   0 |     0 |
| Models               |     26 |     12 |       2 |       1 |   0 |    10 |
| Mailers              |      4 |      4 |       1 |       0 |   0 |     0 |
| Channels             |     13 |     12 |       2 |       1 |   0 |    10 |
| Views                |     99 |     92 |       0 |       0 |   0 |     0 |
| Stylesheets          |      1 |      0 |       0 |       0 |   0 |     0 |
| JavaScript           |     28 |     14 |       0 |       0 |   0 |     0 |
| Libraries            |      0 |      0 |       0 |       0 |   0 |     0 |
| Controller tests     |      0 |      0 |       0 |       0 |   0 |     0 |
| Helper tests         |      0 |      0 |       0 |       0 |   0 |     0 |
| Model tests          |      0 |      0 |       0 |       0 |   0 |     0 |
| Mailer tests         |      0 |      0 |       0 |       0 |   0 |     0 |
| Channel tests        |     11 |      3 |       1 |       0 |   0 |     0 |
| Integration tests    |      0 |      0 |       0 |       0 |   0 |     0 |
| System tests         |      0 |      0 |       0 |       0 |   0 |     0 |
+----------------------+--------+--------+---------+---------+-----+-------+
| Total                |    200 |    150 |       9 |       3 |   0 |    48 |
+----------------------+--------+--------+---------+---------+-----+-------+
  Code LOC: 147     Test LOC: 3     Code to Test Ratio: 1:0.0
```
