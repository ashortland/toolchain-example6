# Generated by stubbs:add-option. Do not edit, if using stubbs.
# Created: Fri Nov 16 23:04:58 PST 2012
#
#/ usage: booking-application-server:deploy  --jboss-as-package-file <>  --jboss-as-config-package-file <>  --mysql-connector-package-file <>  --seam-booking-package-file <> 

# _rerun_options_parse_ - Parse the command arguments and set option variables.
#
#     rerun_options_parse "$@"
#
# Arguments:
#
# * the command options and their arguments
#
# Notes:
# 
# * Sets shell variables for any parsed options.
# * The "-?" help argument prints command usage and will exit 2.
# * Return 0 for successful option parse.
#
rerun_options_parse() {
    
    while [ "$#" -gt 0 ]; do
        OPT="$1"
        case "$OPT" in
            --jboss-as-package-file) rerun_option_check $# ; JBOSS_AS_PACKAGE_FILE=$2 ; shift ;;
            --jboss-as-config-package-file) rerun_option_check $# ; JBOSS_AS_CONFIG_PACKAGE_FILE=$2 ; shift ;;
            --mysql-connector-package-file) rerun_option_check $# ; MYSQL_CONNECTOR_PACKAGE_FILE=$2 ; shift ;;
            --seam-booking-package-file) rerun_option_check $# ; SEAM_BOOKING_PACKAGE_FILE=$2 ; shift ;;
            # help option
            -?)
                rerun_option_usage
                exit 2
                ;;
            # end of options, just arguments left
            *)
              break
        esac
        shift
    done

    # Set defaultable options.

    # Check required options are set
    [ -z "$JBOSS_AS_PACKAGE_FILE" ] && { echo >&2 "missing required option: --jboss-as-package-file" ; return 2 ; }
    [ -z "$JBOSS_AS_CONFIG_PACKAGE_FILE" ] && { echo >&2 "missing required option: --jboss-as-config-package-file" ; return 2 ; }
    [ -z "$MYSQL_CONNECTOR_PACKAGE_FILE" ] && { echo >&2 "missing required option: --mysql-connector-package-file" ; return 2 ; }
    [ -z "$SEAM_BOOKING_PACKAGE_FILE" ] && { echo >&2 "missing required option: --seam-booking-package-file" ; return 2 ; }
    # If option variables are declared exportable, export them.

    #
    return 0
}


# Initialize the options variables to null.
JBOSS_AS_PACKAGE_FILE=
JBOSS_AS_CONFIG_PACKAGE_FILE=
MYSQL_CONNECTOR_PACKAGE_FILE=
SEAM_BOOKING_PACKAGE_FILE=


