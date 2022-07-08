# Ansible

## Task: create multiple directories using a loop

```
- name: Creating directories
  file:
    path: "{{ item }}"
    state: directory
  with_items:
    - "first-dir"
    - "second-dir"
    - "third dir"
```

