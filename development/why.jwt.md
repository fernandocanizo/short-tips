# Why JWT?

The principal reason JWTs have become popular in recent years (having only been
around since 2014) is that they can contain arbitrary JSON data. The touted
benefit of a JWT over a traditional session ID is that:

- JWTs are stateless and can contain user data directly
- Because JWTs are stateless, no server-side session needs to be implemented (no
  session database, session cache, etc.)

Because JWTs are stateless, when a server-side application receives a JWT, it
can validate it using only the “secret key” that was used to create it — thereby
avoiding the performance penalty of talking to a database or cache on the
backend, which adds latency to each request.


