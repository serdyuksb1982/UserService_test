package ru.serdeveloper.skllsApi.domian;

import org.springframework.security.core.GrantedAuthority;

/**
 * @author Serdyuk S.B.
 */
public enum Role implements GrantedAuthority {
    USER, ADMIN;

    @Override
    public String getAuthority() {
        return name();
    }
}
