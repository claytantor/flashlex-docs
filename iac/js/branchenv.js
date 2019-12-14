#!/usr/bin/env node

let env = (process.env.CIRCLE_BRANCH === 'master')
    ? 'prd'
    : 'dev';

console.log(env);