#!/bin/bash
cd /home/kavia/workspace/code-generation/kavia-feature-showcase-presentation-fcc0607b/kavia_slidedeck_frontend
npx run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
  exit 1
fi

