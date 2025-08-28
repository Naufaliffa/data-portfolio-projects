# Coffee Shop Sales: A Growth Strategy Powered by Excel

**You don't need complex code to find game-changing insights. Here's how we used Microsoft Excel to turn 150,000 transactions into a real-world revenue strategy.** 🚀

![Excel](https://img.shields.io/badge/Microsoft_Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white)
![Data Visualization](https://img.shields.io/badge/Data_Visualization-Charts-blue?style=for-the-badge)
![Status](https://img.shields.io/badge/Result-Impactful-success?style=for-the-badge)

-----

## The Bottom Line Up Front (TL;DR)

After analyzing **\~150,000 sales transactions** over six months, we found a huge, untapped opportunity: boosting the **Average Transaction Value (ATV)** during the morning rush.

The coffee shop is growing, but most customers just grab a coffee and go, leaving a massive cross-selling opportunity on the table. By launching a simple **"Morning Power Combo,"** the business could increase its revenue by an estimated **\~$29,600 per quarter (\~7.6%)**. The best part? The entire analysis was done using the tool you probably have open right now: Microsoft Excel.

-----

## 1\. Setting the Scene: The Business Challenge

We framed the problem using the **SCQA (Situation, Complication, Question, Answer)** framework:

  * **Situation**: The coffee shop has three branches that are performing well, with sales trending up. Coffee and Tea are the star players, driving most of the revenue.
  * **Complication**: Growth is happening, but it's not efficient. We spotted clear patterns:
    1.  A massive sales spike from **8-10 AM** followed by a dead zone in the afternoon.
    2.  Weekends are noticeably slower than weekdays.
    3.  A huge number of drink-only orders means we're missing out on easy food sales.
  * **Question**:
    > **"How can we boost total revenue next quarter by optimizing the customer habits and product offerings we already have?"**
  * **Hypothesis**: We can drive serious growth with targeted product bundles that hit the right customers at the right time.

-----

## 2\. The Toolkit: Just Good Ol' Excel

This entire project was powered by Excel, proving you don't need a complex tech stack to deliver powerful business intelligence.

1.  **Data Prep & Cleaning**: We imported the raw CSV and used **Filters** and **Conditional Formatting** to quickly spot issues. A few handy **Formulas** (`TRIM`, `VALUE`) got the data standardized and ready for action.
2.  **Feature Engineering**: We created new, analysis-critical columns right in the Excel table.
      * `Revenue`: A simple `=[@[transaction_qty]]*[@[unit_price]]`
      * `Hour of Day`: `=HOUR([@[transaction_time]])`
      * `Day of Week`: `=TEXT([@[transaction_date]], "dddd")`
3.  **Core Analysis (EDA)**: **PivotTables were the star of the show.** We used them to slice, dice, and aggregate everything—sales by month, by hour, by location, and by product. **PivotCharts** let us visualize these findings in seconds.
4.  **Impact Simulation**: We built a simple financial model on a separate sheet to forecast the potential ROI of our recommendations, using the data from our PivotTables as a baseline.

-----

## 3\. What the Data Told Us 💡

<img width="482" height="298" alt="revenue by hour" src="https://github.com/Naufaliffa/data-portfolio-projects/blob/main/projects/02-coffe-shop-sales-analysis/images/revenue%20by%20hour.png" />

### 📈 Insight \#1: The Morning Rush is our Engine, but the Afternoon is a Dead Zone.

Sales go vertical between 8 AM and 10 AM, but then fall off a cliff. This creates a huge, quiet "valley" of lost opportunity in the afternoon.

  * **Why it matters**: We're too reliant on the commuter crowd. We need a strategy to generate a second wave of sales during the afternoon lull.


<img width="482" height="298" alt="revenue by hour" src="https://github.com/Naufaliffa/data-portfolio-projects/blob/main/projects/02-coffe-shop-sales-analysis/images/revenue%20by%20product%20category.png" />

### ☕ Insight \#2: Coffee is King, but We're Not Selling the Rest of the Kingdom.

Coffee and Tea bring in over **59% of all revenue**. Bakery is the next best thing, but its sales volume is tiny in comparison. Translation: people are buying drinks, but not food.

  * **Why it matters**: Our cross-selling is weak. The fastest path to higher revenue is "attaching" a pastry to an existing coffee order to boost the average ticket size.

<img width="482" height="298" alt="revenue by hour" src="https://github.com/Naufaliffa/data-portfolio-projects/blob/main/projects/02-coffe-shop-sales-analysis/images/revenue%20by%20day.png" />

### 📅 Insight \#3: Weekdays Rock, but Weekends Slump.

Revenue is solid and predictable from Monday to Friday, but there's a clear dip on Saturday and Sunday.

  * **Why it matters**: Our current setup is perfect for the 9-to-5 worker. We need a different playbook to attract the weekend crowd (families, friend groups, etc.).

-----

## 4\. From Insights to an Action Plan ✅

| Strategic Recommendation | Problem It Solves | How to Implement It | How to Measure Success (KPIs) |
| :--- | :--- | :--- | :--- |
| **1. Launch "Morning Power Combo"** | Single-item orders during the morning rush. | Create 2-3 breakfast bundles (e.g., Coffee + Pastry) available only from 7-11 AM. Train staff to actively upsell. | 15% increase in **Bakery Attachment Rate**. Growth in **Average Transaction Value (ATV)**. |
| **2. Introduce "Afternoon Delight" Promo** | The 2-5 PM sales slump. | Run daily deals like "30% off all pastries" or BOGO drinks. Push it on social media an hour beforehand. | 10-15% increase in **transaction count** during promo hours. Higher **afternoon revenue share**. |
| **3. Create "Weekend Relaxation Bundles"** | The weekend sales dip. | Design offers for groups (e.g., "Buy 2 drinks, get a muffin free"). Create a more relaxed in-store vibe. | 5-10% lift in **weekend revenue**. Higher **items per transaction** on Saturdays & Sundays. |

-----

## 5\. The Potential Payoff: Running the Numbers 📈

Our Excel model forecasted the impact of the **"Morning Power Combo"**, showing a clear path to ROI.

| Metric | Baseline / Assumption | Calculation | Projected Outcome |
| :--- | :--- | :--- | :--- |
| **Target Transactions** | \~18,550 morning drink sales per month | - | - |
| **Adoption (Upsell) Rate** | **15%** (a conservative guess) | `18,550 * 15%` | **2,782 successful upsells** per month |
| **Added Value per Transaction** | Avg. bakery item price: **$3.55** | `2,782 * $3.55` | **\~$9,876** in extra monthly revenue |
| **Total Quarterly Impact** | Over 3 months | `$9,876 * 3` | **\~$29,628** in extra quarterly revenue |
| **% Revenue Increase** | Current quarterly revenue: \~$391k | `($29,628 / $391,000)` | **\~7.6%** |

-----

## 6\. Want to See How It Was Done?

The entire analysis is right here in the Excel file. To follow along:

1.  **Download the `.xlsx` file** from this repository.
2.  **Take a tour through the tabs**:
      * `Raw_Data`: The original, untouched data.
      * `Data_Cleaning`: The cleaned-up data with our new calculated columns.
      * `PivotTables`: The heart of the analysis, where you can see how we aggregated the data.
      * `Impact_Simulation`: The simple model used to forecast the financial results.
