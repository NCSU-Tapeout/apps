-- Copyright 2024 North Carolina State University. Added on: 2024-10-17
whatis("Name:        CALIBRE")
whatis("Version:     2024.3")
whatis("Category:    applications, licensed")
whatis("Keywords:    application")
whatis("URL:         https://eda.sw.siemens.com/en-US/ic/calibre-design/")
whatis("Description: Calibre Design Solutions delivers a complete IC verification and DFM optimization EDA platform that speeds designs from creation to manufacturing, addressing all sign-off requirements.")

help([[
MentorGraphics Calibre 2024.3
-------------------------------

Use the following command(s) to start:

        calibre                 Calibre
        calibredrv              Calibre DESIGNrev
        calibrewb &             Calibre WORKbench
        xcalibrate &            xCalibrate

Application(s) Maintained by ECE,
send problem reports to ecehelp@ncsu.edu
]])

--initial vars + license

--see https://blog.entek.org.uk/notes/2021/07/27/platform-detection-with-lmod.html

function file_exists(file_name)
    local file_found = io.open(file_name, "r")
    if file_found == nil then
        return false
    else
        return true
    end
end

function get_command_output(command)
    -- Run a command and return the output with whitespace stripped from the end
    return string.gsub(capture(command), '%s+$', '')
end

function detect_os()
    -- Detect the operating system
    local short_version_table = {
        Scientific = "EL",
        RedHatEnterpriseServer = "EL",
        CentOS = "EL",
        RedHatEnterprise = "EL",
        Debian = "Deb",
        Ubuntu = "Ubt"
    }

    if file_exists("/usr/bin/lsb_release") then
        os_version = get_command_output("lsb_release -r -s")
        os_distribution = get_command_output("lsb_release -i -s")

        os_fullname = os_distribution .. "-" .. os_version

        if os_distribution == "Ubuntu" then
            -- Ubuntu is unique in that the version after the dot is not a minor release number
            os_version_major = os_version
        else
            os_version_major = string.sub(os_version, string.find(os_version, '^%d+'))
        end
        os_shortname = short_version_table[os_distribution] .. "-" .. os_version_major
    else
        LmodError("No lsb_release command in /usr/bin - this version of the module has no fallback detection methods.")
    end
end

detect_os()

if os_shortname == "EL-7" then
	base = "/mnt/apps/public/COE/mg_apps/calibre2024.3/aoj_cal_2024.3_16.10/"
elseif os_shortname == "EL-8" then
	base = "/mnt/apps/public/COE/mg_apps/calibre2024.3/aok_cal_2024.3_16.10/"
else
	LmodError("RHEL7 or RHEL8 required for this software.")
end
--print (base)
setenv("MGLS_LICENSE_FILE", "1717@ece-lic-32.ece.ncsu.edu")
setenv("SALT_LICENSE_SERVER", "1717@ece-lic-32.ece.ncsu.edu")

--SETUP PATH
prepend_path("PATH", pathJoin(base, "bin"))

--application variables
setenv("CALIBRE_HOME", base)
setenv("MGC_HOME", base)  --required for calibre to appear in Cadence virtuoso

