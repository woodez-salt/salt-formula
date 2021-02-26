restart_salt_minion:
  cmd.run:
{%- if grains['kernel'] == 'Windows' %}
    - name: 'start powershell "Restart-Service -Name salt-minion"'
{%- else %}
    # fork and disown the process
    - name: |-
       exec 0>&- # close stdin
       exec 1>&- # close stdout
       exec 2>&- # close stderr
       nohup salt-call --local service.restart salt-minion &
{%- endif %}
