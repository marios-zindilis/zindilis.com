<!-- -
Title: Clone a remote repository with GitPython
Description: How to clone a remote repository using GitPython
First Published: 2015-02-08
- -->

<ol class="breadcrumb" itemprop="breadcrumb">
	<li><a href="/">Home</a></li>
	<li><a href="/docs/">Docs</a></li>
	<li><a href="/docs/gitpython-clone-remote-repository.html">Clone a remote repository with GitPython</a></li>
</ol>

Clone a remote repository with GitPython
========================================

Example code:

    import git
    
    remote = 'https://github.com/gitpython-developers/GitPython.git'
    local = '/home/marios/Tests/gitpython'
    
    git.Repo.clone_from(remote, local)

