Preface
=======
IBSite was a tool I wrote back in 2000/1 that let me send CodeSite messages from within Interbase SQL (Stored Procs, Triggers, etc). I've not touched it since 2001, but recently someone asked me if I'd release the source so it could be updated\fixed\whatever.  

I dug this off an old hard drive this morning and have not even tried to compile it. I would guess it was probably Delphi 5 or 6. I'm open sourcing it under an MPL v2.0 license ([http://mozilla.org/MPL/2.0/](http://mozilla.org/MPL/2.0/)). Have at it.

These were the original notes I wrote for it.



Introduction
============
IBSite is a free extension to CodeSite 2 from Raize Software which allows CodeSite messages to be sent from Interbase Stored Procedures and Triggers. It comes as a collection of UDF's (User Defined Functions), which once installed into Interbase, can be called like any other statement from Interbase SQL.

Requirements
------------
IBSite has been tested with CodeSite 2 Professional and Interbase v6.0 on Windows. We aren't taking advantage of any of the features not present in CodeSite 2 Standard, so we believe it should also work with the Standard Edition. Additionally, Interbase has had UDF support for a number of versions, so we believe it should also work with any Interbase version on Windows which supports UDF's. As we try it out with more versions, we'll post the results.

Installation
------------
On Interbase v6.0, the IBSITE.DLL should be copied to the UDF directory under the Interbase root directory. On previous versions of Interbase, IBSITE.DLL will need to be placed somewhere on the PATH. Once this is done, run the REG.SQL script against the database you wish to use IBSite within. This script registers the UDF functions with your database, and also creates some wrapper Stored Procedures. The UDF will need to be registered with each database you wish to use IBSite with.

If you're running Interbase as a Service, you will need to turn on the "Interacts with Desktop" flag in the Service Properties.

That's it. You're installed.

Uninstall. 
----------
Run the UNREG.SQL script against the database from which you wish to remove IBSite support. Once none of your databases have the UDF registered, you can delete IBSITE.DLL (You may need to shutdown Interbase first, as it loads the dll into memory and won't unload it until Interbase is shut down)

Use
---
To test your installation, bring up ISQL and run the following statement:

execute procedure csSendString 'Name', 'Value'

If all is working, you should see a message appear in your CodeSite 2 Viewer.

Have a look at the TEST.SQL script for a stored procedure which uses a lot of the calls.
