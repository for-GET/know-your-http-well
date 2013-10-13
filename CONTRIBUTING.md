# How to contribute

If the [LICENSE](LICENSE) is not obvious,
contributions to public domain are highly encouranged.

Please follow these simple guidelines,
and question them if they don't make sense.


## Overview

* the `master` branch
    * contains the source = the markdown files
    * contains the distribution = the auto-generated emacs, json, etc. files based on the
      source files of the latest release(=tag)
    * the source (WIP) and the distribution may obviously be out-of-sync in the
      HEAD
* the `generator` branch
    * contains support scripts to regenerate the distribution in the `master`
      branch based on the source files in the HEAD

Corollary:

* if you want to add/change HTTP information, use `master` as base, and only submit changes to the source
* if you want to add/change generated files, use `generate` as base


## How to prepare

* You need a [GitHub account](https://github.com/signup/free)
* [Submit an issue](https://github.com/for-GET/know-your-http-well/issues) if
  the not submitted beforehand.
	* Describe the issue.
	* Ensure that you're using the latest version.
* Fork the repository on GitHub


## Make Changes

* In your forked repository, create a topic branch for your upcoming patch based
  on one of the two main branches: `master` or `generator`.
* Make commits of logical units and describe them properly.


## Submit Changes

* Push your changes to a topic branch in your fork of the repository.
* Open a pull request to the original repository and choose the right original branch you want to patch.
* If not done in commit messages (which you really should do) please reference and update your issue with the code changes.
* Even if you have write access to the repository, do not directly push or merge pull-requests. Let another team member review your pull request and approve.


Note: these guidelines are closely following [vagrant's contributing guidelines](https://raw.github.com/mitchellh/vagrant/master/CONTRIBUTING.md)
