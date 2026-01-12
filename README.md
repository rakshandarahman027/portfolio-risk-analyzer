# 📊 Portfolio Risk & Performance Simulator

A comprehensive data analytics project that combines **financial analysis, statistical testing, and interactive visualization** to evaluate and optimize a multi-asset investment portfolio. This project demonstrates the full data science workflow from data collection to business insight.

https://public.tableau.com/app/profile/rakshanda.rahman6288/viz/Portfolio_Analysis-RakshandaRahman/Dashboard1 

## 🎯 Project Overview

This project investigates a critical question for any investor: **"How can a portfolio be optimized for better risk-adjusted returns?"** Starting with a theoretical portfolio of 6 assets (AAPL, MSFT, GOOGL, TSLA, SPY, TLT), I used Modern Portfolio Theory to analyze its performance, statistically test its effectiveness, and identify a more efficient allocation.

## 🔍 Key Insights & Findings

*   **The Original Portfolio was Suboptimal**: A 40% allocation to bonds (TLT) significantly dragged down risk-adjusted returns (Sharpe Ratio: 1.43).
*   **Identified an Optimal Portfolio**: Through simulation, an optimal mix was found with a **Sharpe Ratio of 2.19**, heavily weighted towards equities (SPY, AAPL, MSFT) and minimal bonds (~0.6%).
*   **Statistical Validation**: Hypothesis testing revealed that while the optimized portfolio had higher **numerical returns** than the S&P 500, the difference was **not statistically significant**, and it carried higher volatility.
*   **Core Takeaway**: Optimization improved metrics, but a simple S&P 500 index fund (SPY) remained a statistically robust benchmark for risk-adjusted performance.

## 🛠️ Project Structure & Technologies
portfolio-risk-analyzer/
├── Data/ # All cleaned datasets for analysis & visualization
├── Script_python/ # Data collection, simulation & analysis (Google Colab)
├── Script_R/ # Statistical hypothesis testing (RStudio)
└── README.md

### **Tools & Skills Demonstrated**
*   **Finance**: Modern Portfolio Theory, Efficient Frontier, Sharpe Ratio, Risk-Return Trade-off
*   **Data Engineering**: API data collection (`yfinance`), cleaning & wrangling (`pandas`), feature engineering
*   **Statistics**: Hypothesis testing (t-tests, F-test), p-value interpretation, confidence intervals
*   **Visualization**: Interactive dashboard storytelling in Tableau
*   **Programming**: Python, R, Git/GitHub, Markdown

## 📈 How to Reproduce This Analysis

1.  **Python Analysis**: Run `Script_python/01_data_collection.ipynb` to fetch data, calculate returns, simulate portfolios, and generate the Efficient Frontier.
2.  **Statistical Testing**: Run `Script_R/01_hypothesis_testing.R` to validate portfolio performance against benchmarks.
3.  **Visualization**: Import the CSV files from the `Data/` folder into Tableau to recreate or explore the dashboard.

## 📂 Data Sources

*   **Price Data**: Historical daily prices (2023-2024) fetched via Yahoo Finance API (`yfinance`).
*   **Assets**: Apple (AAPL), Microsoft (MSFT), Alphabet (GOOGL), Tesla (TSLA), S&P 500 ETF (SPY), Long-Term Treasury Bond ETF (TLT).
