#!/usr/bin/env bash

#if [ "$ENV" == "production"  ];
#then
#  echo "Switching to Firebase Production environment"
#  yes | cp -rf "firebase-file/prod/google-services.json" android/app
#else
#  echo "Switching to Firebase Dev environment"
#  yes | cp -rf "firebase-file/dev/google-services.json" android/app
#fi

case "$ENV" in
    "prod")
     echo "Switching to Firebase prod environment."
     yes | cp -rf "firebase-file/prod/google-services.json" android/app
     ;;
     "stag")
    echo "Switching to Firebase stag environment."
    yes | cp -rf "firebase-file/stag/google-services.json" android/app
    ;;
     "dev")
     echo "Switching to Firebase dev environment."
     yes | cp -rf "firebase-file/dev/google-services.json" android/app
     ;;
esac
    
