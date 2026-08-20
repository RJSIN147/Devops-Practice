echo $(date)
echo $(hostname)
echo $(whoami)
df -h
ps > process.log

read -p "Enter your name: " name
read -p "Enter your roll number: " roll_no
read -p "Enter your comment: " comment

echo "My name is $name, roll is $roll_no and comment is $comment."
