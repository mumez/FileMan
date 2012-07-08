This is a simple example for adding special behaviors to FmDirectoryEntry.

I put and get file contents as gzipped, while users are not conscious about that.

Usage:
| dir |
dir := './gzipped2' asDirectoryEntry: FmGZipDirectoryEntry.
dir binaryAt: 'bin' put: #(1 2 3 12 34 56) asByteArray.
(dir binaryAt: 'bin') inspect.
dir at: 'text' put: 'This will be gzipped'.
(dir at: 'text') inspect.

I would be useful for storing/loading big contents in a simple dictionary-like manner. 

---
mu 5/4/2007 17:15