package com.eu.habbo.habbohotel.catalog;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ClubOffer {

    private final int id;


    private final String name;


    private final int days;


    private final int credits;


    private final int points;


    private final int pointsType;


    private final boolean vip;


    private final boolean deal;

    public ClubOffer(ResultSet set) throws SQLException {
        this.id = set.getInt("id");
        this.name = set.getString("name");
        this.days = set.getInt("days");
        this.credits = set.getInt("credits");
        this.points = set.getInt("points");
        this.pointsType = set.getInt("points_type");
        this.vip = set.getString("type").equalsIgnoreCase("vip");
        this.deal = set.getString("deal").equals("1");
    }

    public int getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public int getDays() {
        return this.days;
    }

    public int getCredits() {
        return this.credits;
    }

    public int getPoints() {
        return this.points;
    }

    public int getPointsType() {
        return this.pointsType;
    }

    public boolean isVip() {
        return this.vip;
    }

    public boolean isDeal() {
        return this.deal;
    }
}