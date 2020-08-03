# compliance-as-code-pipeline

[![Build Status](https://travis-ci.com/githubfoam/compliance-as-code-pipeline.svg?branch=test)](https://travis-ci.com/githubfoam/compliance-as-code-pipeline)  


~~~~
oscap xccdf eval --profile xccdf_org.ssgproject.content_profile_rht-ccp --results-arf arf.xml --report report.html --oval-results /usr/share/xml/scap/ssg/content/ssg-rhel7-ds.xml

oscap xccdf eval --profile xccdf_org.ssgproject.content_profile_hipaa --results-arf arf.xml --report report.html --oval-results /usr/share/xml/scap/ssg/content/ssg-rhel7-ds.xml

oscap info /usr/share/xml/scap/ssg/content/ssg-rhel7-ds.xml

oscap xccdf eval --profile xccdf_org.ssgproject.content_profile_rht-ccp --results-arf arf.xml --report report.html --oval-results /usr/share/xml/scap/ssg/content/ssg-rhel7-ds.xml

oscap info /usr/share/xml/scap/ssg/content/ssg-debian8-ds.xml

~~~~

~~~~
$ ls -l /usr/share/xml/scap/ssg/content/
total 163952
-rw-r--r--. 1 root root      546 Apr 24 02:32 ssg-firefox-cpe-dictionary.xml
-rw-r--r--. 1 root root     3635 Apr 24 02:32 ssg-firefox-cpe-oval.xml
-rw-r--r--. 1 root root   243856 Apr 24 02:33 ssg-firefox-ds-1.2.xml
-rw-r--r--. 1 root root   243856 Apr 24 02:33 ssg-firefox-ds.xml
-rw-r--r--. 1 root root    34808 Apr 24 02:32 ssg-firefox-ocil.xml
-rw-r--r--. 1 root root    45765 Apr 24 02:32 ssg-firefox-oval.xml
-rw-r--r--. 1 root root   160755 Apr 24 02:32 ssg-firefox-xccdf.xml
-rw-r--r--. 1 root root     1409 Apr 24 02:32 ssg-jre-cpe-dictionary.xml
-rw-r--r--. 1 root root     5516 Apr 24 02:32 ssg-jre-cpe-oval.xml
-rw-r--r--. 1 root root   147488 Apr 24 02:33 ssg-jre-ds-1.2.xml
-rw-r--r--. 1 root root   147488 Apr 24 02:33 ssg-jre-ds.xml
-rw-r--r--. 1 root root    15418 Apr 24 02:32 ssg-jre-ocil.xml
-rw-r--r--. 1 root root    21423 Apr 24 02:32 ssg-jre-oval.xml
-rw-r--r--. 1 root root   107162 Apr 24 02:32 ssg-jre-xccdf.xml
-rw-r--r--. 1 root root     4709 Apr 24 02:33 ssg-rhel6-cpe-dictionary.xml
-rw-r--r--. 1 root root    77738 Apr 24 02:33 ssg-rhel6-cpe-oval.xml
-rw-r--r--. 1 root root 20261546 Apr 24 02:34 ssg-rhel6-ds-1.2.xml
-rw-r--r--. 1 root root 20262016 Apr 24 02:34 ssg-rhel6-ds.xml
-rw-r--r--. 1 root root   662620 Apr 24 02:33 ssg-rhel6-ocil.xml
-rw-r--r--. 1 root root  2112408 Apr 24 02:33 ssg-rhel6-oval.xml
-rw-r--r--. 1 root root  6873992 Apr 24 02:33 ssg-rhel6-xccdf.xml
-rw-r--r--. 1 root root     5349 Apr 24 02:33 ssg-rhel7-cpe-dictionary.xml
-rw-r--r--. 1 root root    77738 Apr 24 02:33 ssg-rhel7-cpe-oval.xml
-rw-r--r--. 1 root root 29454718 Apr 24 02:34 ssg-rhel7-ds-1.2.xml
-rw-r--r--. 1 root root 29455188 Apr 24 02:34 ssg-rhel7-ds.xml
-rw-r--r--. 1 root root  1278125 Apr 24 02:34 ssg-rhel7-ocil.xml
-rw-r--r--. 1 root root  3363113 Apr 24 02:34 ssg-rhel7-oval.xml
-rw-r--r--. 1 root root  9524186 Apr 24 02:34 ssg-rhel7-xccdf.xml
-rw-r--r--. 1 root root     3771 Apr 24 02:33 ssg-rhel8-cpe-dictionary.xml
-rw-r--r--. 1 root root    77738 Apr 24 02:33 ssg-rhel8-cpe-oval.xml
-rw-r--r--. 1 root root 14579489 Apr 24 02:34 ssg-rhel8-ds-1.2.xml
-rw-r--r--. 1 root root 14579814 Apr 24 02:34 ssg-rhel8-ds.xml
-rw-r--r--. 1 root root  1342829 Apr 24 02:34 ssg-rhel8-ocil.xml
-rw-r--r--. 1 root root  3427921 Apr 24 02:34 ssg-rhel8-oval.xml
-rw-r--r--. 1 root root  9204432 Apr 24 02:34 ssg-rhel8-xccdf.xml
~~~~

ansible playbooks
~~~~
$ ls -lai /usr/share/scap-security-guide/ansible/
total 7040
101278784 drwxr-xr-x. 2 root root   4096 Jul 25 10:32 .
   689528 drwxr-xr-x. 5 root root     50 Jul 25 10:32 ..
101278785 -rw-r--r--. 1 root root    910 Apr 24 02:32 firefox-playbook-default.yml
101278786 -rw-r--r--. 1 root root   1870 Apr 24 02:32 firefox-playbook-stig.yml
101278787 -rw-r--r--. 1 root root    906 Apr 24 02:32 jre-playbook-default.yml
101278788 -rw-r--r--. 1 root root   1420 Apr 24 02:32 jre-playbook-stig.yml
101278789 -rw-r--r--. 1 root root 156598 Apr 24 02:33 rhel6-playbook-C2S.yml
101278790 -rw-r--r--. 1 root root 248703 Apr 24 02:33 rhel6-playbook-CS2.yml
101278791 -rw-r--r--. 1 root root 189536 Apr 24 02:33 rhel6-playbook-CSCF-RHEL6-MLS.yml
101278792 -rw-r--r--. 1 root root    909 Apr 24 02:33 rhel6-playbook-default.yml
101278793 -rw-r--r--. 1 root root 207399 Apr 24 02:33 rhel6-playbook-desktop.yml
101278794 -rw-r--r--. 1 root root 221198 Apr 24 02:33 rhel6-playbook-fisma-medium-rhel6-server.yml
101278795 -rw-r--r--. 1 root root 194082 Apr 24 02:33 rhel6-playbook-ftp-server.yml
101278796 -rw-r--r--. 1 root root 262246 Apr 24 02:33 rhel6-playbook-nist-CL-IL-AL.yml
101278797 -rw-r--r--. 1 root root 133193 Apr 24 02:33 rhel6-playbook-pci-dss.yml
101278798 -rw-r--r--. 1 root root  73344 Apr 24 02:33 rhel6-playbook-rht-ccp.yml
101278799 -rw-r--r--. 1 root root 193760 Apr 24 02:33 rhel6-playbook-server.yml
101278800 -rw-r--r--. 1 root root 193458 Apr 24 02:33 rhel6-playbook-standard.yml
101278801 -rw-r--r--. 1 root root 234328 Apr 24 02:33 rhel6-playbook-stig.yml
101278802 -rw-r--r--. 1 root root 218798 Apr 24 02:33 rhel6-playbook-usgcb-rhel6-server.yml
101278804 -rw-r--r--. 1 root root  61287 Apr 24 02:34 rhel7-playbook-anssi_nt28_enhanced.yml
101278805 -rw-r--r--. 1 root root  68874 Apr 24 02:34 rhel7-playbook-anssi_nt28_high.yml
101278806 -rw-r--r--. 1 root root  56895 Apr 24 02:34 rhel7-playbook-anssi_nt28_intermediary.yml
101278807 -rw-r--r--. 1 root root  14099 Apr 24 02:34 rhel7-playbook-anssi_nt28_minimal.yml
101278803 -rw-r--r--. 1 root root 372914 Apr 24 02:34 rhel7-playbook-C2S.yml
101278808 -rw-r--r--. 1 root root 159169 Apr 24 02:34 rhel7-playbook-cjis.yml
101278809 -rw-r--r--. 1 root root 133931 Apr 24 02:34 rhel7-playbook-cui.yml
101278810 -rw-r--r--. 1 root root    909 Apr 24 02:34 rhel7-playbook-default.yml
101278811 -rw-r--r--. 1 root root 119597 Apr 24 02:34 rhel7-playbook-e8.yml
101278812 -rw-r--r--. 1 root root 363460 Apr 24 02:34 rhel7-playbook-hipaa.yml
101278813 -rw-r--r--. 1 root root 612589 Apr 24 02:34 rhel7-playbook-ncp.yml
101278814 -rw-r--r--. 1 root root 133542 Apr 24 02:34 rhel7-playbook-ospp.yml
101278815 -rw-r--r--. 1 root root 149897 Apr 24 02:34 rhel7-playbook-pci-dss.yml
101278816 -rw-r--r--. 1 root root 558715 Apr 24 02:34 rhel7-playbook-rhelh-stig.yml
101278817 -rw-r--r--. 1 root root 395761 Apr 24 02:34 rhel7-playbook-rhelh-vpp.yml
101278818 -rw-r--r--. 1 root root  63947 Apr 24 02:34 rhel7-playbook-rht-ccp.yml
101278819 -rw-r--r--. 1 root root 122689 Apr 24 02:34 rhel7-playbook-standard.yml
101278820 -rw-r--r--. 1 root root 433848 Apr 24 02:34 rhel7-playbook-stig.yml
101278821 -rw-r--r--. 1 root root    909 Apr 24 02:34 rhel8-playbook-default.yml
101278822 -rw-r--r--. 1 root root 118748 Apr 24 02:34 rhel8-playbook-e8.yml
101278823 -rw-r--r--. 1 root root 185807 Apr 24 02:34 rhel8-playbook-ospp.yml
101278824 -rw-r--r--. 1 root root 262059 Apr 24 02:34 rhel8-playbook-pci-dss.yml
101278825 -rw-r--r--. 1 root root 199130 Apr 24 02:34 rhel8-playbook-stig.yml
~~~~

~~~~
$ ls -l /usr/share/scap-security-guide/bash/
total 15412
-rw-r--r--. 1 root root     775 Apr 24 02:32 firefox-script-default.sh
-rw-r--r--. 1 root root   41211 Apr 24 02:32 firefox-script-stig.sh
-rw-r--r--. 1 root root     771 Apr 24 02:32 jre-script-default.sh
-rw-r--r--. 1 root root    8517 Apr 24 02:32 jre-script-stig.sh
-rw-r--r--. 1 root root  448366 Apr 24 02:33 rhel6-script-C2S.sh
-rw-r--r--. 1 root root  609399 Apr 24 02:33 rhel6-script-CS2.sh
-rw-r--r--. 1 root root  512864 Apr 24 02:33 rhel6-script-CSCF-RHEL6-MLS.sh
-rw-r--r--. 1 root root     774 Apr 24 02:33 rhel6-script-default.sh
-rw-r--r--. 1 root root  512286 Apr 24 02:33 rhel6-script-desktop.sh
-rw-r--r--. 1 root root  558144 Apr 24 02:33 rhel6-script-fisma-medium-rhel6-server.sh
-rw-r--r--. 1 root root  503790 Apr 24 02:33 rhel6-script-ftp-server.sh
-rw-r--r--. 1 root root  628100 Apr 24 02:33 rhel6-script-nist-CL-IL-AL.sh
-rw-r--r--. 1 root root  417168 Apr 24 02:33 rhel6-script-pci-dss.sh
-rw-r--r--. 1 root root   71739 Apr 24 02:33 rhel6-script-rht-ccp.sh
-rw-r--r--. 1 root root  501530 Apr 24 02:33 rhel6-script-server.sh
-rw-r--r--. 1 root root  499743 Apr 24 02:33 rhel6-script-standard.sh
-rw-r--r--. 1 root root  584490 Apr 24 02:33 rhel6-script-stig.sh
-rw-r--r--. 1 root root  546446 Apr 24 02:33 rhel6-script-usgcb-rhel6-server.sh

-rw-r--r--. 1 root root  171699 Apr 24 02:34 rhel7-script-anssi_nt28_enhanced.sh
-rw-r--r--. 1 root root  184707 Apr 24 02:34 rhel7-script-anssi_nt28_high.sh
-rw-r--r--. 1 root root  157416 Apr 24 02:34 rhel7-script-anssi_nt28_intermediary.sh
-rw-r--r--. 1 root root   14365 Apr 24 02:34 rhel7-script-anssi_nt28_minimal.sh
-rw-r--r--. 1 root root  693127 Apr 24 02:34 rhel7-script-C2S.sh
-rw-r--r--. 1 root root  456412 Apr 24 02:34 rhel7-script-cjis.sh
-rw-r--r--. 1 root root  264913 Apr 24 02:34 rhel7-script-cui.sh
-rw-r--r--. 1 root root     774 Apr 24 02:34 rhel7-script-default.sh
-rw-r--r--. 1 root root  334869 Apr 24 02:34 rhel7-script-e8.sh
-rw-r--r--. 1 root root  691441 Apr 24 02:34 rhel7-script-hipaa.sh
-rw-r--r--. 1 root root 1100414 Apr 24 02:34 rhel7-script-ncp.sh
-rw-r--r--. 1 root root  264524 Apr 24 02:34 rhel7-script-ospp.sh
-rw-r--r--. 1 root root  436954 Apr 24 02:34 rhel7-script-pci-dss.sh
-rw-r--r--. 1 root root 1045087 Apr 24 02:34 rhel7-script-rhelh-stig.sh
-rw-r--r--. 1 root root  639233 Apr 24 02:34 rhel7-script-rhelh-vpp.sh
-rw-r--r--. 1 root root   77288 Apr 24 02:34 rhel7-script-rht-ccp.sh
-rw-r--r--. 1 root root  330465 Apr 24 02:34 rhel7-script-standard.sh
-rw-r--r--. 1 root root  773254 Apr 24 02:34 rhel7-script-stig.sh

-rw-r--r--. 1 root root     774 Apr 24 02:34 rhel8-script-default.sh
-rw-r--r--. 1 root root  337909 Apr 24 02:34 rhel8-script-e8.sh
-rw-r--r--. 1 root root  366287 Apr 24 02:34 rhel8-script-ospp.sh
-rw-r--r--. 1 root root  510899 Apr 24 02:34 rhel8-script-pci-dss.sh
-rw-r--r--. 1 root root  392105 Apr 24 02:34 rhel8-script-stig.sh
~~~~

~~~~
https://github.com/complianceascode/content
~~~~
