<div id="header" align="center">

<img width="762" alt="Roe'd To Aid Logo" src="https://user-images.githubusercontent.com/90080658/194402269-e1f4153d-6b9f-43d1-b1c0-897d91077689.jpg">
</div>

<h1 align="center"> Welcome to KitchenSync+</h1>
<h2 align="center">Helping you synchronize meal planning </h2>



## Table of Contents

- [Project Overview](#project-overview)
- [Learning Goals](#learning-goals)
- [Planning Documents](#planning-documents)
- [Illustrations](#illustrations)
- [Technologies and Tools](#technologies-and-tools)
- [Roadmap](#roadmap)
- [Setup](#setup)
- [Contributors](#contributors)

## Project Overview

(Want to hire the devs that worked on this project? Click [this link](#contributors) to jump to our project contributors!)

This repo is the Front End part of a project built by students at [Turing School of Software and Design](https://turing.edu/). You can find the Back End repo [HERE](https://github.com/Roe-dToAid/roed_to_aid_be) and see set-up instructions below. The project itself is an original web app designed by combined Front End and Back End teams and its purpose is to help individuals seeking information on abortions in their state and help with identifying misinformation sites.

Visit our Front End Site!
- [Roe'd To Aid](https://roed-to-aid.herokuapp.com/)

Our Back End is hosted here and requires an API key to access (we are not giving any API keys out at this time):
- [Roe'd To Aid API](https://roed-to-aide-be.herokuapp.com/)

To help with the design, we purchased an illustration assets pack from Dribbble so it would have a consistent look and feel. It was also important to us as a team to utilize diverse and inclusive imagery. We used FIGMA to construct our wireframes and imported GoogleFonts of different styles, sizes, and weights for our fonts.

We chose React as our framework and took full advantage of React's modular nature by creating dynamically rendered components that helped keep the app small yet provided the user with a pleasant experience. We utilized React Router to route seamlessly to each view.

We decided to write in JavaScript in conjunction with the React Prop Types Library in order to validate the data type of props coming into a component, allowing for more specific, helpful error messages.

We utilized NPM as our package manager with Webpack as a module bundler. Material UI components were applied for the icons on the clinic cards and filter buttons on the Find a Clinic view. Using shared classes, SASS variables, and nested styling, we efficiently wrote the SCSS throughout the app. 

We implemented Apollo Client as a state management library that simplified the management of remote and local data with GraphQL. Apollo Client handles the request cycle from start to finish, including tracking lifecycle states and streamlining the construction of our loading and error components.

End-to-end testing with Cypress was applied to ensure that our application behaves as expected and that the flow of data is maintained for various user tasks and processes.

We adopted continuous integration (CI) through CircleCI to integrate changes made by all team members into a central, shared version frequently deployed (usually multiple times per day) on Heroku.

Finally, we incorporated Agile scrum ceremonies for our project management, including morning standups, weekly retros, and a shared organization project board used for refinement and planning.

## Learning Goals

- Continue to gain competency with current technologies and skills aquired at Turing.
- Create a Service Oriented Architecture application
- 
- 
- More in depth understanding and exploration of team dynamics, communication, and project process.

## Planning Documents


[Wireframes]()

[Project Spec](https://backend.turing.edu/module3/projects/consultancy/)

## Illustrations

[Deployed Link](https://roed-to-aid.herokuapp.com/)

[Functionality Video](https://vimeo.com/747448767/4632ceb6ae)

## Technologies and Tools

<img width="737" alt="Screen Shot 2022-10-05 at 7 31 33 PM" src="https://user-images.githubusercontent.com/98505112/194194103-e35a23e6-709f-431f-b3c1-17d1ed802495.png">

## Roadmap

Future features could include:

- 
- 
- 

## Setup

1. Fork and clone this repository.
2. Cd into the root directory and run `npm i`.
3. To run this server, run `npm start` in the terminal and React will start the development server. To stop the local server, use command `Control + C`.
4. Open a browser window and go to http://localhost:3000 to view the website.
5. To run the testing suite, run `npm run cypress` and Cypress will open up.

Pull down the [Back-End repo](https://github.com/KitchenSyncPlus/KSP_be). Set up instructions are in that repository's README.
Do not nest this inside your front-end repository.


## Contributors

<table>
  <tr>
    <td><img src="https://avatars.githubusercontent.com/u/108506841?v=4"></td>
    <td><img src="https://avatars.githubusercontent.com/u/35391349?v=4"></td>
    <td><img src="https://avatars.githubusercontent.com/u/106942456?v=4"></td>
    <td><img src="https://avatars.githubusercontent.com/u/99838997?v=4"></td>
    <td><img src="https://avatars.githubusercontent.com/u/98673086?v=4"></td>
    <td><img src="https://avatars.githubusercontent.com/u/36166420?v=4"></td>
    
  </tr>
  <tr>
    <td>Mackenzie Leng</td>
    <td>Michael Marchand</td>
    <td>Astrid Hecht</td>
    <td>Sage Skaff</td>
    <td>Lucas Cowell</td>
    <td>Kevin Ta</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/kenzjoy">GitHub</a><br>
      <a href="https://www.linkedin.com/in/kenzjoydev/">LinkedIn</a>
    </td>
    <td>
      <a href="https://github.com/MarchandMD">GitHub</a><br>
      <a href="https://www.linkedin.com/in/mmarchand1/">LinkedIn</a>
    </td>
    <td>
      <a href="https://github.com/Astrid-Hecht">GitHub</a><br>
      <a href="https://www.linkedin.com/in/astrid-hecht/">LinkedIn</a>
    </td>
    <td>
      <a href="https://github.com/sage-skaff">GitHub</a><br>
      <a href="https://www.linkedin.com/in/sageskaff/">LinkedIn</a>
    </td>
     <td>
      <a href="https://github.com/sage-skaff">GitHub</a><br>
      <a href="https://www.linkedin.com/in/sageskaff/">LinkedIn</a>
    </td>
     <td>
      <a href="https://github.com/lcole37">GitHub</a><br>
      <a href="https://www.linkedin.com/in/lucas-colwell-b3a753179/">LinkedIn</a>
    </td>
  </tr>
</table>



### Instructor/Project Manager
Meg Stang