#!/usr/bin/env bash

kops export kubecfg --state @kubecfgState@ --name @kubecfgName@

kubectl set image deployment/ap-irs-deployment ap-irs=@dockerTagBase@/ap-irs:@version@