---
title: 'New features in v1'
date: 2021-08-07T15:32:14Z
lastmod: '2021-02-01'
tags: ['next-js', 'tailwind', 'guide']
draft: false
summary: 'An overview of the new features released in v1 - code block copy, multiple authors, frontmatter layout and more'
layout: PostSimple
bibliography: references-data.bib
canonicalUrl: https://tailwind-nextjs-starter-blog.vercel.app/blog/new-features-in-v1/
---

### Overview

A post on the new features introduced in v1.0. New features:

<TOCInline toc={props.toc} exclude="Overview" toHeading={2} />

First load JS decreased from 43kB to 39kB despite all the new features added!^[With the new changes in Nextjs 12, first load JS increase to 45kB.]

See [upgrade guide](#upgrade-guide) below if you are migrating from v0 version of the template.

## Theme colors

You can easily modify the theme color by changing the primary attribute in the tailwind config file:

```js:tailwind.config.js
theme: {
    colors: {
      primary: colors.teal,
      gray: colors.neutral,
      ...
    }
  ...
}
```

The primary color attribute should be assigned an object with keys from 50, 100, 200 ... 900 and the corresponding color code values.

Tailwind includes great default color palettes that can be used for theming your own website. Check out [customizing colors documentation page](https://tailwindcss.com/docs/customizing-colors) for the full range of options.

Migrating from v1? You can revert to the previous theme by setting `primary` to `colors.sky` (Tailwind 2.2.2 and above, otherwise `colors.lightBlue`) and changing gray to `colors.gray`.

From v1.1.2+, you can also customize the style of your code blocks easily by modifying the `css/prism.css` stylesheet. Token classnames are compatible with prismjs
so you can copy and adapt token styles from a prismjs stylesheet e.g. [prism themes](https://github.com/PrismJS/prism-themes).

## Xdm MDX compiler

We switched the MDX bundler from [next-mdx-remote](https://github.com/hashicorp/next-mdx-remote) to [mdx-bundler](https://github.com/kentcdodds/mdx-bundler).
This uses [xdm](https://github.com/wooorm/xdm) under the hood, the latest micromark 3 and remark, rehype libraries.
