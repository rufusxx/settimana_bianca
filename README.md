# Settimana Bianca <!-- omit in toc -->

A website for Rufusxx's skiing holiday.

## 1. Table of contents

- [1. Table of contents](#1-table-of-contents)
- [2. Development environment setup](#2-development-environment-setup)
  - [2.1. Miniconda](#21-miniconda)
    - [2.1.1. Manual `conda` environment installation](#211-manual-conda-environment-installation)
  - [2.2. Auto-setup script](#22-auto-setup-script)
  - [2.3. Select the interpreter](#23-select-the-interpreter)
- [3. Build and run the website locally](#3-build-and-run-the-website-locally)
- [4. Updating the website](#4-updating-the-website)

## 2. Development environment setup

The following steps will guide you through the installation procedure.

### 2.1. Miniconda

[<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Conda_logo.svg/320px-Conda_logo.svg.png" alt="Conda" width="80"/>](https://docs.conda.io/en/latest/) &thinsp; is required for creating the development environment (it is suggested to install [Miniconda](https://docs.conda.io/en/latest/miniconda.html)).

Use the terminal for navigating to the repository base directory, then use the [setup script](#22-auto-setup-script) to activate the installation process.

> [!WARNING]
> The installation script run several other commands in addition to `conda env create`.  
> Use it for a proper working environment.  
> Read below for info about manual environment creation and activation.

> [!TIP]
> For `conda` to work better with _VS code_, it is suggested to set the `auto_activate_base` option to `False`.
> 
> ```
> conda config --set auto_activate_base False
> ```

#### 2.1.1. Manual `conda` environment installation

> [!NOTE]
> Skip this section if you use the [setup script](#22-auto-setup-script) (which is strongly suggested).

Use the following command in your terminal to manually create an environment named `settimana-bianca`.

```
conda env create -f environment.yml
```

Activate the new `conda`  environment with the following command.

```
conda activate settimana-bianca
```

Deactivate the environment with this simple command:

```
conda deactivate
```

### 2.2. Auto-setup script
Install `settimana-bianca` environment by calling the setup script:

```
source setup_dev_env.sh
```

It creates the conda environment by using the file `requirements/environment.yml`.  
These are the steps executed by `setup_dev_env.sh`:
1. install `ruby` environment
2. activate development environment
3. install `ruby` gems
4. fix `ruby` location with a symlink

The last step add a symlink to `settimana-bianca` environment (directly in `conda` folders) for `ruby` to find installed _gems_.

### 2.3. Select the interpreter

> [!TIP]
> Selecting the interpreter is a good idea for _VS Code_ users.

If you want _VS Code_ to activate the `conda` environment for you, install the _Python_ extension and the search `select interpreter` from the _command palette_.
Then select `settimana-bianca` to activate the environment in every _integrated terminal_ you open.

## 3. Build and run the website locally

Use the makefile to run the website locally.

```
make jekyll-serve
```

This command build the website and spins up a local server.

> [!WARNING]
> `jekyll serve` (the command used by `make jekyll-serve`) is suitable for development.  
> _Github Pages_ will use a server suitable for a production environment.

If you want to build the website, without running a server, use `make` as shown below.

```
make jekyll-build
```

## 4. Updating the website

When you are ready to update the website on _Github pages_ you should merge the `development` branch into the `main` branch.

You have two choices:

1. Using pull requests (_PR)_ from from [_GitHub_ website](https://github.com/rufusxx/settimana_bianca/pulls) (look [here](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-pull-requests) for more info about _PRs_ ).
2. Using `git` locally.

_PR_ are created and merged from _GitHub_ graphical interface, probably an easier approach for `git` newbies.

If you want to merge manually use the following commands:

```
git checkout main
git merge development --no-ff
git push
git checkout development
```

The last command (`git checkout development`) is strongly suggested: the next time you start coding you are already on the right branch.  
Otherwise you may start adding commits to `main`, not a real issue, but it is better to add _development_ commits to the branch they belong to.
