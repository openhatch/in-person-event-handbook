============================
The In-Person Event Handbook
============================

getting your open source project ready for new contributors
###########################################################

It seems like every day there's another workshop, hackathon or sprint, where open source projects are invited to work with new contributors.  At `OpenHatch <http://openhatch.org/>`_, we've run plenty of these events ourselves!  We've found that to get the most out of an event, it's important to plan ahead.  Explaining your goals, identifying appropriate tasks, and testing your project setup, are all vital to making good progress - and having a good time.  These changes have greatly improved our experiences, and we think they're worth the (significant) effort.

We’ve created the following guide to help open source projects get ready for events.  We’ve used our own project - the `OpenHatch.org <http://openhatch.org/>`_ web app - as an example below.  At the bottom of the page, you can find `Checklists`_.  These condense the advice given in this handbook, and can help you track your progress as you prepare your project.

This handbook is `open source <http://creativecommons.org/licenses/by/3.0/us/>`_.  Many thanks to our `Contributors`_.  (`You can contribute, too! <https://github.com/openhatch/in-person-event-handbook>`_)

.. contents:: In this guide
   :class: bs-sidenav affix
   :local: 

Defining goals
==============

You want to be able to state clearly your goals for the event, as this gives your group something to work towards.  You can start by asking:

What is the overall goal of your project?  
+++++++++++++++++++++++++++++++++++++++++

You want a short (1 paragraph or less) answer to this question which you can use to entice potential contributors to your project.  Details are great, but at this point, you shouldn’t need to be too technical.  At many events, such as the PyCon sprints, you'll be asked to give a short summary in front of everyone.  Why not be prepared?

   OpenHatch’s goal is to make the free software/open source community more welcoming to newcomers.  To do this, we provide curricula and logistical support for running “Intro to Open Source” workshops, a website with open source tools, “training missions” and a volunteer opportunity finder, and several other projects in progress.

What do you want to accomplish at this event?   
+++++++++++++++++++++++++++++++++++++++++++++

Think about what, specifically, you’d like to get done at this event.  You can break these down by elements of your project, if you have more than one.  It should be clear how these event goals contribute to the overall goal of your project.  At the same time, these are not “tasks” - it should be necessary to break these goals down further in order to accomplish them.

It’s useful to phrase these in terms of “Base” and “Stretch” goals.  Having modest base goals gives you something to celebrate at the end of the event, while adding stretch goals lets you plan for the exciting scenario of having a large and/or effective team that’s able to accomplish a ton.

In general, it’s better to have too many goals than too few, but make sure you prioritize them.  When you get to the task-breakdown part of this guide, focus on doing a thorough job with each individual goal before moving on to the next one.

   - Make a new training mission

     - Base goal: Pick a skill to create a new training mission around, and design what the mission will look like.  Create a mock-up of the mission.

     - Stretch goal: Implement the mock-up, and user test it on volunteers from the event.

   - Clean out issue tracker

     - Base goal:  Go through tracker and label issues by what type of “cleaning” they need.  Does a bug need to be verified?  Does a patch need to be tested?  Does the feature request need to be attached to a milestone?

     - Stretch goal:  Use the labels as a guide to "clean" each issue.  Verify bugs, test patches, etc.
	
Project setup
=============

In our experience, project setup is the single biggest barrier to participation.  We’ve seen (and run!) events where participants spent most of their time just getting their development environment set up and becoming acquainted with the project.  If your goal is for newcomers to make contributions, estimate how long you think it will take them to set your project up.  Then find a friend or two who's not familiar with your project to test and see how long it *really* takes.  You can also find someone to help you do this in `#openhatch <http://openhatch.readthedocs.org/en/latest/contributor/chat_on_irc.html>`_.

Documenting and improving the process beforehand can save everyone a lot of time and energy.  If you know that a part of your project will inevitably be time-consuming, make sure participants know to expect that.

All of the information below should be documented in a README at the top level of your source repository.  Other places to put the info include a “Want to contribute?” section of your project website, and/or you can include a link to the README in the signature of your mailing list or in the status bar of your IRC channel.

How to find the project’s community/maintainers
+++++++++++++++++++++++++++++++++++++++++++++++

Contact information should be displayed prominently, as you may have remote contributors, or contributors who want to start before the event.  Types of contact information can include:

- A link to your mailing list.

- Your IRC channel name and server (including link to IRC installation guide and link to webchat version).

- Social media accounts such as Identica, Twitter, Facebook, if your project has them.

- Maintainers’ personal contact information, if you feel comfortable giving it out.

If you have a preferred mode of contact, do specify.

   OpenHatch has two places for contact info, which we try to keep updated and consistent with each other.  There’s our `contact info in the documentation`_, primarily linked to from our source code repository, and our `contact info in the wiki`_, primarily linked to from the website’s main page.

.. _contact info in the documentation: http://openhatch.readthedocs.org/en/latest/community/contact.html
.. _contact info in the wiki: https://openhatch.org/wiki/Contact

The project’s structure
+++++++++++++++++++++++

Describe the basic structure of your project.  What are the biggest pieces and where are they located?  How do those pieces interact?  Then break each piece down.  You don’t need to talk about every file or subdirectory of your project, but you don’t want to assume that what a script does, or how the files in a directory interact, or what language a part of your project is in is obvious to a newcomer.  Making those assumptions turns getting access to you into the bottleneck resource for working on your project.

Depending on the size and complexity of your project, this can be a pretty big undertaking.  At OpenHatch, we’re still working on getting the full structure completely documented.  We recommend doing a “top level” explanation of your project’s structure - enough detail to fill a half a page to a page.  When you have more time, you can go into more detail, starting with the areas that people commonly work on (or are likely to work on at sprints or hackathons.)  If you use other frameworks or libraries, you can save yourself some time by linking to their documentation and tutorials.
	
  A description of the top-level structure of the OpenHatch project can be found at `Project Overview`_.  A description of the structure of OH-Mainline (the repository that runs our website) can be found `here <https://github.com/openhatch/oh-mainline/blob/master/LAYOUT>`__.

.. _Project Overview: http://openhatch.readthedocs.org/en/latest/getting_started/project_overview.html

How to set up a local (“development”) environment
+++++++++++++++++++++++++++++++++++++++++++++++++

In order to contribute to your project, people will usually need to set up a local version of the project where they can make and test changes.  The more detailed and clearer your installation/development guide, the better.

Here are common elements of setting up a development environment you’ll want your guide to address:

- Preparing their computer

  - Make sure they’re familiar with their operating system’s tools, such as the terminal/command prompt.  You can do this by linking to a tutorial and asking contributors to make sure they understand it.  There are usually great tutorials already out there - OpenHatch's command line tutorial can be found `here <https://openhatch.org/wiki/Open_Source_Comes_to_Campus/Curriculum/Laptop_setup#Goal_.232:_practice_navigating_from_the_command_line>`__.  

  - If contributors need to set up a virtual environment, access a virtual machine, or download a specific development kit, give them instructions on how to do so.

  - List any dependencies needed to run your project, and how to install them.  If there are good installation guides for those dependencies, link to them.

- Downloading the source

  - Give detailed instructions on how to download the source of the project, including common missteps or obstacles.  

  - If there are multiple versions of the project, make clear which version they should download.

- How to view/test changes

  - Give instructions on how to view and test the changes they’ve made.  This may vary depending on what they’ve changed, but do your best to cover common changes.  This can be as simple as viewing an html document in a browser, but may be more complicated.

Installation will often differ depending on the operating system of the contributor.  You will probably need to create separate instructions in various parts of your guide for Windows, Mac and Linux users.  If you only want to support development on a single operating system, make sure that is clear to users, ideally in the top-level documentation.

   You can see OpenHatch’s version of this information in our `Installation Guide`_.  General instructions for testing changes can be found `here <http://openhatch.readthedocs.org/en/latest/getting_started/handling_patches.html#test-your-changes>`__.  Specific tasks may have additional documentation (for instance, `documentation changes`_.)

.. _Installation Guide: http://openhatch.readthedocs.org/en/latest/getting_started/installation.html
.. _documentation changes: http://openhatch.readthedocs.org/en/latest/getting_started/documentation.html
	
Contributing changes and feedback
+++++++++++++++++++++++++++++++++

How do contributors contribute their changes to the project?  Do they submit a pull request via Github?  Do they generate a patch and attach it to an issue in an issue tracker?  Make sure this information is explicitly provided.

   OpenHatch’s guide to submitting changes can be found `here <http://openhatch.readthedocs.org/en/latest/getting_started/handling_contributions.html>`__.

It’s also useful for people to know how they can give feedback/report bugs to the project.  If your project doesn’t have an issue tracker, consider creating one.  On Github, all repositories come with issue trackers (though you may need to enable it by going to *Settings* and then *Features*.)  There are many other `issue tracking systems <http://en.wikipedia.org/wiki/Comparison_of_issue_tracking_systems>`_.

If your project is small, you may not want or need an issue tracking system.  That's fine.  What's key is that contributors know how to give you feedback.

   Issues with the Open Source Comes to Campus project can be reported `here <https://github.com/openhatch/open-source-comes-to-campus/issues?direction=desc&sort=created&state=open>`__.  
   Most other issues with OpenHatch can be reported `here <http://openhatch.org/bugs/>`__.

Tools like issue trackers are very useful for asynchronous communication.  This may not be the best fit for an in person event.  If you want to change things up - for instance, by having attendees ping you in IRC with links to new issue URLs, so they don't fall between the cracks - make sure to tell them that!

Verify your documentation 
+++++++++++++++++++++++++

Verify that this documentation is complete/effective by testing on individuals who haven’t used or contributed to your project before.  Find at least one person for each operating system to read your documentation and attempt to install, make and test changes, and contribute the changes to the project.  (These can be simple, fake changes or, if your tester is willing, actual tasks.)  Make sure your testers have similar skills/experience as the kinds of newcomers you expect to have at your event.

If you're having trouble finding people to help, try the `#openhatch IRC channel <http://openhatch.readthedocs.org/en/latest/contributor/chat_on_irc.html>`_.

Make sure that any problems which arise during verification are added to the documentation.  Once the documentation has been verified, and a line to the top of your guide which states what was verified and when.

   Development environment instructions tested successfully on Ubuntu 12.04 (on 2013-10-03), Mac OS X 10.8 (on 2013-10-01) and Windows XP (in Jan 2005).
   You can see OpenHatch’s version of this `here <http://openhatch.readthedocs.org/en/latest/getting_started/installation.html>`__.

Ideally, you should verify that installing, making and testing changes, and contributing changes all work.  If you only have time for one, we recommend verifying installation.  In our experience, that's where the majority of problems arise.

Defining tasks for attendees
============================

Let’s return to the event goals we talked about in the first section.  Each goal should be broken down into the discrete steps needed to reach it.  These steps are the tasks you give to participants. 

These tasks should include a “plain english” summary as well as information about where to make the changes (for instance, which files or functions to alter).  We recommend including a list of needed skills (e.g. “design skills”, “basic Python”) and tools (e.g. “Mac development environment”).  It’s also useful to include an estimate of how much time the task will take, to label some tasks as higher or lower priority, and to mark where one task is dependent on another.  

This may seem like a lot of work, but it should help your attendees quickly and easily find tasks that are suited for them.  Since one of the main goals of in-person events is to give attendees a positive experience, we think it's worth it.

Create a system for tracking tasks
++++++++++++++++++++++++++++++++++

We recommend using a wiki or similar planning document to keep track of tasks.  OpenHatch has `a task browser`_ that we use for our events - you are welcome to fork it and customize it for your project/event, although you might want to wait as we’ll be making some big improvements soon.  Something as simple as an etherpad should also be just fine.  (See `here <https://etherpad.mozilla.org/task-browser-template>`__ for a template and a service you can use.)

.. _a task browser: https://github.com/openhatch/new-mini-tasks

Preparing tasks
++++++++++++++++

To figure out how many tasks to prepare, we recommend using the length of the event and the number of expected participants to predict how many person-hours will be spent working on your project.  You can then use the time estimates you made for each task to see where you stand.  We suggest finding 30% more than you think you'll need, as it's better to have too much to do than too little.

  - Base goal:  Go through tracker and label issues by what type of “cleaning” they need.  Does a bug need to be verified?  Does a patch need to be tested?  Does the feature request need to be attached to a milestone?

    - Task 1:  Label issues

      - Skills/tools needed:  Moderate English language skills, familiarity with concepts of verification, testing, milestones.

      - Estimated time:  ~20 minutes per issue

      - Get started:  Familiarize yourself with the issue tracker and how it displays information.  (See this documentation.)  Request administrative access so you can add labels to the tracker.

      - For each issue:  Read the thread for each issue and identify where in the process of addressing the issue the community is.  If there is an unverified bug, add the label "Unverified".  If there is an untested patch, add the label "Untested patch".  If there's a feature request with no associated milestone, add the label "Needs milestone".

  - Stretch goal:  Use the labels as a guide to "clean" each issue.  Verify bugs, test patches, etc.

    - Task 1:  Verify Bugs

      - Skills/tools needed:  Moderate English language skills, ideally familiarity with virtual machines to test on multiple OSs.

      - Estimated time: ~15 minutes set up, ~20 minutes per bug (high variance)

      - Get started:  Download the development environment and make sure you can run the project.  Make sure you have an account on <the issue tracker> and are familiar with how to add comments or change labels.

      - For each bug:  Try to reproduce the bug.  Record the results in a comment, including your operating system type and version #.  If possible, test on multiple browsers.  If there are recent comments covering all three major OSs, add label to bug “ready_for_maintainer_review”.

No matter what, attendees will need to be matched to a task that fits their skills and interests.  Doing this prep work will let participants get started immediately, instead of making them wait for you to suggest an appropriate task.  Ideally, event organizers will have collected information on participants' skills and interests ahead of time, so you can tailor the task list to your group of contributors.

Making the steps of each task explicit also helps participants mentor each other.  By clearly identifying which skills and concepts are needed, you make it easier for individuals to say, "Oh, I understand how to do that!  Let me show you."

Follow-up
=========

Contributors may not be able to finish the tasks they are working on during the event, or they may want to continue participating in the project by working on other tasks.  Thinking ahead about how you will follow up on the event makes it easier to exchange information with participants and plan the direction of your project.

We recommend asking each participant to answer the following questions about the tasks they worked on.  Giving them this list at the start of the event will help them document what they’re doing as they go along.  You can print out the list, email it to attendees, make a web form - whatever suits you.

  - For each task you worked on, please answer:

    - What task did you work on?

    - Please briefly document your workflow.  What steps did you take, in what order, and why?

    - Where can I find the work you did at the event?  This includes code, documentation, mock ups, and other materials.

    - If you created any accounts for the project, please list the site and account name.  Make sure to store the password in your favorite password manager, or make sure I (or another maintainer) have it.

    - What obstacles did you encounter when working on this task?  Do you have any feedback for me to make the process better for future contributors?

    - Would you like to stay involved in this project?  If so, in what capacity?

If there is enthusiasm for continuing the work, make sure you stay in touch!  We suggest gathering emails from interested attendees and contacting them within 48 hours of the event.  In the email, thank them for their help and include information on how to stay part of the community via, for instance, IRC or mailing lists.

We also recommend planning a follow up meeting at the event.  If you’re all local, try setting a date after the event for you and your team to meet at a local coffee shop, coworking space, or project night.  If you’re remote, set a date to meet on IRC or a google hangout.  2-3 weeks is a good time frame, though it will depend on how busy you and your new contributors are.

Checklists
==========

That’s a lot of advice!  To help you keep track of each step, we’ve created two checklists for you.  The detailed version includes all of the advice above.  The quick and dirty checklist includes the elements of the above document which we think are most important.  We recommend starting with the quick and dirty checklist.  Once you've completed that successfully, you can go back and do the extra steps if you have the time and energy.

To view and/or print the checklists, go `here <https://github.com/openhatch/in-person-event-handbook/blob/master/checklists.pdf>`__.

Acknowledgements
================

Thank you to everyone who has contributed to, or helped inspire, this project.

Contributors
++++++++++++

- Shauna Gordon-McKeon: maintainer, content
- Ni Mu: design
- Sheila Miguez: content feedback
- Asheesh Laroia: content feedback

Further Resources
+++++++++++++++++

- `Open Advice <http://open-advice.org/>`_
- `Producing Open Source Software <http://producingoss.com/en/producingoss.html>`_

