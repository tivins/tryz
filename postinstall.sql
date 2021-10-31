use nel;

-- user account and password
INSERT INTO `user` VALUES (
    2,                                          -- UId
    'testuserb',                                -- Login
    'Offline',                                  -- State
    '',                                         -- Privilege
    '',                                         -- ExtendedPrivilege
    0,                                          -- GMId
    ENCRYPT('testuserb','$6$YQFNKpCy6fwvBthq$') -- Password
);
-- give access to domain
INSERT INTO `permission` VALUES (
    2,                                          -- PermissionId
    2,                                          -- UId
    1,                                          -- DomainId !
    -1,                                         -- ShardId
    'OPEN'                                      -- AccessPrivilege (*OPEN, DEV, RESTRICTED)
);