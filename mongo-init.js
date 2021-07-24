db.createUser(
        {
            user: "rafael",
            pwd: "123456",
            roles: [
                {
                    role: "readWrite",
                    db: "lab-triathlon"
                }
            ]
        }
);
