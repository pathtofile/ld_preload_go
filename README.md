# LD_PRELOAD in Go
Simple example of creating an `LD_PRELOAD` library in Go that hooks LibC's main function.
Code hooks `__libc_start_main` to run before the binary, and alter the contents of `argv`.

# WARNING
This code has had almost 0 testing, and was written as a small part of some current work I'm doing into commandline
tampering detection, with no intention to be used irl. It will almost certainly crash horribly when used outside of extremely tightly bounded testing scenarios, due to the unholy amount of `unsafe` I've used.

Also I don't know Go very well, so it's even more likley to have horrible design flaws.

# Build
```bash
make
```

# Run
```bash
# First argument gets replaced by "BBBB"
$> LD_PRELOAD=./bin/preload.so /bin/echo AAAA
BBBB
```

# Thanks
[Awgh](https://github.com/awgh/) basically walked me through it, so major props to them.
