# gh-fixed
## why?
I use GitHub a lot, and certain parts of the design were starting to annoy me. So, I wrote a few styles to fix it:
- Remove the gradients, rounded borders, and shadows from everything (because flat design is fancy, now)
- Ditch the footer. I never click on any of those links anyway. The only useful one is the [status page](https://status.github.com), but that URL is simple enough to commit to memory.
- Parsing comments that just say "+1" or ":thumbs-up:" and displaying them differently, so they are separate from the rest of the discussion.
- Removing the line under the H2 readme heading (because it looks too much like the H1)

I also have a few things that I want to get around to implementing:
- Make the issue and PR counts show up on the minimized nav-bar
- Implement a responsive layout using flexbox (removing all those floats in the process)
- Add an indication of whether anyone you're following has starred the repo you're looking at.

## install
### chrome
Since I really don't feel like paying the fee to host this extension on the Chrome Web Store, you will need to install it manually. But don't worry, it's still pretty easy to do. Just download the CRX file from the [releases page](https://github.com/slang800/gh-fixed/releases), open `chrome://chrome/extensions/` in a new tab, then drag `gh-fixed.crx` from your downloads bar (or from your downloads folder) on to the Extensions page to install it.

### firefox
Firefox doesn't have a fee, so you can download it from the [Add-ons Site](https://addons.mozilla.org/en-US/firefox/addon/github-fixed/). It's also avaliable by downloading the XPI file from the [releases page](https://github.com/slang800/gh-fixed/releases).

## screen-shots
Issues page and +1 simplifier:

![Issues page and +1 simplifier](https://raw.githubusercontent.com/slang800/psychic-ninja/master/gh-fixed-1.png)

Repo front page:

![Repo front page](https://raw.githubusercontent.com/slang800/psychic-ninja/master/gh-fixed-2.png)
