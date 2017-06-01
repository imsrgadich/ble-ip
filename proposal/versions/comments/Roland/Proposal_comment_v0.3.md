I've briefly read your draft of the thesis proposal. It's a good start but we'll need to work a little bit more on it. Some specific points:

- <strike>Is your thesis a Survey of fingerprinting methods or is it to develop an actual localization system? The title suggests that the thesis is about the survey.</strike>
- It appears that you've been thinking too much about the survey when writing the proposal. Think about what you're going to do in the thesis. The survey might be an outcome of the thesis but it is not the thesis itself.
- Abbreviations must not be used without defining them (answer to one of the questions in the documents). Also, there is always a space between a word and parentheses, e.g. "received signal strength (RSS)" not "received signal strength(RSS)".
- <strike>You don't need an abstract for the proposal.</strike>
- <strike>The chapter "Setup" should be part of the introduction.</strike>
- <strike>**The goals of the thesis should follow directly the introduction, then comes related work (you first have to define the goals before you can discuss what work is related to your work), and finally preliminary results.**</strike>
- The goals are not formulated well enough; e.g. in the first goal, you state that you use 'machine learning' -- that's not part of the goal but your approach, i.e. it should go to the Methods and Materials section. Goals only state what the objectives are of your work, agnostic to how you are going to solve it. For the second goal, it's not clear whether you're going to develop a positioning algorithm or a smartphone application for that. These are two completely different things (developing the method and algorithm in Matlab vs. a fully functional Android (or iOS) app). If you're planning to do both, then you'll need to formulate separate goals for that, i.e. 'Develop an indoor positioning algorithm'; 'Implement the developed method in a Smartphone App'.
- I'm pretty sure that there is not enough time to do no. 3 (Other tasks); I would suggest to remove these.
- 'Work done' -- Either make a full 'Preliminary Results' section out of it or remove it.
- It still needs lots of polishing both structure and language wise
- Kalman filters are not sequential Monte Carlo methods

Remember: It should not be your thesis and not a survey either, but it should clearly define what the **problem to be solved**  and the **goals of your thesis**  are.

----------------------------


- Include a background section where you highlight the problem and also
include a brief survey of the state of the art. It will help you more
clearly formulate the problem and relate it to the literature. You'll
also be able to re-use this when writing the thesis.

- Clearly state the goals of your thesis and what they include, for example

   1. Develop a method for automatic node location identification
      (Describe what this entails)

   2. Develop an algorithm for Bluetooth low energy indoor positioning
      (Describe again)

- Methods and Materials / Approach: How are you planning to attack the
problems? What can you use, what not?

- Plan: Split the goals into activities that help you reach those goals.
You could also introduce milestones here, e.g. when you expect to have
finished certain tasks. Gantt charts help you track progress.

- Preliminary results: Here you could add some things that you already
know that work (or don't) and help you highlight the problems and issues.

A good plan will help you to see the task more clearly.