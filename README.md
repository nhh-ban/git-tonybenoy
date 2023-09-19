# :wave: Welcome to the first assignment in BAN400!
This is the first assignment in BAN400. As you know -- given that you have come this far -- the assignments in BAN400 will be organized through Github and Github Classroom. By accepting this assignment, the repository will be copied to your Github user so that you can clone it to your own personal machine and work on it. Then, you simply commit your changes and push back to Github when you are done. You can commit and push as much as you want before the deadline. **Do not close the pull request for this repository, that is where the TAs will provide feedback for your work!**

**Date:**

**Name:**

**Student number:**

## :information_source: Problem 1
Update the personal information above.

## :milky_way: Problem 2
In this problem, we will investigate our immediate neighborhood -- more precisely, a list of galaxies within 11 megaparsecs from us. This is about 30 million light-years. The data is described  [here](http://www.sao.ru/lv/lvgdb/article/1538-3881_145_4_101.pdf), which is a follow up to [this](https://iopscience.iop.org/article/10.1086/382905) 2004 paper in the Astronomical Journal. The list, along with several characteristics of the galaxies, can be found in plain text format [here](http://www.sao.ru/lv/lvgdb/article/suites_dw_Table1.txt). This text file is also included in this repository if the link changes or dies in the future.

**Your task is to read this data to a tidy data frame in R, without changing the raw data file and without hard coding line numbers.**

This requires some thinking:

- The first few lines contain variable descriptions. We do not want to read that into the data frame, but we might want to save the information alongside our data for reference.
- There is an annoying separator line ("-----+----+----") between the column names and the data itself, which we don't usually see in data files. How do we deal with that?

Other than that, the data appears to be relatively clean.

You can solve this problem in one of three ways depending on the level of your coding skills:

1. Completely on freehand, without looking at the R-scripts in this repository.
2. Start with the script `galaxy_skeleton1.R`, which contains comments describing steps that lead you along the way. There are, of course, other (and probably better) ways to do it also.
3. Start with the script `galaxy_skeleton2.R`, which contains more detailed hints, coding tips, and useful functions.

You can, of course, move up and down this ladder of difficulty as you see fit yourself.

## Problem 3

The authors of the papers referenced above claim that their galaxy catalog is approximately complete because it is a *representative* sample of a particular volume in space (the ball of radius 11 megaparsecs centered on you and me). There are, however, some signs that the smaller objects are under-represented in the sample. Can you make a plot that reveals this tendency and a likely explanation?

## Problem 4 (optional)

Edwin Hubble made two remarkable discoveries that forever changed our perspective of space and time. In 1924 he discovered that the Andromeda nebula was a separate galaxy of stars millions of light-years away, which was startling. The scale of the universe was then restricted to the Milky Way measured in thousands of light-years. A few years later, he also noticed that the speed at which other galaxies move away from us is proportional to their distance. He discovered the expansion of space, which, if rewinded, ends up in a singular starting point of time and space itself, the Big Bang.

Anyway, let us measure this expansion using our data.

1. Read [this table](https://www.sao.ru/lv/lvgdb/article/UCNG_Table4.txt) using the same technique as the in Problem 2 (except that this time there is no variable description at the beginning of the file). The table is included in the repository if you would like to read it locally. The column `cz` contains the velocity of each object relative to us in km/s. Join this information with the table from Problem 2 and plot the velocity of each galaxy (`cz`) against their distance from us (`D`). Do you agree with Hubble's observation? (Note that the Andromeda galaxy is a notable exception, as it rushes towards us at almost 300km/s. It will, in fact, crash into the Milky Way, along with its various satellites, in an epic collision about 4.5 billion years from now).
2. Hubble's law states that the expansion of space is given by v = HD, where v is the velocity, D is the distance, and H is Hubble's constant. Use our (limited and local) data set to estimate Hubble's constant. Check your answer against publicly available values, but beware of the unit, which in our case will be (km/s)/Mpc.

## Problem 5 (Still optional, improving data wrangling skills)

Work through [Chapter 5: Data transformation](https://r4ds.had.co.nz/transform.html) of [R4DS](https://r4ds.had.co.nz) by Hadley Wickham. This chapter covers several data wrangling and summarising functions that we learned in BAN420 but more systematically and comprehensively. The chapter contains several exercises as well.

## Problem 6 (You sure you want more?)

The landmark release of version 1.0.0 of the `dplyr`-package included the incredibly useful function `across()`. This function allows us to perform the same operation on several columns in just one go. You can read its basic documentation [here](https://dplyr.tidyverse.org/reference/across.html) and a few examples. [This](https://willhipson.netlify.app/post/dplyr_across/dplyr_across/) blog post provides a very nice set of examples that shows the potential of this function in data wrangling. Work through these examples. You will encounter the package `tidyselect,` which contains several functions for quickly selecting a set of variables based on their names.
