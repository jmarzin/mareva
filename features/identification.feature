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
@encours
  Scénario: Au lancement de l'application, je peux créer un compte
    Quand je suis sur la page /
    Quand je suis le lien [Connexion]
    Quand je suis le lien Créer un compte
    Alors je vois le texte "Création d'un compte"