# Troubleshooting Semanticturkey/Vocbench

* Documentation on the semantic turkey website is outdated, and most of it does not work.
* Main problem was executing the st_server_run bash file with openshift to start semanticturkey, under this we made a list of all the errors we faced while trying to do this using different methods/images.

## What we've tried so far
**This  is an overview of the main errors we encountered, we had some smaller issues as well, but on fixing those we came back on one of the following errors.**

1. **Docker Strategy Not Allowed**
-- When we tried using Docker with the java base image we got the error message 'Docker strategy not allowed'.
-- We then tried using a paid for Openshift account, but this did not fix the problem.
-- Creating a user as suggested did not fix this problem for us.

1. **Changes Detected, recompiling modules (end of log)**
 -- using the tomcat base image.
 -- after building most of the modules, we got the message 'image change detected' and then 'end of log', no other information was provided.
 
 1. **No single directory found**
 -- error message: 'openshift Aborting due to error code 1 for No single directory found in /tmp/src but:\n total 4'.
 -- using the tomcat base image.
 -- tried moving everything to the single directory, but the error remained the same.
  







