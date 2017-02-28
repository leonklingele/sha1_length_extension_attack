# Generate simple PDF SHA1 collisions

## Usage

Download and run the scripts (on Linux):

```bash
$ chmod u+x run.sh
$ ./run.sh "Some Text" "Different Text"
```

This will download the sample SHA1 collision PDFs, and generate two customized PDFs. The PDFs will have the same SHA1 hash due to the way SHA1 processes blocks of data, but will be visually different.

These PDFs use the background color (as set in the original PDFs) to clash with the text color. Highlighting the document will show the hidden text.

More complex versions of this length extension attack are possible.

## References
* https://shattered.it/
* https://security.googleblog.com/2017/02/announcing-first-sha1-collision.html
* https://en.wikipedia.org/wiki/Length\extension\attack
* http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/pdf\reference\1-7.pdf

