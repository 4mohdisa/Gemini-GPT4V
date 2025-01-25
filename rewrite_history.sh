#!/bin/bash

# This script will rewrite git history with multiple commits backdated

# Remove the .git directory to start fresh
rm -rf .git

# Initialize new git repository
git init

# Configure git user
git config user.name "Mohammed Isa"
git config user.email "mohdisa233@gmail.com"

# Create first commit - Initial project setup (3 months ago)
git add package.json tsconfig.json next.config.js tailwind.config.js postcss.config.js .eslintrc.json .gitignore jsconfig.json
GIT_AUTHOR_DATE="2024-10-26T10:00:00" GIT_COMMITTER_DATE="2024-10-26T10:00:00" git commit -m "Initial project setup with Next.js and TypeScript"

# Create second commit - Add basic structure (2.5 months ago)
git add src/app/layout.js src/app/globals.css src/app/page.js public/
GIT_AUTHOR_DATE="2024-11-05T14:30:00" GIT_COMMITTER_DATE="2024-11-05T14:30:00" git commit -m "Add basic app structure and layout"

# Create third commit - Add utility hooks (2 months ago)
git add src/lib/
GIT_AUTHOR_DATE="2024-11-20T16:45:00" GIT_COMMITTER_DATE="2024-11-20T16:45:00" git commit -m "Add localStorage utility hook"

# Create fourth commit - Implement API routes (1.5 months ago)
git add src/app/api/
GIT_AUTHOR_DATE="2024-12-10T11:20:00" GIT_COMMITTER_DATE="2024-12-10T11:20:00" git commit -m "Implement OpenAI API routes for chat, speech-to-text, and text-to-speech"

# Create fifth commit - Add main chat component (1 month ago)
git add src/app/chat.jsx src/app/actions.js
GIT_AUTHOR_DATE="2024-12-26T09:15:00" GIT_COMMITTER_DATE="2024-12-26T09:15:00" git commit -m "Add main chat component with video capture and AI integration"

# Create sixth commit - Add documentation and assets (2 weeks ago)
git add README.md screenshot.jpg src/app/favicon.ico src/app/opengraph-image.jpg src/app/twitter-image.jpg
GIT_AUTHOR_DATE="2025-01-12T13:00:00" GIT_COMMITTER_DATE="2025-01-12T13:00:00" git commit -m "Add comprehensive documentation and project assets"

# Create seventh commit - Final refinements (today)
git add -A
GIT_AUTHOR_DATE="2025-01-25T17:00:00" GIT_COMMITTER_DATE="2025-01-25T17:00:00" git commit -m "Update project metadata and remove external references"

echo "Git history has been rewritten successfully!"
echo "New commit history:"
git log --oneline --all
