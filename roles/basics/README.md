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
| `basics_terminator_default_font_family` | `FiraCode Nerd Font Propo` | Base font family applied to the default and Dracula profiles. |
| `basics_terminator_default_font_variant` | `Medium` | Optional weight/variant appended to the default profile font string. Use `null` to omit. |
| `basics_terminator_default_font_size` | `14` | Font size applied when composing profile font declarations. |
| `basics_terminator_default_profile_name` | `null` | When set, renders `default_profile` inside the global Terminator configuration. |
| `basics_terminator_global_config_comments` | `['  # Dracula Globals']` | Comment lines inserted after the optional `default_profile` declaration. |
| `basics_terminator_global_config` | see defaults | Key/value pairs rendered in the `[global_config]` section. |
| `basics_terminator_profiles` | see defaults | Map of profile names to their key/value settings. |
| `basics_terminator_layouts` | see defaults | Map of layout names to child terminal and window definitions. |

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
        basics_terminator_default_font_family: "JetBrainsMono Nerd Font"
        basics_terminator_default_font_variant: null
        basics_terminator_default_font_size: 13
```

License
-------

MIT-0

Author Information
------------------

Maintained by the ansible-home project.
