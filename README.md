### Usage

```
$ ls
test_movie.mov
$ docker run -v $PWD:/app --rm hiogawa/mov2gif test_movie.mov 600x800 30 # <filename> <frame size> <frame rate>
...
$ ls
test_movie.gif test_movie.mov
```

### Development

```
$ docker build -t hiogawa/mov2gif .
```

### References

- https://gist.github.com/dergachev/4627207
- http://www.faqforge.com/linux/how-to-install-ffmpeg-on-ubuntu-14-04/
- http://askubuntu.com/questions/593433/error-sudo-add-apt-repository-command-not-found
