This is a simple example for adding special behaviors to FmDirectoryEntry.

I backup file contents automatically, while users are not conscious about that.

Usage:
dir := './withBackup' asDirectoryEntry: FmBackupDirectoryEntry.
dir at: 'text' put: 'abc'.
dir at: 'text' put: 'def'.
(dir at: 'text') inspect. "def"
(dir backupAt: 'text') inspect. "abc"
((dir / 'sub') at: 'text2' put: '123').
((dir / 'sub') at: 'text2' put: '456').
((dir / 'sub') at: 'text2') inspect. "456"
((dir / 'sub') backupAt: 'text2') inspect. "123"

---
mu 5/4/2007 17:15