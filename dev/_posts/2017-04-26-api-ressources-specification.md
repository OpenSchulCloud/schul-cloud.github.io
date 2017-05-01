---
layout: blog-post
title: Towards an API specification for educational ressources
language: en
author:
- niccokunzmann
- alexanderkremer
- arneoberlaender
---

The [last blog post][arch] introduced the architecture.
Here, we propose a part of the glue that holds the architecture together:
The ressource specification for educational ressources.

<!-- more -->

Arne Oberlander, Alexander Kremer and Nicco Kunzmann discussed the current content architecture of Schul-Cloud.
Our topics were 

- the current mental model behind Schul-Cloud 
- content classification and how it fits
- expectations of the object model we use to search content

## Content Categories
[content-categories]: #content-categories

![](/assets/img/architecture/content-categories.jpg)

- (A) atomic media objects (pictures, video, ...)
- (L) learning object - a context using several atomic media objects (text with pictures, ...)
- (RL) Rahmenplanorientierte Lernobjekte
- (T) Tools (AB-Generator, Bettermarks, ...)

These are categories which teachers use as their mental model to search for content.
The content categories can be used to classify the content objects found.
In the user interface, we can use these to guide the teacher in their choice.

## Object model for educational ressources

The object themselves have several attributes.
We brainstormed which of those would be most useful for us.

![](/assets/img/architecture/architecture-and-objects.jpg)

Most useful attributes answering the question *What would the teacher like to see when searching?*

- **title** (required)  
- **url** (required)  
  This is not interesting to the user.
  The services use this to retrieve the content.
  E.g. if it is an image from the Deutsche Digitale Bibliothek,
  then the url is used to show and embed the picture.
- **mimeType** (required)  
  This is equivalent to the HTTP header `Content-Type`, hinting at whether this
  content is an image, PDF, HTML-website, ...
- **contentCategory** (required)  
  As discussed before, in [Content Categories][content-categories].
  - *Question: Can everything be classified like this/automatically?*
- **subjects** (optional)  
  Like German, English, Mathematics.
  This may call for a standardization of spelling and set of possible.
  - *Question: What are possible subjects?*
- **curriculum** (required for contentCategory=="RL")  
  This is a classifier for which curriculum this content adheres to.
  Example could be `KMK :: Thürungen :: Deutsch :: 1998` for the German language in Thuringia specified in 1998.
  - *Question: Which curricula are there?*
  - *Question: should we add which competences are covered?*
- **license** (required)  
  Which license is used.
  This should be a specified list of strings.
  - *Question: What if we have mixed licenses?*
- **provider** (required)  
  Who provides it and how is it verified?
  This could be a publisher such as Westermann or a person n Schul-Cloud, ... .
  - *Question: What does tutory use? They remix content. They should know how to handle this.*

When we developed this model, we also looked at [the Content Crawler][content-crawler].
Then, we had questions of best practices

- schema.org: WHat schemas are used for (open) educational ressources.
- LOM/LOM-EAF are standards which should cover part of these attributes.
  As such we should look here for best practices.
- A license may only be for a school/person who bought the information.
  How can we handle this?

## Summary

These ideas allow us to create a first, running specification.
There are questions to be answered. Please help us by editing this file.

## Future Work

Specifying the object format with a lot of tought will allow us to efficiently implement and test the sevrices usig a standardized API.
This will allow for scalability.
When creating a specification together and first, we put the dialog upfront, reduceing wasted time, incresing transparency.


[content-crawler]: https://github.com/schul-cloud/schulcloud-content-crawler#clients
[arch]: /blog/2017-04-24/extensible-content-delivery
