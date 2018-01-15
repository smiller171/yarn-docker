# Supported tags and respective `Dockerfile` links

Tags should generally match those from the official node image. Please file an issue if you notice I've fallen behind. `latest` will always be up-to-date

- [`latest` (*master/Dockerfile*)](https://github.com/smiller171/yarn-docker/blob/master/Dockerfile)
-	[`9` (*9/Dockerfile*)](https://github.com/smiller171/yarn-docker/blob/9/Dockerfile)
-	[`8`, `carbon` (*8/Dockerfile*)](https://github.com/smiller171/yarn-docker/blob/8/Dockerfile)
-	[`6`, `boron` (*6.11/Dockerfile*)](https://github.com/smiller171/yarn-docker/blob/6/Dockerfile)
-	[`4`, `argon` (*4.8/Dockerfile*)](https://github.com/smiller171/yarn-docker/blob/4/Dockerfile)

# Quick reference

-	**Where to file issues**:  
	[https://github.com/smiller171/yarn-docker/issues](https://github.com/smiller171/yarn-docker/issues)

-	**Maintained by**:  
	[Scott Miller](https://github.com/smiller171/yarn-docker)

-	**Supported Docker versions**:  
	[the latest release](https://github.com/docker/docker/releases/latest) (down to 1.6 on a best-effort basis)

# What is Yarn?

Yarn is a new package manager that replaces the existing workflow for the npm client or other package managers while remaining compatible with the npm registry. It has the same feature set as existing workflows while operating faster, more securely, and more reliably.

The primary function of any package manager is to install some package — a piece of code that serves a particular purpose — from a global registry into an engineer's local environment. Each package may or may not depend on other packages. A typical project could have tens, hundreds, or even thousands of packages within its tree of dependencies.

These dependencies are versioned and installed based on semantic versioning (semver). Semver defines a versioning scheme that reflects the types of changes in each new version, whether a change breaks an API, adds a new feature, or fixes a bug. However, semver relies on package developers not making mistakes — breaking changes or new bugs may find their way into installed dependencies if the dependencies are not locked down.

> [yarnpkg.com](https://yarnpkg.com/en/)

<img src="https://github.com/yarnpkg/assets/raw/master/yarn-kitten-full.png" width="200">

# How to use this image

## create an alias (add this to your .bashrc to persist it)

```bash
# This mounts your entire filesystem in the container, and sets the working directory to the current dir, so the command will work no matter where you run it from
alias yarn='docker run -it -v /:/usr/src/root -w "/usr/src/root$PWD"  scottmiller171/yarn'
```

## use yarn as normal

```console
$ yarn help ls

  Usage: yarn [command] [flags]


  Options:

    -V, --version                       output the version number
    --verbose                           output verbose messages on internal operations
    --offline                           trigger an error if any required dependencies are not available in local cache
    --prefer-offline                    use network only if dependencies are not available in local cache
    --strict-semver
    --json
    --ignore-scripts                    don't run lifecycle scripts
    --har                               save HAR output of network traffic
    --ignore-platform                   ignore platform checks
    --ignore-engines                    ignore engines check
    --ignore-optional                   ignore optional dependencies
    --force                             install and build packages even if they were built before, overwrite lockfile
    --skip-integrity-check              run install without checking if node_modules is installed
    --check-files                       install will verify file tree of packages for consistency
    --no-bin-links                      don't generate bin links when setting up packages
    --flat                              only allow one version of a package
    --prod, --production [prod]
    --no-lockfile                       don't read or generate a lockfile
    --pure-lockfile                     don't generate a lockfile
    --frozen-lockfile                   don't generate a lockfile and fail if an update is needed
    --link-duplicates                   create hardlinks to the repeated modules in node_modules
    --global-folder <path>              specify a custom folder to store global packages
    --modules-folder <path>             rather than installing modules into the node_modules folder relative to the cwd, output them here
    --cache-folder <path>               specify a custom folder to store the yarn cache
    --mutex <type>[:specifier]          use a mutex to ensure only one yarn instance is executing
    --emoji                             enable emoji in output
    -s, --silent                        skip Yarn console logs, other types of logs (script output) will be printed
    --proxy <host>
    --https-proxy <host>
    --no-progress                       disable progress bar
    --network-concurrency <number>      maximum number of concurrent network requests
    --network-timeout <milliseconds>    TCP timeout for network requests
    --non-interactive                   do not show interactive prompts
    --scripts-prepend-node-path [bool]  prepend the node executable dir to the PATH in scripts
    -h, --help                          output usage information
  Visit https://yarnpkg.com/en/docs/cli/list for documentation about this command.
```

# Image Variants

The `yarn` images come in many flavors, each designed for a specific use case. At time of publishing these match the `node` images, with the exception of the `ONBUILD` variants. I will attempt to keep this package up to date. Please open an issue if you notice I've fallen behind.

## `yarn:<version>`

This tag is based off of `node:slim`. This image does not contain the common packages contained in the default tag and only contains the minimal packages needed to run `node`. I've chosen to do this because this package is designed primarily for CLI use.

# License

View [license information](https://github.com/yarnpkg/yarn/blob/master/LICENSE) for the software contained in this image.
