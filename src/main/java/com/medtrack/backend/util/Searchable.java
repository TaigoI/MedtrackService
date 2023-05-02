package com.medtrack.backend.util;

import org.apache.commons.lang3.StringUtils;

public class Searchable {

    public static String toLike(String str) {
        return String.format("%%%s%%", StringUtils
                .stripAccents(str)
                .toLowerCase()
                .replace(" ", "%")
                .replace("-", "")
                .replace("+", "")
                .replace("/", "")
        );
    }

    public static String toSimilarity(String str) {
        return StringUtils
                .stripAccents(str)
                .toLowerCase()
                .replace(" ", "")
                .replace("-", "")
                .replace("+", "")
                .replace("/", "");
    }
}
