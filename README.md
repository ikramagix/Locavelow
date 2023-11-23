# README

## 📢 Devise :

1. Vous récupérez avec un pull (suivre instructions sur Discord), vous faîtes un `rails db:migrate` qui implémentera Devise.
2. La page d'accueil a été configuré sur `bicycles#index`. En lançant le serveur, vous devriez tomber dessus.
3. Une navbar a été implémentée, vous avez deux options à l'arrivée : `Sign up` (s'inscrire) ou `Sign in` (se connecter). 
4. Réinitialisation de mot de passe depuis la page `Edit email / password` : fonctionne correctement.
5. Réinitialisation de mot de passe avec email : l'email en local apparaitra dans votre terminal avec ce format : 

<br>
>Delivered mail 655f28c7d4519_6fdf3cf027040@LAPTOP-XYZ;mail (33.5ms)
>Date: Thu, 23 Nov 2023 11:26:15 +0100
>From: please-change-me-at-config-initializers-devise@example.com
>Reply-To: please-change-me-at-config-initializers-devise@example.com
>To: bennett@spinka.example
>Message-ID: 655f28c7d4519_6fdf3cf027040@LAPTOP-XYZ.mail
>Subject: Reset password instructions
>Mime-Version: 1.0
>Content-Type: text/html;
> charset=UTF-8
>Content-Transfer-Encoding: 7bit

> Hello bennett@spinka.example!

>Someone has requested a link to change your password. You can do this through the link below.
> a href="http://localhost:3000/users/password/edit?reset_password_token=eXeMpLeBlAbLA">Change my password

>If you didn't request this, please ignore this email.
>Your password won't change until you access the link above and create a new one.

>Redirected to http://127.0.0.1:3000/users/sign_in
>Completed 303 See Other in 280ms (ActiveRecord: 7.9ms | Allocations: 46222)

<br>

Le lien est utilisable et le changement de mot de passe fonctionne aussi comme ça.

6. NE FONCTIONNE PAS : Fermeture du compte : Depuis la page `Edit email / password`, les relations avec les reviews empêchent le user to supprimer son compte quand il clique sur `Cancel my account` en bas.

<h4>Autres informations </h4>

Grâce à Devise, on peut utiliser les helpers `user_signed_in?` et `current_user` dans les vues et contrôleurs sans aucune configuration supplémentaire. 

Je les ai utilisé dans la navbar très basique que j'ai implementé (pour qu'on puisse au minimum se déconnecter par exemple).

Pour les fronteux : très utile par exemple pour restreindre l'accès ou vérifier que l'utilisateur connecté est bien le posteur de l'annonce etc... dans vos views.

J'ai défini notre root_path comme étant la liste des vélos (pour l'instant) parce que sinon, vous ne pouvez pas tester Devise. 

<hr>

## Introduction
Bienvenue dans ce repository, ce projet s'intitule Locavelow et a pour ambition de devenir une marketplace de location de vélos entre particuliers.

## Prérequis
- Version de Ruby : 3.2.2
- Base de données : PostgreSQL

## Configuration de la BDD :

Assurez-vous d'avoir PostgreSQL installé sur votre machine.

Créez la base de données et exécutez les migrations :

`rails db:create`
`rails db:migrate`

(Indisponible pour l'instant) Alimenter la base de données avec des données initiales :

`rails db:seed`

<hr>

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version : 3.2

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
