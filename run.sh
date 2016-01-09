# vagrant setting
vagrant up
echo "192.168.33.11" > hosts

# ansible test
vagrant ssh-config --host 192.168.33.11 >> ~/.ssh/config
ansible -i hosts 192.168.33.11 -m ping

# check
# ansible-playbook -i hosts main.yml --syntax-check
# ansible-playbook -i hosts main.yml --list-tasks
# ansible-playbook -i hosts main.yml --check

# execute
ansible-playbook -i hosts main.yml
