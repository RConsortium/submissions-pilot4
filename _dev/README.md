## Development Directory

Use this directory to store files used to create various assets for the site.

## Recording Terminal Sessions

This repository uses the [vhs](https://github.com/charmbracelet/vhs) CLI recorder utility to record the screencast video and GIF files embedded in portions of the web site. Refer to the project's GitHub repository for complete documentation.

Each screencast has an associated `.vhs` text file containing the necessary commands and logistical steps to create the screencast. To perform the actual recording, navigate to the `_dev/vhs_source` directory in your clone of the repository and run `vhs {name_of_file}.vhs`. For example, to record the screencast for the Hellow World Docker example run `vhs docker_hello.tape`.

Note that the produced `.mp4` and `.gif` files are not tracked for version control. When you are satisfied with the content, move them to the `assets/img` directory.
