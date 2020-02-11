
<p align="center">
<img height="60" width="120" src="./Graphics/GA_logo.png" > 

# Improve Slum Area Identification through Real-Estate Data (problem 18)


</p>


## Due Feb 21st
https://git.generalassemb.ly/DSI-US-10/project-client-project

## Team members:
Michael Ono
Dylan Blough
Neil Hamlett

## Problem Statement: 

Mapping of informal settlements with satellite imagery is a long-standing practice, but such methods could be enhanced through web-scraped real-estate data. This project would build a web scraper to house and apartment adverts for a selected city in Africa/Latin America/Middle East. The scraper should download all adverts in the city during a recent period (ideally 3 years or more); and map all the adverts. The project should test the feasibility of estimating informal tenure from this information. Using gridded population estimates (e.g. from Facebook), the team would calculate the ratio of real estate adverts with population density. This ratio could serve as an input to machine learning models aimed at mapping informal settlements.

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
