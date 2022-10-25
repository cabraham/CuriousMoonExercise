<a name="readme-top"></a>

<br />
<div align="center">
  <h3 align="center">Curious Moon Exercise</h3>

  <p align="center">
    My exercise files as I went through Rob Conery's <a href="https://bigmachine.io/products/a-curious-moon/">Curious Moon</a>
    <br />
    <a href="https://bigmachine.io/products/a-curious-moon/"><strong>Get the book »</strong></a>
  </p>
</div>


<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#notes">Notes</a></li>
      </ul>
    </li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

Rob Conery's book "A Curious Moon" is something I've been meaning to go through for a long while.  He's a big fan of PostgreSQL (postgres) and wrote this book as a story-driven introduction to this database technology.  I haven't used PostgreSQL professionally at all... I've heard good things about it, but I don't think I'm going to be blown away by it.  That being said, I want to read through the book and do the exercises.

Here's why:
* Reading is fun.  Science is fun.  Programming is fun.  :smile:
* This book is based on real events and findings by NASA.  The data is real!
* This is as close to a real-world introduction to data-science as you can get.  
* I rarely venture out and actually try different technologies due to time constraints.  This will give me a path to follow and learn something new.


<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- GETTING STARTED -->
## Getting Started

I primarily use my Windows 10 PC to do personal development.  The book emphasizes the use of Mac and bash scripts and scoffs at those who use Windows :smile:.  I don't plan on buying a Mac.  

* Ensure you have Windows Terminal installed
* Ensure you have git-scm installed w/ Git-Bash [Instructions](https://linuxhint.com/add-git-bash-windows-terminal/)
* Install postgres


### Notes

I'll fill this out as I stumble through making things work on Windows 10 :smile:

* The story instructs us to get familiar w/ the **psql** executable, which is installed with Postgres.  If you followed the default installation, it will be in C:\Program Files\PostgreSQL\15\bin.  Add this to your PATH environment variable
* The screenshots show execution of commands like **createdb** and **dropdb**.  These didn't work for me... perhaps they're aliased a different way. I had to use **CREATE DATABASE** and **DROP DATABASE**
* To connect to my enceladus database, the command was as follows, where 'postgres' is my username.
```
psql -U postgres -d enceladus
```
* To enable passwordless authentication, modify **pg_hba.conf**.  Change all instances of **scram-sha-256** to **trust**.  
  * THIS IS FOR LOCAL ONLY.  DON'T EVER DO THIS IN PRODUCTION!!!
  
<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ROADMAP -->
## Roadmap

- [ ] Transit
- [ ] In Orbit
- [ ] Flybys
- [ ] A Bent Field
- [ ] Sniff The Sky
- [ ] Ring Dust
- [ ] A Tight Ship
- [ ] Gravity Assist
- [ ] Under the Ice
- [ ] Glide Path


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* [A Curious Moon](https://bigmachine.io/products/a-curious-moon/)
* [PostgreSQL](https://www.postgresql.org/)
* [Windows Terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701)
* [Makefile Tutorial](https://makefiletutorial.com/)
* [Git SCM](https://git-scm.com/downloads)
* [Markdown Guide](https://www.markdownguide.org/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

