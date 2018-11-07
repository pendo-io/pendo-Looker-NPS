# Pendo NPS - Visualized with Looker

The Block was built using representative components to pull data from Pendo (Xplenty and the Pendo public API), transform it as necessary (ex. convert dates from epoch to human-readable, apply a hash to PII data like visitorId), load it into a data warehouse / repository (in this case, Snowflake), and visualize it via Looker.

Following are the step-by-step implementation instructions for implementing this Block:  

Prerequisite:  The data extraction step leverages the Pendo public API.  This can be found by logging into your Pendo UI and navigating to Settings (lower left corner) -> Integrations -> Integration Keys.  If Integration Keys is greyed-out, please contact your Pendo CSM to inquire about pricing and activation the Pendo Integration API  package.

## Step 1:

To get stsarted and ensure your API call will work as expected, open your favorite RESTful API client to build the API call that will pull the NPS data for your currently active NPS poll.

```
Type = Post
URL = https://app.pendo.io/api/v1/aggregation
Headers: 
X-Pendo-Integration-Key = <your Pendo Integration API Key>
Content-Type = application/json
```

You'll  need the `guideId` for the NPS poll.  This can be obtained via the Pendo UI by navigating to Guides -> click on the link to the Guide in the `Name` column -> copy guideId from the URL - Ex. the bolded portion of the following URL: 

`https://app.pendo.io/net-promoter-system/guides/`**qlONt_EWU0g5bMvCagtCdd05Xas**`/polls/9ctsdjy0ba4?view=settings`

In the request body, copy and paste the following:

```

```

NPS Polls are considered two separate polls in the Pendo backend.  When you run this notebook, we'll make an API call to the subscription and guide to gather two poll IDs; one for the quantitative response (0-10) and one for the qualitative responses (I like Pendo because...) 

