# language: fr

Fonctionnalité: Identification des utilisateurs
  En tant qu'utilisateur
  Pour accéder à toutes les fonctionnalités qui me sont octroyées
  Je dois m'identifier

  Scénario: Au lancement de l'application, je ne suis pas connecté
    Quand je suis sur la page /
    Alors je vois le texte "Vous n'êtes pas connecté(e)"

  Scénario: Au lancement de l'application, je peux accéder à la création d'un compte
    Quand je suis sur la page /
    Quand je suis le lien [Connexion]
    Alors je vois le texte "Créer un compte"

  Scénario: Au lancement de l'application, je peux créer un compte
    Quand je suis sur la page /
    Quand je suis le lien [Connexion]
    Quand je suis le lien Créer un compte
    Alors je vois le texte "Création d'un compte"

  Scénario: Création d'un compte utilisateur
    Quand je suis sur la page /
    Quand je suis le lien [Connexion]
    Quand je suis le lien Créer un compte
    Quand je saisis l'adresse jacques.marzin@free.fr et le mot de passe 51julie2
    Quand je clique sur le bouton Créer le compte
    Alors je me retrouve sur la page /
    Et je vois le texte "jacques.marzin@free.fr"
    Et je vois le texte "Bienvenue ! Votre compte a été créé."