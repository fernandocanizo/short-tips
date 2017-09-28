# Get trace on unhandled rejections in Javascript

In Javascript an unhandled promise rejection doesn't give much information, to
get a proper trace add this code to the very beginning in your code:

```
process.on('unhandledRejection', reason => console.log(reason));
```
