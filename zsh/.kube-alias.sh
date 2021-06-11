#!/bin/bash

# ----- Kubectl -----
alias k='kubectl'

alias k='kubectl '
alias ksec="kubectl -n tc-nextgen apply -f "
alias kpods="f(){kubectl get pods -o wide}; f "
alias kscale='f(){kubectl scale deployment/$1 --replicas=$2}; f'
alias klog='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f}; f '

# Environment Aliases
## DEV
alias kdxdep='f(){kubectl get deployments --context devx}; f'
alias kddep='f(){kubectl get deployments --context dev}; f'
alias kdedit='f(){kubectl edit $1 --context dev}; f'
alias kdget='f(){kubectl get $1 --context dev}; f'
alias kdlog='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context dev}; f'
alias kdpods='f(){kubectl get pods -o wide --context dev}; f'
alias kdscale='f(){kubectl scale deployment/$1 --replicas=$2 --context dev}; f'
## TEST
alias ktdep='f(){kubectl get deployments --context test}; f'
alias ktedit='f(){kubectl edit $1 --context test}; f'
alias ktget='f(){kubectl get $1 --context test}; f'
alias ktlog='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context test}; f '
alias ktpods='f(){kubectl get pods -o wide --context test}; f'
alias ktscale='f(){kubectl scale deployment/$1 --replicas=$2 --context test}; f'
## TRAIN
alias ktrdep='f(){kubectl get deployments --context train}; f'
alias ktredit='f(){kubectl edit $1 --context train}; f'
alias ktrget='f(){kubectl get $1 --context train}; f'
alias ktrlog='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context train}; f'
alias ktrpods='f(){kubectl get pods -o wide --context train}; f'
alias ktrscale='f(){kubectl scale deployment/$1 --replicas=$2 --context train}; f'
## PROD
alias kpdep='f(){kubectl get deployments --context prod}; f'
alias kpedit='f(){kubectl edit $1 --context prod}; f'
alias kpget='f(){kubectl get $1 --context prod}; f'
alias kplog='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context prod}; f'
alias kppods='f(){kubectl get pods -o wide --context prod}; f'
alias kpscale='f(){kubectl scale deployment/$1 --replicas=$2 --context prod}; f'

# ----- Application aliases -----
## Auto-Auth-API
alias aa='tng-intake-auto-auth-api'
alias aatl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context test}; f tng-intake-auto-auth-api'
alias aadl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context dev}; f tng-intake-auto-auth-api'
alias aatrl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context train}; f tng-intake-auto-auth-api'
alias aapl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context prod}; f tng-intake-auto-auth-api'
alias aads='f(){kubectl scale deployment/$1 --replicas=$2 --context dev}; f tng-intake-auto-auth-api'
alias aats='f(){kubectl scale deployment/$1 --replicas=$2 --context test}; f tng-intake-auto-auth-api'
alias aatrs='f(){kubectl scale deployment/$1 --replicas=$2 --context train}; f tng-intake-auto-auth-api'
alias aaps='f(){kubectl scale deployment/$1 --replicas=$2 --context prod}; f tng-intake-auto-auth-api'
## Public-Auth
alias pa='tng-public-auth'
alias patl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context test}; f tng-public-auth'
alias padl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context dev}; f tng-public-auth'
alias patrl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context train}; f tng-public-auth'
alias papl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context prod}; f tng-public-auth'
alias pads='f(){kubectl scale deployment/$1 --replicas=$2 --context dev}; f tng-public-auth'
alias pats='f(){kubectl scale deployment/$1 --replicas=$2 --context test}; f tng-public-auth'
alias patrs='f(){kubectl scale deployment/$1 --replicas=$2 --context train}; f tng-public-auth'
alias paps='f(){kubectl scale deployment/$1 --replicas=$2 --context prod}; f tng-public-auth'
## Conversion-Utility
alias cu='tng-conversion-utility'
alias cutl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context test}; f tng-conversion-utility'
alias cudl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context dev}; f tng-conversion-utility'
alias cutrl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context train}; f tng-conversion-utility'
alias cupl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context prod}; f tng-conversion-utility'
alias cuds='f(){kubectl scale deployment/$1 --replicas=$2 --context dev}; f tng-conversion-utility'
alias cuts='f(){kubectl scale deployment/$1 --replicas=$2 --context test}; f tng-conversion-utility'
alias cutrs='f(){kubectl scale deployment/$1 --replicas=$2 --context train}; f tng-conversion-utility'
alias cups='f(){kubectl scale deployment/$1 --replicas=$2 --context prod}; f tng-conversion-utility'
## Auth-Num-Gen
alias an='tng-intake-auth-num-gen'
alias antl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context test}; f tng-intake-auth-num-gen'
alias andl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context dev}; f tng-intake-auth-num-gen'
alias antrl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context train}; f tng-intake-auth-num-gen'
alias anpl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context prod}; f tng-intake-auth-num-gen'
## Product-Eligibility-API
alias pe='tng-product-eligibility-api'
alias petl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context test}; f tng-product-eligibility-api'
alias pedl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context dev}; f tng-product-eligibility-api'
alias petrl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context train}; f tng-product-eligibility-api'
alias pepl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context prod}; f tng-product-eligibility-api'
## Service-Type-API
alias sttl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context test}; f tng-service-type-api'
alias stdl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context dev}; f tng-service-type-api'
alias sttrl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context train}; f tng-service-type-api'
alias stpl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context prod}; f tng-service-type-api'
## TNG-External-Consumer
alias ectl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context test}; f tng-external-consumer'
alias ecdl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context dev}; f tng-external-consumer'
alias ectrl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context train}; f tng-external-consumer'
alias ecpl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context prod}; f tng-external-consumer'
## TNG-Workitem-Listener
alias wltl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context test}; f tng-workitem-listener'
alias wldl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context dev}; f tng-workitem-listener'
alias wltrl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context train}; f tng-workitem-listener'
alias wlpl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context prod}; f tng-workitem-listener'
## TNG-Intake-Auth-Consumer
alias actl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context test}; f tng-intake-auth-consumer'
alias acdl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context dev}; f tng-intake-auth-consumer'
alias actrl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context train}; f tng-intake-auth-consumer'
alias acpl='f(){kubectl logs --all-containers --ignore-errors --max-log-requests 50 -l app=$@ -f --context prod}; f tng-intake-auth-consumer'
