# Readme
This is the template for a standard data analysis.
Please give an overview what you do in this project and how to navigate it.

## Git integration
If you want to use git with your project (you should!), please do the following steps (replace `<name of your repository>` with the actual name):

1.  Go to your git repository provider (github/gitlab) and create a new repository
2.  DON'T check 'Add a README file'
3.  Go to the Terminal within RStudio and type the following commands (for the URL, e.g. https://github.com):

```bash
git init
git branch -M main
git remote add origin <URL of your github/gitlab instance>/<name of your repository>.git
```

4.  Restart RStudio
5.  Select the files you want to commit in the git pane, click 'commit', in the pop-up write a commit message and click 'commit'
6.  In the terminal, execute the following command:

```bash
git push -u origin main
```

7.  For the following commits, you can use the 'push' button in the git pane

Please note that the following directories and files are not tracked by git by default (but you can change it in the .gitignore file):

-   01_Data
-   all 02_Results folders
-   all 03_Figures folders
-   all 04_Tables folders
-   03_Manuscript/02_Final_figures
-   04_Presentation
-   all html files

For more information about the integration of git and RStudio, check out https://happygitwithr.com.
