PetCareWebsite
==============

This is a simple project that utilizes Spring 3 MVC, Twitter Bootstrap, Maven and Less.  It is meant to be a great starter website that you can fill in with your own content.

There is one file missing from the package that you will need to pull in to your project (mail.properties). The to and subject fields should probably not be set in the properties but the application is currently built to require these for the form functionality.  I will likely fix this in a future release.

host=smtp.something.com
port=465
protocol=smtps
username=info@something.com
password=somepassword
to=?
subject=?
