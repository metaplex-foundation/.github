# .github

A collection of github helpers

## Github Label Sync

```
> tasks/sync_labels.sh
```

> Syncs our [list of labels](./tasks/labels.json) to all metaplex-foundation repositories

### Set up

First, install [jq][].

Next, install [gh][].

Run the following to authenticate to github using `gh`:

```
gh auth login
```

Third, globally install [github-label-sync][].

```
npm i -g github-label-sync
```

Finally, [create a Github access token](https://github.com/Financial-Times/github-label-sync#accesstoken) for `github-label-sync` and export it to your environment.

```
export GITHUB_ACCESS_TOKEN=xxxxxx
```

You're all set to run the `tasks/sync_labels.sh` script.
If any errors arise during the sync, rerun the command.

[jq]: https://stedolan.github.io/jq/download/
[github-label-sync]: https://www.npmjs.com/package/github-label-sync
[gh]: https://github.com/cli/cli#installation