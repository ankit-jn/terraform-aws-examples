groups = [
    {
        name = "Architects"           
    },
    {
        name = "Managers"                
    },
    {
        name = "Developers"
    },
    {
        name = "Testers"
    },
]

users = [
    {
        name = "Clayton.cameron",
        create_login_profile = "yes"
        groups = "Managers,Developers"
    },
    {
        name = "James.Christensen",
        # pgp_key_file = "james.christensen-pub.asc"
        create_login_profile = "yes"
        create_access_key = "yes"
        groups = "Managers,Testers"
    },
    {
        name = "Kate.Flamini",
        create_login_profile = "yes"
        create_access_key = "yes"
        force_destroy = "no"
        upload_ssh_key = "yes"
        ssh_public_key_file = "kate.flamini.pub"
        groups = "Architects,Managers,Developers"
    },
    {
        name = "Loic.Polymers",
        create_login_profile = "yes"
        create_access_key = "yes"
        groups = "Developers"
    },
]