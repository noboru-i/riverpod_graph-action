dart pub global activate -sgit https://github.com/rrousselGit/riverpod.git --git-path packages/riverpod_graph
dart pub global run riverpod_graph:riverpod_graph $GITHUB_WORKSPACE > raw_output.md

echo "\`\`\`mermaid" > graph.md
sed -e '1,1d' raw_output.md >> graph.md
echo "\`\`\`" >> graph.md

rm raw_output.md
