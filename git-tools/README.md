# Git

| Name               | Command                                                      |
| ------------------ | :----------------------------------------------------------- |
| Initialize  git    | $ git init                                                   |
| Config  username   | $ git config  –global user.name “us-upal”                    |
| Config email       | $ git config  –global user.email u.saha.upal@gmail.com       |
| Remote repo  check | $ git remote  -v                                             |
| Adding main  repo  | $ git remote  add main “main repo link” [if your repo is forked]  $ git remote  add origin “main repo link” |
| Commit             | $ git add .  $ git commit -m “commit message”                |
| branch             | For creating branch need to checkout master first  $ git checkout -b branchName [create and checkout branch]  $ git branch  branchName  $ git branch -a    [ branch list  ]  $ git  checkout master |
| Log                | $ git log  $ git  log --oneline [all  logs in categorical list] |
| Merge              | If merge conflict then correct the conflict in VS code and  commit it manually.  $ git merge feature1 feature2  feature3 |
| Status check       | $ git status                                                 |
| push               | $ git push -f  origin master(or branchName)  $git push -f  main master(or branchName) |
| pull               | $ git pull  origin master  $ git pull  main master           |
|                    |                                                              |

```bash
1. golden rule of version control: only combine changes from the same topic in a signle topic
2. perfect commit msg: 
	a-> subject: concise summary of what happended.
	b-> body: more detail explanation. Ques must be: i) What is now different than before? ii) What's the reason for the change? iii) is there anything to watch for/ anything particularly remarkable?
3. fast-forward merge: both branch share the same history
4. warning notice: do not use REBASE on commits that you've already pushed/shared on a remote repository | instead use it for cleaning up your local commit his before merging it into shared team branch.
=========================================================*
git-commands:
1. git diff index.html
2. git add -p index.html # -p; patch level; which patch level to include and what not.| ask the ques of different(patch) level of change
3. git commit [opens vim to write commit msg ]
4. git log [shows the all commits ]
5. git checkout -b test [create a new branch and checkout to the branch]
6. git push --set-upstream origin test/master/any branch u want. [push to the forked repo]
7. git merge --abort | git rebase --abort ; undo a conflict and start over.
8. 
```

