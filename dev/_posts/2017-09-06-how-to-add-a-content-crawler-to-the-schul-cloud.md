---
layout: blog-post
title: How to add a content crawler to the Schul-Cloud?
language: en
author:
- niccokunzmann
---

You want to add new learning materials to the Schul-Cloud search but
there is no search engine for the content.
Then, you can add the learning materials to the Schul-Cloud content
database to make it searchable.
This tutorial enables you to automate this process.

---

We call processes "crawlers" if they 

- fetch learning resources from one place
- convert the learning resources to our [json format][resource]
- and post them to our [content service][content] to make them found

This is the overall process which all crawlers follow.
It can be optimized, parallelized and obfuscated but all crawlers work this way.

First, we will work on how to add learning material to the database.
Later, we can have a look into how we parse data as this differs with the
learning material source and API.

## The database

The database contains the learning resources ready for the search.
In this chapter, you can find how to add resoruces and how to update and 
maintain them.

### Posting Data

We can start by writing a simple crawler which we know the resource.
In this example, we use nodejs.

```
var resource = {
  "title": "Example Website 1", 
  "description": "This is the first website we post"
  // ...
}
http.post("https://content.schul-cloud.org/v1/resources",
          {"data": resource})
```

If all works well, we can now see the resource on the [search website][search].

1. Go to the [search website][search].
2. See that "Allow External Resources" is activated.
3. Type in "Example Website 1" and press ENTER.
4. Now, you can see the resource turning up in the search results.

But what happens, if there is a problem with the resource.
Then, the server does not send a 200 OK but there is an error which we should
show

```
TODO: source code showing error with invalid resource
```

### Authenticating

Now, you might want to share resources with everybody using Schul-Cloud.
This can be done by authentication.
We want to assure a certain quality of the learning material as mentioned in the
[Learning Material Code of Conduct][content-coc].
In case of an unlikely violation, we want to get back to the authors
so they can change the resource and we are not forced to block content without
their knowing.

If you want to authorize, you can use your Schul-Cloud login email and password:

```
var resource = {
  "title": "Example Website 1", 
  "description": "This is the first website we post"
  // ...
}
MY_EMAIL = "me@example.com"
MY_PASSWORD = "1234"
http.post("https://content.schul-cloud.org/v1/resources",
          {"data": {"attributes": resource}},
          auth=(MY_EMAIL, MY_PASSWORD))
```

In case the username or password are invalid, you can see this error:

```
TODO 
```

The rest of the tutorial will work without authentication
but you can always always add the `auth` parameter.

### Deleting Resources

If you have tried to post several resources by now, you may wonder how you can
remove them again.
Each resource has an identifier which is generated when you post it.
You can list the ids of all resources which are there:

https://content.schul-cloud.org/v1/resources/ids

And you can decide to delete single resources:

```
http.delete("https://content.schul-cloud.org/v1/resources/" + RESOURCE_ID)
```

Or you can delete all at once:

```
http.delete("https://content.schul-cloud.org/v1/resources")
```

If you want to make sure you have the right resource, you can view it with
a `GET` request.

```
http.get("https://content.schul-cloud.org/v1/resources/" + RESOURCE_ID)
```


OUTLINE:

- fetch resources
- transform resource
- how to update
- how to delete unused
- parallelize
- error handling (disconnect, auth)


[resource]: https://github.com/schul-cloud/resources-api-v1/tree/master/schemas/resource#readme
[content]: https://content.schul-cloud.org
[search]: https://content.schul-cloud.org?external=true
[content-coc]: https://content.schul-cloud.org/code-of-conduct
