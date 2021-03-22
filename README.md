# Dependency-aware declarative reaction scheduling in differential datalog
To run, download [differential datalog] and install [Rust] (tested on Linux using DDLog 0.38.0 and Rust 1.50.0), then in the repository directory run make with the name of `.dl` file, specifying where to find ddlog *e.g.*

```sh
make reactions2 DDLOG_HOME=$HOME/Downloads/ddlog
```

[differential datalog]: https://github.com/vmware/differential-datalog/releases
[Rust]: https://rustup.rs/