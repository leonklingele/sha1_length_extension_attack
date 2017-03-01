# Generate pairs of simple PDFs that hash to the same SHA-1 sum

## Better Versions

Better versions of this attack have been demonstrated, be sure to check these out as well:

* https://alf.nu/SHA1
* https://github.com/nneonneo/sha1collider

## Usage

Download and run the scripts (on Linux):

```bash
$ chmod u+x run.sh
$ ./run.sh "Some Text" "Different Text"
```

This will download the shattered.it SHA-1 collision PDFs, and generate two customized PDFs. The PDFs will be visuall different but will both hash to the same SHA-1 sum due the way SHA-1 processes blocks of data.

These PDFs use the background color (as set in the original PDFs) to to hide text of the same color. Highlighting the document will show the hidden text.

See http://blog.alexsci.com/security/software/hashing/sha1-length-extension/ for more details.

## References
* https://shattered.it/
* https://security.googleblog.com/2017/02/announcing-first-sha1-collision.html
* https://en.wikipedia.org/wiki/Length\extension\attack
* http://www.adobe.com/content/dam/Adobe/en/devnet/acrobat/pdfs/pdf\reference\1-7.pdf
* http://blog.alexsci.com/security/software/hashing/sha1-length-extension/

