# Olympic Games Database Management

A structured relational database for managing detailed information about Olympic Games, including athletes, teams, events, results, and awards. Developed as a group project for the **Databases** course at [Harokopio University of Athens – Dept. of Informatics and Telematics](https://www.dit.hua.gr).
The design focuses on data integrity, clear relationships, and efficient querying for analytics or historical record keeping.

## Table of Contents
1. Project Summary
2. Entity–Relationship Overview
3. Database Tables
4. Data Integrity Rules
5. Predefined Views

## Project Summary
The database captures:
- Core entities like **Athletes**, **Countries**, and **Events**.
- Details about **participation records**.
- Results in the form of **awards** (gold, silver, bronze medals).
- Relationships between these entities are defined with **primary/foreign keys**, enforcing referential integrity and maintaining accuracy across the dataset.

## Entity–Relationship Overview
The schema revolves around the following main components:
- **ATHLETE**: Individuals who participate in Olympic events.
- **COUNTRY**: The National Olympic Committee (NOC) representing a country.
- **GAMES**: Specific Olympic Games editions, identified by year and season.
- **EVENT**: Sports events where athletes compete.
- **PARTICIPATION**: A linking table that records an athlete's participation in a specific event during a particular Olympic Games. It also stores the medal they may have won.

## Database Tables

### 1. ATHLETE

| Column            | Type    | Description                        |
| ----------------- | ------- | ---------------------------------- |
| `AthleteID`       | PK      | Unique ID for each athlete.        |
| `Name`            | String  | Athlete’s full name.               |
| `DateOfBirth`     | Date    | Date of birth.                     |
| `Sex`             | Char(1) | Gender (`M` or `F`).               |
| `HasTeam`         | FK      | References the country's NOC code. |

### 2. COUNTRY

| Column    | Type   | Description                        |
| --------- | ------ | ---------------------------------- |
| `NOC`     | PK     | 3-letter NOC code for the country. |
| `Name`    | String | Country name.                      |

### 3. GAMES

| Column            | Type   | Keys                                 |
| ----------------- | ------ | ------------------------------------ |
| `Year`            | Int    | Part of PK. Year held.               |
| `Period`          | String | Part of PK. `Summer` or `Winter`.    |
| `City`            | String | Host city.                           |
| `HostedInCountry` | FK     | References the country's `NOC` code. |

### 4. EVENT

| Column  | Type   | Description                         |
| ------- | ------ | ----------------------------------- |
| `EName` | PK     | Event name (e.g., "Men's 100m").    |
| `Sport` | String | Sport category (e.g., "Athletics"). |
| `Type`  | String | `Individual` or `Team`.             |

### 5. PARTICIPATION

| Column    | Type   | Keys                                        |
| --------- | ------ | ------------------------------------------- |
| `Athlete` | FK     | Part of PK. References `ATHLETE.AthleteID`. |
| `Year`    | FK     | Part of PK. References `GAMES.Year`.        |
| `Period`  | FK     | Part of PK. References `GAMES.Period`.      |
| `Event`   | FK     | Part of PK. References `EVENT.EName`.       |
| `Medal`   | String | `Gold`, `Silver`, or `Bronze`.              |

## Data Integrity Rules
- **Primary and Foreign Keys** maintain table relationships, and composite keys are used where a single field is not sufficient to uniquely identify a record.
- Check constraints enforce valid values (`M`/`F` for gender, `Summer`/`Winter` for season, etc.).
- **Format** constraints ensure values like `noc` match the expected 3-letter uppercase pattern.
- **Referential integrity** is enforced by foreign keys linking `ATHLETE` to `COUNTRY`, `GAMES` to `COUNTRY`, and `PARTICIPATION` to `ATHLETE`, `GAMES`, and `EVENT`.

## Predefined Views
The project includes SQL scripts to create (or drop) views that:
- Count medals by athlete or by NOC.
- Summarize participation statistics.
Custom views can be added to generate analytics such as:
- **Top medalists in a given year**
- **Countries with the most participation**
- **Event popularity trends**

*This schema can be extended to support historical data analysis, athlete performance tracking, and integration with real-time Olympic results feeds.*

---
## Author

- **Name**: Exarchou Athos
- **Student ID**: it2022134
- **Email**: it2022134@hua.gr or athosexarhou@gmail.com

## License
This project is licensed under the MIT License.
