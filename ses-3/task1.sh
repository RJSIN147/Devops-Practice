echo $(date)
echo $(hostname)
echo $(whoami)
df -h

output_dir="task1_output"
output_file="$output_dir/process.log"
mkdir "$output_dir"
touch "$output_file"
ps > "$output_file"

read -p "Enter your name: " name
read -p "Enter your roll number: " roll_no
read -p "Enter your comment: " comment

echo "My name is $name, roll is $roll_no and comment is $comment."
