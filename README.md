# Programming Course Homework 1

Hi folks! Ok, here is your first homework. 

## Logistics

* You have time until March 1st
* You **must** do the homework in teams of 2 or 3 students

## Submitting via Pull Request (PR)

Now you are real github pros 👷🏻‍♀️👷🏾‍♂️👩🏽‍💻👨🏻‍💻 so you will submit this via _pull request_. Let me take you through it.

### Setting up your copy of this repo: Create a *Fork*

1. Towards the right of this page, search for the _Fork_ button. Click it. This will setup a copy of this repo on your own user space. Wait a moment. We will end up on _your_ github user space, at `YOUR_USERNAME/scpoproghw1`. Stay there.
2. Let's get this repo onto your computer. Click the green button (`<> Code`) and copy the SSH URL (i.e. something like `git@github.com:YOUR_USERNAME/scpoproghw1.git`)
3. open the terminal on your computer. where you type `bash` commands.
4. choose a suitable location for your homeworks. I'll assume you choose to put them in `~/scpoproghw`. execute this:
    ```bash
    mkdir -p ~/scpoproghw  # make that directory
    cd ~/scpoproghw # go there
    git clone git@github.com:YOUR_USERNAME/scpoproghw1.git 
    ```

## Do The Job 💪🏽

* Ok great, good to go. 
* Start the VSCode editor and open the local repo. If you were following along, that means opening `~/scpoproghw/scpoproghw1` in VSCode (do that from withing VSCode, not on the command line)
* Open the `script.sh` file. You need to fill in some bits and pieces, and run it frequently to check that it does what you want.
* Remember that if there is a script `run.sh` located in a certain directory `dir`, you can **execute** it via `./dir/run.sh`. If you are _inside_ `dir`, that of course becomes `./run.sh`. (_the leading `.` is important!_)
* I would recommend that you open the terminal inside VScode (in top menu, `Terminal > New Terminal`), edit the `script.sh` file, and then repeatedly execute it in the terminal. 
* Like, if you do that now, you will see this:
    ```bash
    floswald@PTL11077 ~/g/S/scpoproghw1 (main) [1]> ./script.sh
    student 1
    student 2

    here is my table:


    checking results....
    tail: outtable.txt: No such file or directory
    /Users/floswald/git/ScPoProgrammingHW/scpoproghw1/script.sh: line 99: [: ==: unary operator expected
    wrong result :-(
    ```
* ... informing us, the _currently_ this script is producing the wrong result 😉. Over to you now!



## Submit your PR

1. prepare a commit of your script to the local repository.
2. `git add script.sh`, `git commit -m 'your message'`, just like you know how to do. 😀
3. No need to add a `remote`, the initial `git clone` command took care of that.
4. So, only thing left is to `git push`. Do it! 🚀
5. Final step: back on `https://github.com/YOUR_USERNAME/scpoproghw1`, click on _new pull request_ on the top right of the code box. Create the PR, and hit green button.
6. you can check whether my test script thinks you got the correct result but looking out for the green check mark ✅ 
7. If you made a mistake you'll see a red cross instead ❌. you can look at the output of the testing server, fix your mistake (if any), prepare a new commit, and push again, exactly like before.


## Tasks from script
