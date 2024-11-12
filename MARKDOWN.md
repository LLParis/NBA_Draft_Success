# NBA Draft Success Prediction Project

## 1. Executive Summary
**Objective**: Predict NBA draft success using machine learning, focusing on players drafted between 1995 and present.

**Scope**: This project aims to develop a predictive model for NBA draft success by analyzing physical, performance, and historical data.

## 2. Data Collection and Selection Criteria
- **Timeframe**: 1995 to present.
- **Player Inclusion Criteria**: Top 60 draft picks (first and second rounds), supplemented by selected successful second-round players.
- **Justification**: This timeframe and selection offer a balance between modern playstyle relevance and data quality.

## 3. Data Sources and Methods
- **Primary Sources**: Basketball Reference, NBA.com, SportsRadar API.
- **Automated Data Collection**: Web scraping using Python (`BeautifulSoup`, `requests`) or API integrations.
- **Data Pipeline and Storage**:
  - **Storage**: PostgreSQL database with structured tables.
  - **ETL Pipeline**: Define the stages for raw data collection, cleaning, and structuring.

## 4. Data Structure
- **Tables and Fields**:
  - `players`: General player information (e.g., `player_id`, `name`, `draft_year`, `college`).
  - `stats`: Player statistics per season (e.g., `ppg`, `rpg`, `apg`).
  - `combine`: Physical measurements (e.g., `height`, `wingspan`, `vertical_leap`).
  - `advanced_metrics`: Career advanced stats (e.g., `PER`, `Win Shares`).
- **Relationships**: Each table links through `player_id` as the unique identifier.

## 5. Model Requirements
- **Initial Model Goals**: Develop a neural network to predict Career Potential Score based on player stats and combine data.
- **Advanced Features (Future)**:
  - Expansion to specific game-by-game predictions.
  - Reinforcement learning for in-season predictions and real-time adjustments.
- **Evaluation Metrics**:
  - For regression tasks: RMSE.
  - For classification: Accuracy and recall.

## 6. Decision Log
| Decision         | Date       | Rationale                                                                                           |
|------------------|------------|-----------------------------------------------------------------------------------------------------|
| Timeframe        | 2024-11-11 | Focus on players drafted from 1995 to present to capture modern NBA style.                          |
| Player Selection | 2024-11-11 | Top 60 picks with the addition of notable second-round players to capture high-impact and outliers. |
| Database Config  | 2024-11-12 | Chose PostgreSQL for its robustness and scalability; configured local setup in PyCharm to facilitate direct SQL queries and visual data exploration.|

## 7. Version Control and Future Adjustments
- **Version History**:
  - Version 1.0 - Initial documentation, focus on basic data and model setup.
- **Future Adjustments**:
  - Potential expansion of player selection criteria.
  - Test additional machine learning models beyond neural networks.

---

### Additional Notes

This document should be updated as new decisions are made and data or model adjustments occur. For collaboration and real-time edits, use the Google Docs link; for version control, GitHub Markdown works best.
