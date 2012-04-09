# What it does:

Loops over a set of files and creates individual folders with the exact same name, then moves the appropriate file into the aforementioned folder.

# How to use:
Pass the script a set of files like this:

```./files_to_dir.sh *.pdf```

It will turn this:

```bash
1.pdf
2.pdf
3.pdf
```

into this:

```bash
1/1.pdf
2/2.pdf
3/3.pdf
```