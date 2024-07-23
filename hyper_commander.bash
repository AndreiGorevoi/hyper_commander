#! env/bin/env bash

print_menu() {
    echo
    echo "------------------------------
| Hyper Commander            |
| 0: Exit                    |
| 1: OS info                 |
| 2: User info               |
| 3: File and Dir operations |
| 4: Find Executables        |
------------------------------"
}

print_file_and_dir_menu() {
    echo
    echo "---------------------------------------------------
| 0 Main menu | 'up' To parent | 'name' To select |
---------------------------------------------------"
}

print_working_with_file_menu() {
    echo "---------------------------------------------------------------------
| 0 Back | 1 Delete | 2 Rename | 3 Make writable | 4 Make read-only |
---------------------------------------------------------------------"
}

working_with_file_flow() {
    print_working_with_file_menu
        read operation

    case "$operation" in
        "0")
            ;;
        "1")
            rm "$1"
            echo "$1 has been deleted."
            ;;
        "2")
            echo "Enter the new file name:"
            read new_file_name
            mv "$1" "$new_file_name"
            echo "$1 has been renamed as $new_file_name"
            ;;
        "3")
            chmod 666 "$1"
            echo "Permissions have been updated."
            ls -l "$1"
            ;;
        "4")
            chmod 664 "$1"
            echo "Permissions have been updated."
            ls -l "$1"
            ;;
        *)
            echo "Invalid input!"
            working_with_file_flow "$1"
            ;;
    esac
}

list_files_and_dirs() {
    arr=(*)
    echo "The list of files and directories:"
    for item in "${arr[@]}"; do
        if [[ -f "$item" ]]; then
            echo "F $item"
        elif [[ -d "$item" ]]; then
            echo "D $item"
        fi
    done
}

file_and_dir_flow() {
    while true; do
        list_files_and_dirs
        print_file_and_dir_menu
        read user_choice

        case "${user_choice}" in
            "0")
                return
                ;;
            "up")
                cd ..
                ;;
            *)
                if [[ -e ${user_choice} ]]; then
                    if [[ -d ${user_choice} ]]; then
                        cd "$user_choice"
                    else
                        working_with_file_flow "$user_choice"
                    fi
                else
                    echo "Invalid input!"
                fi
                ;;
        esac
        echo
    done
}

executable_flow() {
    echo "Enter an executable name:"
    read exec_name
    located=$(which "$exec_name")

    if [ -z "$located" ]; then
        echo "The executable with that name does not exist!"
    else
        echo "Located in: $located"
        echo
        echo "Enter arguments:"
        read arguments
        $exec_name "$arguments"
    fi
}

echo "Hello ${USER}!"

while true; do
    print_menu
    read command
    echo

    case "$command" in
        "0")
            echo "Farewell!"
            exit
            ;;
        "1")
            echo "$(uname -n) $(uname -o)"
            ;;
        "2")
            whoami
            ;;
        "3")
            file_and_dir_flow
            ;;
        "4")
            executable_flow
            ;;
        *)
            echo "Invalid option!"
            ;;
    esac
done
