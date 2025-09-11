# Project: Ad Click-Through Rate (CTR) Predictive Model

![Project Status](https://img.shields.io/badge/status-Done-green)
![Language](https://img.shields.io/badge/language-Python-blue)
![Tool](https://img.shields.io/badge/tool-Google_Colab-orange)

---

### What's This Project About? 🚀

This project tackles a classic marketing headache: wasted ad spend. We built a machine learning model to predict whether a user will click on an ad, allowing us to move from a "spray and pray" approach to surgical, high-ROI targeting.

The goal was to build a model that could accurately identify high-potential users, helping us blow past the 3% industry-average CTR and make our ad budget work smarter, not harder. This is a game-changer for the **Marketing**, **Finance**, and **Leadership** teams who all want to see efficient, data-driven growth.

Our success metric was simple: achieve an F1-Score over 90% and show a clear, positive impact on the bottom line.

---

### The Tech Stack & Our Approach 🛠️

We used a standard but powerful set of tools to get the job done, keeping everything in a single, reproducible Jupyter Notebook.

- **Language**: Python 3.x
- **Libraries**: Pandas & NumPy for data wrangling, Matplotlib & Seaborn for visualization, and Scikit-learn & XGBoost for the modeling magic.
- **Methodology**: We followed the tried-and-true **CRISP-DM framework** to keep the project on track. We started with deep exploratory data analysis (EDA), ran a bake-off between 7 different classification models, and then zeroed in on the winner for fine-tuning and evaluation.

---

### The Big Wins & Key Findings 💡

The results were even better than we expected. Here’s the breakdown:

1.  **XGBoost Was the Clear Winner:** After testing seven different algorithms, the XGBoost Classifier came out on top, nailing a **95.5% F1-Score and Accuracy**. It’s fast, powerful, and incredibly effective for this type of problem.

2.  **The "Goal Seeker" Insight:** The most valuable insight wasn't about _who_ the users were, but _how_ they behaved. The model showed that low **`Daily Internet Usage`** and low **`Daily Time Spent on Site`** were the strongest predictors of a click. This pointed us to a high-value persona we call the **"Pencari Tujuan" (Goal Seeker)**—someone who arrives with a purpose, finds what they need, and acts.

3.  **Data Prep Matters:** We confirmed that preprocessing is non-negotiable. Normalizing the data gave our distance-based models (like SVM and Logistic Regression) a massive performance boost, improving their F1-Scores by over 29% and 66%.

### The Bottom-Line Impact 💰

We ran a simulation based on our 1,000-user dataset to translate the model's accuracy into real financial impact. Assuming an ad cost of Rp 1,000/user and profit of Rp 5,000/conversion, the difference is night and day:

- **Before (Mass Marketing)**: Spend **Rp 1,000,000** ➡️ Get **Rp 1,500,000** Net Profit.
- **After (Targeted with Model)**: Spend just **Rp 550,000** ➡️ Get **Rp 2,100,000** Net Profit.

That’s a **45% reduction in ad costs** and a **40% increase in net profit**, all from being smarter about who we target.

---

### Our Recommendations ✅

1.  **Deploy the XGBoost Model:** Put our champion model into production to score and segment visitors in real-time.
2.  **Bet on the "Goal Seekers"**: Focus the majority of the ad budget on the high-potential users identified by the model.
3.  **Find New Plays for "Browsers"**: For users who spend a lot of time on the site but don't click ads, let's explore other monetization strategies like subscriptions or native content.

_A quick note: The simulation numbers are illustrative. Real-world ROI will obviously depend on live campaign costs, but the strategic lift is clear. Like any model, this one will need retraining over time to stay sharp._

---

### Get It Running Yourself

Want to reproduce the analysis? It's easy.

**1. Install the dependencies:**

```bash
pip install pandas numpy matplotlib seaborn scikit-learn xgboost
```

**2. Run the notebook:**

1.  Clone the repository.
2.  Make sure `Clicked Ads Dataset.csv` is in the root folder.
3.  Fire up `Predict_Clicked_Ads_Customer_Classification_by_using_Machine_Learning.ipynb` and run the cells in order.

---

### Lessons Learned & What's Next

- **Future Ideas**: We're just scratching the surface. Next, we could build a full conversion model (not just clicks), set up a real-time scoring API, or A/B test ad creative designed specifically for our "Goal Seeker" persona.
- **Key Takeaways**: This project hammered home a few key lessons: the most "engaged" users aren't always the most profitable, a rigorous model bake-off is crucial for top performance, and a simple financial simulation is the best way to show a model's true value to the business.
