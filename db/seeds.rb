# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


ror = Cohort.create(season:"Summer", year: 2014, focus: "Ruby on Rails" )
fe = Cohort.create(season:"Summer", year: 2014, focus: "Front End")

Student.create(
    name:"Jessica",
    email: "emberbrown@gmail.com",
    password:"12345678",
    admin: true
    )

Student.create(
name:"Erin Brown",
email: "emberbrown@gmail.com",
password:"12345678",
cohort: ror,
twitter: "@ernbrn",
linkedin: "https://www.linkedin.com",
github:"ernbrn",
bio:"Erin is a local Durham musician. She’s played all over the Triangle and beyond. You may have seen her musical talents on
display at Fullsteam, Parker and Otis, Pinhook, the Cave, Open Eye Cafe, Carrborro Music Fest among others.
She keeps a running blog with her music and life (including her experience at The Iron Yard) which you can
check out at www.ern-brn.com. Erin’s also talented at making up words and she’s competed in two of Durham's
Great Pun Championships. Each time she finished in the elite 8 out of 24 contestants. She experienced “dissa-pun- tment”
in not getting further in the competition this year. However, she is ready to “pun-t” the competition next year and will
challenge anyone to a friendly pun competition. Erin loves to program and is looking forward to a creative career as a
back-end engineer.")

Student.create(
name:"Andrew Hooge",
email: "andrewhooge@pushactive.com",
password:"12345678",
cohort: ror,
twitter: "@andrewhooge",
github:"andrewhooge",
linkedin: "https://www.linkedin.com",
bio:"Andrew Hooge has a passion for fitness and
sport along with a curiosity for how to help people excel both physically and mentally. This passion and curiosity turned into a 15-year
career as a strength and conditioning coach for olympic runners, skiers and collegiate and professional football players. In 2003 Andrew
turned his passion into a book, FitSkiing. He purchased his first Mac in 1990 and began to understand the power of software as a freshman
in high school. He learned Pagemaker and helped convert the school newspaper from cut and paste to desktop publishing. Over the last four
 years he’s helped build two software start-ups and has been lucky enough to work with some very talented developers. Andrew was recently
a featured speaker at the Internet Summit and a presenter at the Southeast Venture Conference. He prefers a fast-paced environment and has
a passion for improving health outcomes with technology.")


Student.create(
name:"Dave Seidman",
email: "bullcitydave@gmail.com",
password:"12345678",
cohort: ror,
twitter: "@bullcitydave",
linkedin: "https://www.linkedin.com",
github:"bullcitydave",
bio:" Dave first learned to program in BASIC in the early 1980s. His proudest achievement on his Apple ][ Plus with 48K of RAM was a Mad Libs
program. Dave came to Durham
to attend Duke University where
he graduated with a Bachelor’s of
Science in Psychology and a minor
in computer science. After leaving
Duke he worked in IT consulting and assisted in the development of Remedy desk application. He has worked in IT service management at both Duke
University and Cisco where he gained exposure to and proficiency in many scripting languages. Fun Fact: In 1999 Dave
appeared on one of the very first airings of Who Wants To Be A Millionaire. Photo is of Dave sitting with Regis Philbin during a practice session.")

Student.create(
name:"Ami Gori",
email: "amygori@gmail.com",
password:"12345678",
cohort: fe,
twitter: "@amygori",
linkedin: "https://www.linkedin.com",
github:"amygori",
bio:" Amy has a PhD in english and has had a long career in higher education. She taught writing during the web 1.0 days and realized how useful
it would be to have web pages for her courses so she taught herself basic HTLM & CSS. When she left academia to focus on being a parent she started
 taking classes with Girl Develop It!, which reignited her delight in coding. She’s hoping to super-charge her skills at The Iron Yard and redirect
her professional energy.")


Student.create(
    name:"Mae Beale",
    email: "emberbrown@gmail.com",
    password:"12345678",
    cohort: ror,
    twitter: "@ernbrn",
    linkedin: "https://www.linkedin.com",
    github:"ernbrn",
    bio:"Erin is a local Durham musician. She’s played all over the Triangle and beyond. You may have seen her musical talents on
display at Fullsteam, Parker and Otis, Pinhook, the Cave, Open Eye Cafe, Carrborro Music Fest among others.
She keeps a running blog with her music and life (including her experience at The Iron Yard) which you can
check out at www.ern-brn.com. Erin’s also talented at making up words and she’s competed in two of Durham's
Great Pun Championships. Each time she finished in the elite 8 out of 24 contestants. She experienced “dissa-pun- tment”
in not getting further in the competition this year. However, she is ready to “pun-t” the competition next year and will
challenge anyone to a friendly pun competition. Erin loves to program and is looking forward to a creative career as a
back-end engineer.")

Student.create(
    name:"Sebastian",
    email: "andrewhooge@pushactive.com",
    password:"12345678",
    cohort: ror,
    twitter: "@andrewhooge",
    github:"andrewhooge",
    linkedin: "https://www.linkedin.com",
    bio:"Andrew Hooge has a passion for fitness and
sport along with a curiosity for how to help people excel both physically and mentally. This passion and curiosity turned into a 15-year
career as a strength and conditioning coach for olympic runners, skiers and collegiate and professional football players. In 2003 Andrew
turned his passion into a book, FitSkiing. He purchased his first Mac in 1990 and began to understand the power of software as a freshman
in high school. He learned Pagemaker and helped convert the school newspaper from cut and paste to desktop publishing. Over the last four
 years he’s helped build two software start-ups and has been lucky enough to work with some very talented developers. Andrew was recently
a featured speaker at the Internet Summit and a presenter at the Southeast Venture Conference. He prefers a fast-paced environment and has
a passion for improving health outcomes with technology.")


Student.create(
    name:"Emily Bond",
    email: "bullcitydave@gmail.com",
    password:"12345678",
    cohort: ror,
    twitter: "@bullcitydave",
    linkedin: "https://www.linkedin.com",
    github:"bullcitydave",
    bio:" Dave first learned to program in BASIC in the early 1980s. His proudest achievement on his Apple ][ Plus with 48K of RAM was a Mad Libs
program. Dave came to Durham
to attend Duke University where
he graduated with a Bachelor’s of
Science in Psychology and a minor
in computer science. After leaving
Duke he worked in IT consulting and assisted in the development of Remedy desk application. He has worked in IT service management at both Duke
University and Cisco where he gained exposure to and proficiency in many scripting languages. Fun Fact: In 1999 Dave
appeared on one of the very first airings of Who Wants To Be A Millionaire. Photo is of Dave sitting with Regis Philbin during a practice session.")

Student.create(
    name:"Chet Corey",
    email: "amygori@gmail.com",
    password:"12345678",
    cohort: fe,
    twitter: "@amygori",
    linkedin: "https://www.linkedin.com",
    github:"amygori",
    bio:" Amy has a PhD in english and has had a long career in higher education. She taught writing during the web 1.0 days and realized how useful
it would be to have web pages for her courses so she taught herself basic HTLM & CSS. When she left academia to focus on being a parent she started
 taking classes with Girl Develop It!, which reignited her delight in coding. She’s hoping to super-charge her skills at The Iron Yard and redirect
her professional energy.")


