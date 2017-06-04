---
layout: blog-post
title: A proposal for an extensible search for educational ressources
language: en
author:
- niccokunzmann
---

Teachers and students need to find educational ressources.
We propose a standardized way for content search, for Schul-Cloud, 
proposing an architecture that can scale as fast as the community.

<!-- more -->

## Forces
[forces]: #forces

There are several forces that shape how we should form the software for content delivery.

1. **It should scale es fast as the comunity does.**  
   It should be easy to add your own content.
   The Schul-Cloud software shows what is community content and what is not.
   To add your own material as to the Schul-Cloud content search, you do
   not need to ask a developer.
2. **It should be easy to add a new content provider.**  
   Tutorials introduce you to the required interface.
   There is a specified API which your software must adhere to.
3. **You do not need to have a search engine to make your content searchable.**  
   Content search on Wikipedia has a search engine as Wikipedia is so huge
   thet we can not crawl it and the search results will be better on its own
   search engine.
   Teachers and developers with own material do not need to implement such a
   search engine.
   For them, it is enough to provide the content in the form of a link or
   a specified API.
4. **Added providers are stable for a long time.**  
   The core team and the community add crawlers and search engines over a long period of time.
   Teachers come to trust that what is there will stay there and may only become more.
   Therefore, we need a stable interface, not breaking any of the community crawlers.
   This can be achieved by 
   - versioning APIs, so that new versions and old versions run alongside each other until they are deprecated.
   - keeping contact to crawler implementors to inform them about API deprecation.
   - designing an API by requirements to keep the change frequency low.
5. **User data shall be protected.**  
   When a user searches for content, nothing shall be disclosed about the user.
   This is especially true for open ressources such as youtube and wikipedia.
   However, if there is content protected by licenses which require authentication,
   some information must be disclosed:
   whether the user is allowed to use the content.
   This can identify the school.
   If we implement this in Schul-Cloud, the data does not go to third parties.
6. **Closed knowledge shall be kept secret.**  
   Publishers provide licenses for content.
   Content shall not be given away without their license's consent.
   
Please provide further requirements as pull-request.

These forces can not be neglected and shall influence the [architecture][architecture].

## Architecture
[architecture]: #architecture

The architecture is designed after the [forces][forced] mentioned above.
We will see how they form it.

Explanation: ![](/assets/img/ContentArchitectureLegend.svg)

---

![](/assets/img/ContentArchitecture.svg)

- **Edusearch Website**  
  This is the website, user go to in order to find their educational ressources.
- **Ressources**  
  This is an API retunring a list of specified ressources.
  A current specification can be found in the [Schul-Cloud Content Crawler][content-crawler].
- **Search**  
  This is an API defined for search engines.
  Similar to the Objects API, a list of such specified ressources is returned.
  However the search API takes arguments to search though the objects.
- **Search Engine**  
  These services provide the Search interface.
  In case of Wikipedia and Youtube, they are just an adapter to the search
  results provided be the already imeplemented search engines.
  The elastisearch instance searches a Database of predefined objects.
- **Database**  
  The database hold the objects which have no search interface.
  This could be for websites like blogs which contain some useful information
  but they are too small to have their own search implemented.
- **Crawler**  
  Crawler provide the content for the elastisearch engine.
  They shall post new content and delete old content.

## Forces and the Architecture

In this chapter, we show how the forces shape the architecture.

1. **It should scale es fast as the comunity does.**  
   By defining clear APIs, the code team does not need to understand and take care of
   new software developed by the community.
   The Community Crawlers and Search Engines can be plugged in easily.
2. **It should be easy to add a new content provider.**  
   As the number of crawlers grow they will strive to ease the pain of adding new
   material.
   One can image a crawler where you just post a link to, it crawls the website
   and does everythig for people who want to add their own material.
3. **You do not need to have a search engine to make your content searchable.**  
   Schul-Cloud provides the elastisearch engine to search content without a
   dedicated search engine.
4. **Added providers are stable for a long time.**  
   APIs are specified and tested.
   As soon as reqiurements change, a new version of the API can be introduced.
   If this version breaks the old interface, we let the code with the old
   interface run further and create an adapter from the old to the new interface.
5. **User data shall be protected.**  
   Ressources from content crawlers can be searched and access can be verified
   within Schul-Cloud.
   This way, no external person can access the user data.  
   In general, Schul-Cloud uses OAuth which reduces the user to a random identifier for the services.
6. **Closed knowledge shall be kept secret.**  
   See [the discuttion](https://github.com/schul-cloud/resources-api-v1/issues/51).

## Plan of Implementation

In order to implemnet the architecture we will need to follow some steps with dependencies.
Here, we want to discuss, how to go on implementing.

- **Define the APIs.**  
  We need to define our first version of the Search API and the Ressources API.
  This allows us developers to talk about an API and requirements instead of understanding the code.
  Previous work has been done which can imfluence the first specification.  
  [**Repository**][apiv1]
- **Implement elastisearch**  
  Currentlly, there is an implementation of the [elastisearch engine][content-api].
  We need to make sure, it works with the specified APIs.
- **Port the crawlers**  
  [Crawlers][content-crawler] have been implemented.
  They need to be ported to the new API.

[content-crawler]: https://github.com/schul-cloud/schulcloud-content-crawler#clients
[content-api]: https://github.com/schul-cloud/schulcloud-content-api
[apiv1]: https://github.com/schul-cloud/ressources-api-v1
