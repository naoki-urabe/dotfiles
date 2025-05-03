for f in .??*; do
    ln -snfv ${PWD}/"$f" ~/
done
for f in .config/*; do
    ln -snfv ${PWD}/"$f" ~/"$f"
done