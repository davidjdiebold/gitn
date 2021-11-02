# safeguard to avoid installing twice
if grep -q gitn ~/.bash_profile; then
  echo "Gitn is already setup."
  exit 1
fi

echo "Setting-up gitn..."

# Save real git path inside environment variable
echo "" >> ~/.bash_profile
echo "# gitn" >> ~/.bash_profile
echo "export GIT_PATH=$(which git)" >> ~/.bash_profile

# Add a git alias
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
echo "alias git=$SCRIPT_DIR/gitn" >> ~/.bash_profile

echo "ready for action !"
