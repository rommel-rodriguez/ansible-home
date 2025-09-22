Basics role
===========

Installs common desktop tooling and configures the Terminator terminal emulator with a developer-focused profile and curated fonts.

Requirements
------------

* Debian or Ubuntu based system with `apt`.
* Internet access to download font archives from upstream projects and the Nerd Fonts project.

Role Variables
--------------

| Variable | Default | Description |
| --- | --- | --- |
| `basics_packages` | `['terminator', 'p7zip-full', 'redshift', 'flameshot', 'fontconfig', 'unzip']` | Packages installed with `apt`. |
| `basics_manage_terminator` | `true` | Toggle Terminator configuration and font installation. |
| `basics_terminator_users` | `['{{ ansible_user_id }}']` | List of usernames that receive Terminator configuration. Each account is assumed to have a matching primary group and home directory at `/home/<username>`. |
| `basics_terminator_font_install_dir` | `/usr/local/share/fonts` | Directory where downloaded fonts are installed. |
| `basics_terminator_font_archives` | see defaults | Font archives (original and Nerd Font versions) that are downloaded and extracted. |
| `basics_terminator_default_font` | `Hack Nerd Font Mono` | Preferred Terminator font family. |
| `basics_terminator_default_font_size` | `12` | Default font size for the `dev` profile. |
| `basics_terminator_profile_name` | `dev` | Name of the Terminator profile created by the role. |
| `basics_terminator_layout_name` | `dev` | Name of the layout bound to the default profile. |
| `basics_terminator_profile_settings` | see defaults | Key/value settings rendered inside the profile definition. |

Dependencies
------------

This role has no dependencies on external roles.

Example Playbook
----------------

```yaml
- hosts: workstation
  roles:
    - role: basics
      vars:
        basics_terminator_default_font_size: 14
```

License
-------

MIT-0

Author Information
------------------

Maintained by the ansible-home project.
