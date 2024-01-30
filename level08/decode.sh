encodedSecret="3d3d516343746d4d6d6c315669563362"
echo "Original: $encodedSecret"

binary=$(echo -n "$encodedSecret" | xxd -r -p)
echo "Binary: $binary"

revert=$(echo -n "$binary" | rev)
echo "Revert: $revert"

decoded=$(echo -n "$revert" | base64 -d)
echo "Decode: $decoded"
