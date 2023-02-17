# HW3
---
title: "HW 3, CS 625, Spring 2023"
output: rmarkdown::github_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

*This is the public posting of the assignment. See Canvas for the invite link to make your submission in your own repository in the class organization*

# Homework 3: Re-create Charts

**Due:** Thursday, February 16, 2023 by 11:59pm
Submitted by: "Hemant Kumar"

## Assignment

The goal of this assignment is to give you experience with multiple visualization tools by re-creating two existing charts as closely as possible. This includes colors, fonts, and any text elements. For each chart, there's an article describing the chart (most are re-makes of other charts) and an Excel data file.

Choose one chart from Part 1 and one chart from Part 2.  The two charts you re-create must use different idioms *and* must be created using different tools. *Extra credit will be given for excellent re-creations that use R or Vega-Lite.*

# Part 1: Using R

## Line chart #1

-   Original Image:-

![Originalimage](https://user-images.githubusercontent.com/31125760/219535428-ed3d2979-4f1e-4a94-bc6b-a6656ba12bbc.PNG)


-   Link to original image:-
    <https://policyviz.com/wp-content/uploads/2018/02/PolicyViz_WSJ_Remake_LineChart-1024x613.png>

-   Alternate link to original image:- ![Originalimage](https://user-images.githubusercontent.com/31125760/219535428-ed3d2979-4f1e-4a94-bc6b-a6656ba12bbc.PNG)

-   Image of Recreated chart:-

![Recreatedchart](https://user-images.githubusercontent.com/31125760/219535507-a8ae4c4b-8189-4669-8803-03391f2b18ea.png)

-   I have re-created this chart using R and the steps are below:-

-   For the code of this please see the file store in part 1 folder:
    “part1/part1.r”.

-   Note:- Please execute each line of code one by one if error
    occurs.Also install “ggplot2” if not.

1.  For my convenience, I have assigned the name “Year” to the first
    column. Also I have added this edited file to
    “part1/PolicyViz\_WSJ\_Remake”.

2.  After that I have created a new Rscript named as “part1.r”, which is
    stored in “part1” folder.

3.  Then, I have imported “ggplot” library using “library(”ggplot2”)“.

4.  Then I have imported the excel data file using
    “PolicyViz\_WSJ\_Remake &lt;-
    read\_excel(”PolicyViz\_WSJ\_Remake.xlsx”)“.

5.  Then I have plot the column “Year” on x-axis using
    “ggplot(PolicyViz\_WSJ\_Remake, aes(x= Year))”

6.  Then I write title and subtitle using this statement “ggtitle(”Out
    of Work”, subtitle = “Percent of families with at least one member
    unemployed”)”

7.  Then after I have added other columns as lines on y axis using these
    statements “geom\_line(aes(y = White),color=”Blue”,size=1.5)
    geom\_line(aes(y = Black),color = “red”,size=1.5) geom\_line(aes(y =
    Asian),color = “green”,size=1.5) geom\_line(aes(y = Hispanic),color
    = “orange”,size=1.5)”

8.  There were no stable breaks in x-axis and y-axis. So I have included
    “pretty\_break” to x-axis to display all year. Where “n” is used to
    specify desired number of breaks. I did this using
    “scale\_x\_continuous(breaks = scales::pretty\_breaks(n = 10))” that
    is used for scaling axis.

    -   Similarly, for y-axis, I have assigned breaks but here instead
        of using “pretty\_break”, I have used “breaks\_extended”, whiich
        works better with integer values.
    -   I have also assigned limits from 0 to 20 using “limits =
        c(0, 20)”.

9.  The “geom\_label” function:-

    -   Using which I have assigned labels to lines in chart. Please
        note that I have tried different “y” arguments and came with the
        mentioned one in the file to properly place the label. The “x”
        argument is same for all labels as they are aligned vertically.
    -   The “color” argument is to assign color to label text and
        “label.size” is NA for all so that geom\_label text box does not
        show border.

10. Finally, When I created the chart, there were labels automatically
    assigned to axis.

    -   So in order to remove the labels I used
        “theme(axis.title.x=element\_blank(),axis.title.y=element\_blank())”.
    -   And to make a title bold I used “theme(plot.title =
        element\_text(face =”bold”))”

-   For this chart, I think I am pretty much close to perfectly recreate
    it, with one exception, that is the background of labels is white.

### Assessment of the <tool:->

-   R is somewhat complex as compared to Tableau and excel.

-   Because we have to do coding to create charts and is time consuming.

-   But there is one thing any kind of elements can be added here with
    some line of code.

### Explain how the idiom choice is appropriate for the data and the task:-

-   In this case, we are being asked to compare unemployment rates
    within and between four different racial/ethnic groups between 2004
    and 2014

-   The idiom choice is perfect, as it is helpful in trend analysis over
    time.

# Part 2: Using Tableau

## Small Multiples Bar chart

-   original image:-

![Original Chart](https://user-images.githubusercontent.com/31125760/219537443-c441efed-ae4a-4d89-a3e0-6b8b6092724d.PNG)


-   Link to origin:-
    <https://policyviz.com/wp-content/uploads/2017/11/PolicyViz_OECDStackedColumnChartRemake.png>

-   Alternate link to original image:- ![Original Chart](https://user-images.githubusercontent.com/31125760/219537484-ba2f2158-d739-4323-a396-69aa4077ad9e.PNG)

-   Image of recreated chart:-

![Recreted Chart]![Recreated Chart](https://user-images.githubusercontent.com/31125760/219541604-2922ac16-da79-448c-bfc4-daeead49b8a1.png)

### Description:-

-   The tableau workbook is in the following directory:-
    “part2/tableau\_workbook”

-   I have re-created this chart using Tableau and the process is
    below:-

1.  First, I have imported the file into Tableau by selecting “Connect
    to Data” button at top left and then selecting Excel file and
    clicking “Open”.

2.  Now dragging the “F2” column from “Table” pane under the “Data” pane
    at left side to the “Rows” pane at the top-middle section of
    workbook.

3.  After this, dragging “Low skilled”, “Medium skilled”, “High skilled”
    and “Total” columns and placing them in the “Columns” pane.

4.  Then I have changed the name of “Total” column to “Total Trained
    Workforce” by following steps: Right click on “Total” at X-axis ->
    Edit Axis -> Changing the title from “Total” to “Total Trained
    Workforce” under “Axis Titles” section -> Click Close.

5.  Changing the color of bars of each category by right clicking
    particular category at the bottom of chart, then selecting “Select
    Marks”, then on the left pane of “Marks”,in the “Color” tag and then
    selecting particluar color.

6.  Then I have sorted the bars in descending order by just clicking the
    symbol at the middle of “Total Trained Workforce”. The symbol looks
    like 3 bars with down arrow.

### The things I was not able to recreate:-

1.  First, the x-axis labels to be shifted at top.
2.  Changing the color of labels based on particular category.

### Assessment of the <tool:->

-   Tableau is flexible in terms of creating charts and and assigning
    different marks to the chart to be able to make it visually
    appealing.

-   One can always able to create different charts using tableau with
    just drag and drop feature, that provides flexibility.

### Explain how the idiom choice is appropriate for the data and the task:-

-   The idiom choice is appropriate, because we can easily distinguished
    each category’s percentage with respect to different countries and
    also can see the total easily.

-   This choice does not create a messy details as compared to stacked
    bar chart.

# References

1.  https://www.datanovia.com/en/blog/ggplot-title-subtitle-and-caption/#:~:text=Change%20the%20font%20appearance%20(text,face%20%3D%20%22bold%22))%20.
2.  <https://www.datanovia.com/en/blog/ggplot-title-subtitle-and-caption/#>:~:text=Change%20the%20font%20appearance%20(text,face%20%3D%20%22bold%22))%20.
3.  <https://statisticsglobe.com/remove-border-of-ggplot2-geom_label-text-annotation-in-r>
4.  <https://stackoverflow.com/questions/35090883/remove-all-of-x-axis-labels-in-ggplot>
5.  <https://community.rstudio.com/t/label-geom-line-with-a-label/71035/2>
6.  <https://www.infoworld.com/article/3597935/how-to-create-ggplot-labels-in-r.html>
7.  <https://ggplot2.tidyverse.org/reference/scale_continuous.html>
8.  <https://www.tutorialspoint.com/how-to-display-0-at-y-axis-using-ggplot2-in-r>
9.  <https://cran.r-project.org/web/packages/ggbreak/vignettes/ggbreak.html>
10. <https://www.datanovia.com/en/blog/how-to-create-a-ggplot-with-multiple-lines/>


## Submission
Make sure that you have committed and pushed your local repo to GitHub.  Include "Ready to grade @Faryaneh  @saumyadabhi" in your final commit message. 

Submit the URL of your report (*not the URL of your repo*) in Canvas:
* Click on HW3 under Assignments in Canvas
* Under "Assignment Submission", click the "Write Submission" button.
* Copy/paste the URL of your `report.md` file into the edit box (should be something like https<nolink>://github.com/odu-cs625-datavis/fall22-hw3-*username*/blob/master/report.md)
* Make sure to "Submit" your assignment.

