Master Thesis Project
======

Optimistic Concurrency Control in a Distributed NameNode Architecture for Hadoop Distributed File System

Author
------

Qi Qi <qiq@kth.se>

Abstract
------
The Hadoop Distributed File System (HDFS) is the storage layer for Apache Hadoop ecosystem, persisting large data sets across multiple machines. However, the overall storage capacity is limited since the metadata is stored in-memory on a single server, called the NameNode.

The Hadoop Open Platform-as-a-service (Hops) is an open platform-as-a-Service (PaaS) support of the Hadoop ecosystem on existing cloud platforms including Amazon Web Service and OpenStack. The storage layer of Hops, called the Hops-HDFS, is a highly available implementation of HDFS, based on storing the metadata in a distributed, in-memory, replicated database, called the MySQL Cluster. It aims to overcome the NameNode's limitation while maintaining the strong consistency semantics of HDFS so that applications written for HDFS can run on Hops-HDFS without modifications.

Precedent thesis works have contributed for a transaction model for Hops-HDFS. From system-level coarse grained locking to row-level fine grained locking, the strong consistency semantics have been ensured in Hops-HDFS, but the overall performance is restricted compared to the original HDFS.

In this thesis, we first analyze the limitation in HDFS NameNode implementation and provide an overview of Hops-HDFS illustrating how we overcome those problems. Then we give a systematic assessment on precedent works for Hops-HDFS comparing to HDFS, and also analyze the restriction when using pessimistic locking mechanisms to ensure the strong consistency semantics. Finally, based on the investigation of current shortcomings, we provide a solution for Hops-HDFS based on optimistic concurrency control with snapshot isolation on semantic related group to improve the operation throughput while maintaining the strong consistency semantics in HDFS. The evaluation shows the significant improvement of this new model. The correctness of our implementation has been validated by 300+ Apache HDFS unit tests passing.

Presentation
------
Presentation Link: [https://github.com/qi-qi/thesis/raw/master/ppt/SICS/presentation_1.pdf](https://github.com/qi-qi/thesis/raw/master/ppt/SICS/presentation_1.pdf) 

![](https://raw.githubusercontent.com/qi-qi/thesis/master/github_image_preview/presentation.png) 

10-Page Summary
------
Summary Link: [https://github.com/qi-qi/thesis/raw/master/Final%20Submission/msc-qiqi-summary.pdf](https://github.com/qi-qi/thesis/raw/master/Final%20Submission/msc-qiqi-summary.pdf) 

![ ](https://raw.githubusercontent.com/qi-qi/thesis/master/github_image_preview/summary.png)

Report Acknowledgments
------
![](https://raw.githubusercontent.com/qi-qi/thesis/master/github_image_preview/acknowledgments.png) 

Thesis Report Download Link
------
[https://github.com/qi-qi/thesis/raw/master/Final%20Submission/msc-qiqi-thesis.pdf](https://github.com/qi-qi/thesis/raw/master/Final%20Submission/msc-qiqi-thesis.pdf)

Link for Hadoop Open Platform-as-a-service (Hops)
------
http://www.hops.io
