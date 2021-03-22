DDLOG_HOME = "$(HOME)/Downloads/ddlog"
DDLOG_LIB = "$(DDLOG_HOME)/lib"
DDLOG = "$(DDLOG_HOME)/bin/ddlog"

RUST_BUILD_MODE = "release"

%_cli: %.dl
	$(DDLOG) -L $(DDLOG_LIB) -i $<
	cd "$*_ddlog"; cargo build --release

%: %_cli %.dat
	"$@_ddlog/target/RUST_BUILD_MODE/$@_cli" < "$@.dat"