require 'open-uri'

puts 'Cleaning database'
Staff.destroy_all
Blog.destroy_all
puts 'Database cleaned.'
puts 'Creating new data base.'

deep = Staff.new({
  f_name: 'Deep',
  l_name: 'Biswas',
  job_title: 'Founder',
  bio: "Deep recently became a Special Adviser to the Chief of Planning of the City of Boston. Through public policy, his work focuses on stimulating real estate development in the city.
  
  Prior to his MBA, Deep spent most of his career as a Development Economist/Diplomat, leading solutions to some of the world’s biggest problems. His roles included being a government lead on International Trade (for the World Trade Organisation), Development Finance (as the UK’s World Bank Economist), Aid Programming, and interacting regularly with C-level staff to business plan a newly formed UK Government institution of ~10,000 personnel.
  
  Complementing his public service, Deep has taken opportunities in the private sector working for the leading international development strategy consultancy - Dalberg in Geneva, Switzerland, for a not-for-profit - TechnoServe in Abidjan, Cote d’Ivoire, and in venture capital for Atento Capital in Tulsa, Oklahoma.
  
  Deep holds a MBA with Distinction from Harvard Business School, the graduate business school of Harvard University and a MPhil in Development Studies from Jesus College, University of Cambridge.
  ",
  email: 'deepbiswas@hotmail.com',
  phone: '07784643044',
  link: 'https://www.linkedin.com/in/deep-biswas-a553a752/',
  briefdescription: 'Management & Analysis'
})
deep.image.attach( io: File.open(Rails.root.join('db/images/Deep_Headshot_Website.jpg')),
filename: 'Deep_Headshot_Website.jpg')
deep.save!

lu = Staff.new({
  f_name: 'Lyubomir',
  l_name: 'Dias',
  job_title: 'Software Engineer & Tech Lead',
  bio: "Lyubomir graduated from Le Wagon in September 2020 - it was ranked the world's number 1 coding bootcamp during his studies. He had been programming for many months prior to undergoing his intense training. Lyubomir's forte is front-end web development, but he brings a wider range of skills as a full-stack software engineer.\n
  
  Lyubomir is currently a Javascript Software Engineer with Kindred Group having been a Junior Web Developer with Brezaa.",
  email: 'lyubomirdias@gmail.com',
  link: 'https://www.linkedin.com/in/lyubomir-dias/',
  briefdescription: 'Technology & Design'
})

lu.image.attach( io: File.open(Rails.root.join('db/images/Lu_Headshot_Websiteready.png')),
filename: 'Lu_Headshot_Websiteready.png')
lu.save!

maria = Staff.new({
  f_name: 'Maria',
  l_name: 'Stavridou',
  job_title: 'Economist (Health)',
  bio: "Maria has over seven years of experience working across the private and public sectors, and multilateral organizations, and has conducted economic and policy work, focusing on cost-benefit and return on investment analyses, budget modelling, and business case development across 15+ countries. <br/>
  She has supported the Ministry of Health in Saudi Arabia with the design and implementation of a new model of care, where among others she trained government officials in the use of health technology assessment approaches for priority setting. As a health economist for Public Health England, she led the economic case for investment in the newly established UK Health Security Agency, pivotal in securing ~£600mn of investment in the newly created Government Agency. Most recently, she supported health financing reforms focusing on provider payment methods in Tunisia and Morocco for the World Bank. 
  
  Maria holds an MPH in Global Health from the Harvard T.H. Chan School of Public Health and a Master of Science in Economics from the University of Warwick.
  ",
  email: 'Mc.stavridou@gmail.com',
  phone: '617 201 2223',
  link: 'https://www.linkedin.com/in/mariachristinastavridou/',
  briefdescription: 'Management & Analysis'
})
maria.image.attach( io: File.open(Rails.root.join('db/images/Maria_Headshot_WebsiteReady.JPG')),
filename: 'Maria_Headshot_WebsiteReady.JPG')
maria.save!

gregor = Staff.new({
  f_name: 'Gregor',
  l_name: 'Weck',
  job_title: 'Finance and Sports Industry Analyst',
  bio: "Gregor is a Master of Science candidate at Vanderbilt University, where he is further honing his skills and expanding his knowledge in the field of financial mathematics. He has professional experience in Private Equity, Consulting, and Venture Capital across Europe and North America.  <br/>
  Prior to his M.Sc., Gregor worked on due diligence for leading European financial services firms, developed several investment theses, and conducted buyout & minority investment analyses across the renewable energy software and healthcare technology industries. Most recently he advised high-growth technology businesses on corporate finance and growth strategies. 
  
  Gregor holds a B.Sc. in Psychology with Distinction and a B.BA. in Finance with Distinction and competed as team captain for the university's NCAA Men’s Golf team.",
  email: 'gregor.weck@vanderbilt.edu',
  phone: '+49 160 91923705',
  link: 'https://www.linkedin.com/in/gregorweck/',
  briefdescription: 'Analysis'
})
gregor.image.attach( io: File.open(Rails.root.join('db/images/Gregor_Headshot_WebsiteReady.jpg')),
filename: 'Gregor_Headshot_WebsiteReady.jpg')
gregor.save!

blog1 = Blog.new({
  header: 'Massive Open Online Courses as a tool to fight poverty.',
  sub_header: 'by Alejandro Rodríguez-Pardo Montblanch',
  content: "The education level of a country and its GDP per capita are highly correlated[1]. Consequently, education has been identified by the United Nations (UN) as one of the essential pillars on which the fight against poverty is sustained (goal 4 of the UN Sustainable Development Goals[2]). Among the most relevant innovations that have emerged in this field within the last 10 years are Massive Open Online Courses[3], or MOOCs. Generally, MOOC platforms provide non-official higher education (HE) certificates and job-oriented training from well-established education institutions at prices tens of times lower than their on-campus counterparts, without losing the quality of the learning material[4]. These factors have attracted an increasing number of learners over the years, reaching 100 million in 2019[5], and before the COVID19 pandemic it was expected to continue growing at a rate of 10% annually[6] – under the current situation, the number of MOOC users has sky-rocketed[7], and the long-term consequences are yet to be seen.

  MOOCs have contributed to the democratisation of education, providing access to tertiary education from HE institutions to millions of people at a cheaper price and regardless of location. In low- and middle-income countries (LMICs), the most important motivation to take up MOOCs is related to the job market; completion rates of MOOCs are higher compared to high-income countries (HICs) by roughly 30 percentage points; and reported tangible job benefits are largest among users in LMICs by 4 percentage points compared to HICs[8]. From the perspective of governments and local institutions in LMICs, the developing of their own MOOC platforms is an opportunity to provide HE to people in remote areas, reduce the overall cost of education and, because the majority of the most widely used MOOC platforms are Western-based and in English, tailor the curricula based on the local needs and educate in the local language.
  <br/>
  In spite of the above, MOOCs are still underused. On the demand side, users from LMICs account for roughly 1/3 of all MOOC users[9], i.e. roughly 30 million people, of which 50% do not already hold a university degree and 40% are below the age of 25[10], totalling 6 million people. Based on the fact that current college attendance in lower-income countries is 24% over the students aged 19-25[11], and that the likelihood of attending college is double as much for people in the top tercile of income as those in the middle tercile[12], an estimate on the number of people who cannot attend college because of the lack of sufficient funds is roughly 50 million in LMICs. Although this estimate accounts only for one specific age range, it already shows that the potential market for MOOCs is several times its current use for learners who might wish to pursue a university degree but aren’t able to in LMICs.
  <br/>
  On the offer side, most of the MOOCs are Western and in English. Only some countries have started their own platform, such as India with SWAYAM or México with MéxicoX, targeted at providing their own citizens with the skills they require for the current job market.
  <br/>
  So, given the market chances, and the possibility of educating its own population, why aren’t MOOCs more widespread in LMICs? Several reasons can account for this. On the demand side, there is a lack of public awareness, issues with access to a computer and reliable internet, computer literacy, the social perception that MOOCs are for those who did not manage to get into university, a lack of official recognition, and a lack of courses in the specific areas needed locally and in the local language[12]. On the offer side, the entry costs are big: the technology must be made available, creating high-quality courses is demanding economically (tens or hundreds of thousands of US dollars[13]), and the competitors are already well-established and offer courses from the largest universities.
  <br/>
  Despite this, while the entry costs might be large, the overall, mid- to long-term costs of education are reduced: once a course is running, the maintenance is minimal (only the salary of less than five teaching assistants and IT employees[13]) for a course with an unlimited number of students. Decision-makers should see MOOCs not only as an investment with long-term returns for the country, but also as a chance to provide the less economically able population sectors with the education and tools required in a fast-paced society. Solutions to making MOOCs readily available include ensuring access to computers and internet, and the creation of their own MOOC platforms. Even if governments cannot afford to create their own MOOC platform, official recognition and raising public awareness of the existing platforms can help.
  <br/>
  In conclusion, MOOCs are being underused but steps can be taken to increase its usage. The above discussion has been limited to access to HE by those students who cannot attend university on-campus. However, it can be extended to the case of other levels of education (such as high schools or vocational education), as well as people of other socio-economic demographics. The issues listed above are still valid even during the COVID19 pandemic. The current situation has shown that new hybrid education models will likely prevail, bringing in the advantages of online learning (faster learning) and on-campus learning (related to soft skills). Therefore, it is to be expected that in the next few years we will witness a generalised spread of MOOC usage.
  <br/>
    References:
    <br/>
    [1] https://ourworldindata.org/grapher/correlation-between-mean-years-of-schooling-and-gdp-per-capita\n

    [2] https://www.un.org/sustainabledevelopment/\n

    [3] Pappano, L. The Year of the MOOC. The New York Times (2012).\n

    [4] See multiple MOOC platforms such as edX, Coursera, or Udemy. For example, edX has launched the Micromaster’s credentials with courses from MIT and other prestigious universities, where the lectures and learning material are exactly the same as on-campus and prices are generally less than 1000 US dollars.\n


    [5] <a href='https://www.classcentral.com/report/mooc-stats-2019/' target='blanked' >https://www.classcentral.com/report/mooc-stats-2019/</a>\n

    [6] <a href='https://monitor.icef.com/2020/' target='blanked' >https://monitor.icef.com/2020/</a>\n

    01/slower-growth-in-new-mooc-degrees-but-online-learning-is-alive-and-well/
    [7] https://www.classcentral.com/report/coursera-conference-2020-highlights/\n

    [8] Garrido, M. et al. The Advancing MOOCs for Development Initiative. An examination of MOOC usage for professional workforce development outcomes in Colombia, the Philippines, and South Africa. TASCHA Group, University of Washington Information School.

    [9] Liu, Z. et al. MOOC learner behaviour by country and culture; an exploratory analysis. 9th International Conference on Educational Data Mining, EDM 2016 – Raleigh, United States.\n

    [10] https://edx.readthedocs.io/projects/edx-insights/en/latest/enrollment/Demographics_Education.html\n\n

    [11] https://data.worldbank.org/indicator/SE.TER.ENRR.MA\n

    [12] Sanchez, A. et al. Accessing higher education in developing countries: Panel data analysis from India, Peru and Vietnam. World Development 109, 261 (2018).\n

    [13] Hollands, F. M. et al. Resource Requirements and Costs of Developing and Delivering MOOCs. The International Review of Research in Open and Distance Learning 5, 114 (2014).",
  author: 'Alejandro Rodríguez-Pardo Montblanch',
  author_info: '',
  hashtags: 'MOOCs / Education / Fight Poverty'
})
blog1.save!

puts "Seeding is finished"

