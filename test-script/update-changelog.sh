sed -i '' -e "s/## \[Unreleased\]/## [2.4.1] - $(date +"%Y-%m-%d")/g" CHANGELOG.md && sed -i '' '1 a\
\
## [Unreleased]
' CHANGELOG.md