# On Logging

Since these days (2021 en before too) we're using docker to wrap our
applications, it's important to drop a previous practice which was to configure
our loggers to write to a file when working in production. Since Docker manage
our logs, now we should configure our logging facility to just output everything
to standard output.
