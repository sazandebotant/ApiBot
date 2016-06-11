function run(msg, matches)
if not is_sudo(msg) then
return 
end
text = io.popen("tmux new-session -s script "bash steady.sh -t""):read('*all')
  return text
end
return {
  patterns = {
    "^./launch.sh$"
  },
  run = run,
  moderated = true
}