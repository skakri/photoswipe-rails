# Contributing to photoswipe-rails

Here are the guidelines:

 - [Issues and Bugs](#issues)
 - [Pull Request Guidelines](#pull)

## <a name="issues"></a> Found an Issue?
If you find a bug in the source code or a mistake in the documentation, you can
help by submitting an issue to this [GitHub Repository][github]. Even better if
you can submit a Pull Request with a fix.

## <a name="pull"></a> Pull Request Guidelines

### Code style
Please try to limit line length under 80 symbols.

### Submitting a Pull Request
Before you submit your pull request consider the following guidelines:

* Make your changes in a new git branch (prefix with type –
feature/bug/enhancement):

     ```shell
     git checkout -b feature/descriptive-concise-name master
     ```

* Commit your changes using a title and descriptive commit message
(if appreciable).

* Push your branch to GitHub:

    ```shell
    git push origin feature/descriptive-concise-name master
    ```

* In GitHub, send a pull request to `photoswipe-rails:master`.
This should be done after first commit so changes can be tracked more easily
and feedback/comments may be received faster.
* If changes has to be made then:
  * Make the required updates.
  * Rebase your branch and force push to your GitHub repository
  (this will update your Pull Request):

    ```shell
    git rebase master -i
    git push origin feature/descriptive-concise-name -f
    ```

### After your pull request is merged

After your pull request is merged, you can safely delete your branch and pull
the changes from the main (upstream) repository:

* Delete the remote branch on GitHub either through the GitHub web UI or your
shell as follows:

    ```shell
    git push origin --delete feature/descriptive-concise-name
    ```

* Check out the master branch:

    ```shell
    git checkout master -f
    ```

* Delete the local branch:

    ```shell
    git branch -D feature/descriptive-concise-name
    ```

* Update your master with the latest upstream version:

    ```shell
    git pull --ff upstream master
    ```

[github]: https://github.com/skakri/photoswipe-rails
