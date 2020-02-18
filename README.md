
<p align="center">
<img height="90" width="90" src="./Graphics/GA_logo.png" > 

# Improve Slum Area Identification through Real-Estate Data (problem 18)


</p>


## Due Feb 21st
https://git.generalassemb.ly/DSI-US-10/project-client-project

## Team members:
Michael Ono

Dylan Blough

Neil Hamlett

## Problem Statement. 

Mapping of ***informal settlements*** with satellite imagery is a long-standing practice, but such methods could be enhanced through web-scraped real-estate data. This project would build a web scraper to house and apartment adverts for a selected city in Africa/Latin America/Middle East. The scraper should download all adverts in the city during a recent period (ideally 3 years or more); and map all the adverts. The project should test the feasibility of estimating informal tenure from this information. Using gridded population estimates (e.g. from Facebook), the team would calculate the ratio of real estate adverts with population density. This ratio could serve as an input to machine learning models aimed at mapping informal settlements.

The team selected Johannesburg, SA for purposes of prototyping.  Johannesburg meets multiple criteria.  It is a major population center in a developing economy. This is a client criterion.  For data-availability purposes, SA is the most-developed economy on the Africa continent. 


## Elaboration.

***Informal settlements*** (*aka* "slums") can be defined as " highly populated urban residential area consisting mostly of closely packed, decrepit housing units in a situation of deteriorated or incomplete infrastructure, inhabited primarily by impoverished persons" [Wikipedia](https://en.wikipedia.org/wiki/Slum).  For our purposes *informal settlements* are urban residential concentrations that are not supported by public services.  Beyond infrastructure services, these also include legal status, such as property deeds.

We seek here to identify local concentrations that are not reflected in official or commercial records. Applying a *data-science* approach, we attempt to compare unofficial measurements of local population densities with official or commercial sources. Our "slums" will be localities in which high concentrations of residents are indicated that do not coincide with "official" sources.

## Information sources.

<img height="240" src="./Graphics/200218 GIS Data Architecture.svg.png" > 


Two types of information sources interest us.  Our basic problem leads us to primarily consider geospatial information sources (GIS). 



### *Official* sources.

Two *official* sources present themselves.

#### Census data.

South Africa last conducted a census in 2011 [[stats sa]](http://www.statssa.gov.za).  A *Community-Survey* update was performed in 2016.  Census data is the "most-official" source of information.  It is however most-likely tied to officially-registered residencies. 

For purposes of slum-identification, provides an official reference of legally-sanctioned residencies. It is also easily accessible.  Some work is necessary to transform it to a geospatial reference frame.

Census data suffers from the disadvantage of the low frequency of its update. We get a full update once per decade.  A secondary update occurs at decade midpoints.

For prototype purposes, South Africa might give us advantage over other jurisdictions. Its institutions are more-mature.  Not every country may have census measurements as frequent, or accurate as South Africa.

#### Commercial sources.

The problem statement suggests looking at commercial sources.  These might include real-estate listings, or AirBnB listings.  These data are more-frequently updated than official sources, like census.  



-----
-----
<p align="center">

# DSI Boilerplate.

</p>


## Proposed Deliverables:

⓵ A short write up describing the project, results, and next steps or proposal to scale

⓶ Open source code for full process from gathering data to calculating and mapping the real estate to population density ratio

⓷ Proof of concept or pilot from a city or collection of cities.

## Requirements
For the purposes of a DSI project, you must meet a few technical requirements. They are:

A README.md file in your project repo. Note that README files are automatically rendered by GitHub when you view a repo. Your README should contain:

A problem statement.
A succinct formulation of the question your analysis seeks to answer.
A table of contents, which should indicate which notebook or scripts a stakeholder should start with, and a link to an executive summary.
A paragraph description of the data you used, plus your data acquisition, ingestion, and cleaning steps.
A short description of software requirements (e.g., Pandas, Scikit-learn) required by your analysis.
Your notebook(s) should be reproducible and error-free. This means:

You should set a random seed at the start of every notebook, using np.random.seed(...). This will ensure that the random numbers generated in your notebook will be the same every time.
You need to provide a relative path to your data, so that if I clone your repo to my machine I can run everything in your repo without error. (You also provide links to any publicly accessible data.)
I should be able to Restart & Run All in your notebook(s) and see that the exact same results are reproduced.
To check that everything worked properly, you may consider forking your own repo to a different location on your computer and checking that all notebooks can run properly from top to bottom.
Bear in mind that the value you provide to New Light Technologies may come from data ingestion, data cleaning, EDA, and/ or a dashboard, etc. While a model may not be immediately apparent, be creative. Without us telling you exactly what model to build, how could you build a model to increase performance or generate better insights when answering the problem you are facing?
