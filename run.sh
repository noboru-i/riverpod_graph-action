dart pub global activate -sgit https://github.com/rrousselGit/riverpod.git --git-path packages/riverpod_graph
dart pub global run riverpod_graph:riverpod_graph $GITHUB_WORKSPACE > raw_output.md
cat raw_output.md

echo "\`\`\`mermaid" > riverpod_graph.md
sed -e '1,1d' raw_output.md >> riverpod_graph.md
echo "\`\`\`" >> riverpod_graph.md

rm raw_output.md
