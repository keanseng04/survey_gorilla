<div class="container">
<div id="challenge" class="row">
<div class="col-sm-8">
<div class="row">
<div class="col-sm-12">
<div class="tab-content">
<div id="body" class="tab-pane fade active in">

We're going to build a survey application that lets users create their own multiple-choice polls and other users to vote in them.

This is going to use a combination of pure JavaScript and AJAX to achieve the desired effects.

A survey will have many questions. Each question will have many possible responses. A voter will select one (and only one) response for each question in a survey.
<h2>Objectives</h2>
<h3>Models</h3>
Go back to the polling schema challenges. This schema will be fairly complex and it will help to think in terms of survey-creators versus survey-voters.

There should be at least 6 core models/tables. You'll need a table to hold rows that represent the following sort of facts:
<ol>
	<li>User A exists</li>
	<li>User A created Survey X</li>
	<li>Question Y belongs to Survey X</li>
	<li>Possible Choice Z belongs to Question Y</li>
	<li>User B completed Survey X</li>
	<li>User B chose Possible Choice Z for Question Y</li>
</ol>
Each of these should correspond to a single table in your database and a single model in your app.

Users need to be signed in to create a survey and vote in a survey.
<h3>Wireframes</h3>
Work through wireframes and discuss what your core pages are and what your core user flows are. There should be two core flows: survey creation and survey completion.

One possible division of labor would be to separate these two flows.
<h3>Survey Creation</h3>
Users will want to create their surveys in "one go" by adding multiple questions and choices per question on a single page. This is an opportunity to create some fun dynamic forms. Check these out:
<ul>
	<li><a href="http://www.mustbebuilt.co.uk/2012/07/27/adding-form-fields-dynamically-with-jquery/">Adding Form Fields Dynamically with jQuery</a></li>
	<li><a href="http://www.infotuts.com/dynamically-add-input-fields-to-form-jquery/">Dynamically Add Input Fields To Form Using jQuery</a></li>
	<li>Google "jquery dynamic form fields" to find more</li>
</ul>
To start and for your own sanity, maybe limit each survey to a single question. Create a version with a single question per survey working first and add support for multiple questions later.

Surveys should also have an optional image associated with them. <a href="https://github.com/jnicklas/carrierwave">CarrierWave</a> is your friend; you'll come to love it with time.
<h3>Survey Taking</h3>
For now, a user has to answer every question in a survey. You should be able to implement this constraint using a single custom validation on a single model.
<h3>Survey Results</h3>
Create a nice page that shows the survey creator the results of a survey. If you want to do something fancy, try using<a href="http://d3js.org/">d3.js</a>. This is very advanced.

There are other charting libraries like <a href="http://www.flotcharts.org/">Flot</a> or <a href="http://www.highcharts.com/">Highcharts</a>.

At the very least, create some simple HTML bar charts by having percentage-width divs with a fixed height and solid background color so that we can see how people responded for each question in a particular survey.
<h3>Advanced Features</h3>
If you're looking for more advanced features, how about something that lets a user view a survey without logging in but pops up a <a href="http://www.ericmmartin.com/projects/simplemodal/">modal dialog</a> to prompt a user to sign in/sign up right before they vote?

How about more advanced visualizations, like time series?

How about focusing on making the user interface really nice?

How about multiple question types?

</div>
</div>
</div>
</div>
</div>
</div>
</div>
&nbsp;
