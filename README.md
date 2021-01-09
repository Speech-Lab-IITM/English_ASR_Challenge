# IIT MADRAS SPEECH LAB'S ENGLISH ASR CHALLENGE

This challenge is the second ASR challenge in the series of challenges to be organized by Speech Lab, IIT Madras.

## Data Set and Baseline recipes

The data set comprises of Indian English read speech and lecture speech data along with the corresponding transcriptions. It covers genres like politics, sports, entertainment, etc. The read speech text data was crawled from newspapers, and then volunteers were asked to read them. The lecture speech data was obtained from the Computer Science and Electrical lectures of NPTEL. The read speech corpus is referred to with a suffix **_IITM_** whereas the lecture speech corpus is referred to with suffix **_NPTEL_**. The following data sets will be released as a part of this challenge

|Set|Duration(hrs)|Source|Type|
|---|-------------|------|-----|
|train_IITM_NPTEL| 280|IITM(80 hrs) + NPTEL(200 hrs)|read and lecture|
|dev_IITM|6|IITM|read|
|dev_NPTEL|5|NPTEL|lecture|
|eval_IITM|6|IITM|read|
|eval_NPTEL|5|NPTEL|lecture|

Lexicon and recipes to replicate the baseline experiments have also been made available.

# Baseline Results

**NOTE**: We used a train set comprising of both NPTEL and IITM English data. Evaluations were performed on NPTEL and IITM development sets by considering them seperately.

The baseline results(% WERs) are as follows. All the triphone models were trained using 7000 senones and 20 gaussians per seonone.

|Model|DEV_IITM|DEV_NPTEL|
|-----|--------|---------|
Tri1(7000-20) | 16.72  | 23.50 |
Tri2(7000-20) | 16.24  | 22.14 |
Tri3(7000-20) | 15.58  | 21.70 |
**TDNN**          |  **6.65**  | **13.08** |


## How to Participate

* Enroll yourself by registering on this link: [Register Now!](https://forms.gle/F9XCX3eEnCpnELyr8)
* Registering on the above link provides access to the user license and to download the training and test data for English challenge

## Challenge
* The **eval_IITM** and **eval_NPTEL** data sets will be made available only once the submission portal is opened, i.e. on 28th of January 2021. The links to download evaluation sets will be mailed to all the registered participants.
* All the participants are expected to submit their results on evaluation sets.
* There will be two seperate tasks. Participants can choose to participate in either of them or both. The two tasks are:
   * **Closed English-ASR Challenge:** Only the training data distributed as part of the challenge can be used to train the models (both acoustic and language models). Please note that you cannot use dev set data in any form while decoding the eval sets.
   * **Open English-ASR Challenge:** You can use any external/additional data to train the acoustic and language models.

## Submit results 
Use [submission portal](https://forms.gle/ixPCoD4NoL3cz5XLA) to submit your results.

* The submission portal will open on 28th of January 2021 and closes at midnight on 1st of February 2021 (midnight anywhere in the world, i.e., 12pm UTC on 1st of February 2021)
* Submissions should include the ASR output produced by the system and a brief description of the system. Further instructions about format of the decode files to be submitted will be made available soon.
* Participating teams can submit a maximum of 10 submissions per team
* Results will be displayed on a leader board throughout the period that the submission site is open
