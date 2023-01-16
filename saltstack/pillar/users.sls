users:

  nickolit:                     # login
    fullname: Nickolos
    uid: 1010                   # group ID
    shell: /bin/sh
    password:                   # shadow password
    groups:
      - sudo
      - adm
      - dip
      - plugdev
    ssh_auth:                   # add ssh keys
      - ssh-rsa~~~~~            # 1st ssh key
      - ssh-rsa~~~~~            # 2nd ssh key ...
    user_files:
      enabled: true