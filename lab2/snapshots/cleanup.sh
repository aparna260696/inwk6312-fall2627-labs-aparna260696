#!/bin/bash

for f in baseline/configs/*.cfg; do
    sed -i '/next-hop-self/d' "$f"
done

for f in baseline/configs/*.cfg; do
    sed -i '/^ip host/d' "$f"
done

for f in baseline/configs/*.cfg; do
    sed -i '/mac-address/d' "$f"
done
