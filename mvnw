#!/usr/bin/env sh
# Maven Wrapper launcher. Maven is downloaded automatically on first use.
set -eu
BASE_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
DIST_URL="$(sed -n 's/^distributionUrl=//p' "$BASE_DIR/.mvn/wrapper/maven-wrapper.properties")"
MAVEN_HOME="${HOME}/.m2/wrapper/dists/student-manager-maven/apache-maven-3.9.11"
if [ ! -x "$MAVEN_HOME/bin/mvn" ]; then
  mkdir -p "$(dirname "$MAVEN_HOME")"
  ARCHIVE="$(dirname "$MAVEN_HOME")/apache-maven.zip"
  curl -fsSL "$DIST_URL" -o "$ARCHIVE"
  unzip -q -o "$ARCHIVE" -d "$(dirname "$MAVEN_HOME")"
fi
exec "$MAVEN_HOME/bin/mvn" "$@"
