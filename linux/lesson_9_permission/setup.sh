mkdir testdir

# Create 3 users
useradd -m -d /home/student1 -g 1001 -u 1001 -s /bin/bash student1
useradd -m -d /home/student2 -g 1001 -u 1002 -s /bin/bash student2
useradd -m -d /home/student3 -g 1003 -u 1003 -s /bin/bash student3

# Create files and dirs for student1
mkdir /home/student1/student1
touch /home/student1/student1/student1
chmod 755 /home/student1/student1
chmod 644 /home/student1/student1/student1
chown -R student1:student1 /home/student1/

# Create files and dirs for student3
mkidr /home/student2/student2/
touch /home/student2/student2/student2
chmod 755 /home/student2/student2
chmod 644 /home/student2/student2/student2
chown -R student2:student1 /home/student2/

# Create files and dirs for student3
mkidr /home/student3/student3/
touch /home/student3/student3/student3
chmod 755 /home/student3/student3
chmod 644 /home/student3/student3/student3
chown -R student3:student3 /home/student3/
