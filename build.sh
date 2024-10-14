if [ "$CF_PAGES_BRANCH" == "production" ]; then
  bundle update github-pages
  bundle exec jekyll serve

elif [ "$CF_PAGES_BRANCH" == "staging" ]; then
  bundle update github-pages
  bundle exec jekyll serve

else
  bundle update github-pages
  npm run dev
fi
