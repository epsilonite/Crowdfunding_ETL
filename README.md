# Crowdfunding_ETL

![crowdfunding](https://github.com/epsilonite/Crowdfunding_ETL/blob/main/images/crowdfunding.webp)

---

## Create the Category and Subcategory DataFrames

### Category 
---
Extracted and transformed the crowdfunding.xlsx Excel data to create a category DataFrame that has the following columns:
  - A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories
  - A "category" column that contains only the category titles
Exported the category DataFrame as category.csv

The following image shows the category DataFrame:

![category](https://github.com/epsilonite/Crowdfunding_ETL/blob/main/images/category.png)

### Subcategory
---
Extracted and transformed the crowdfunding.xlsx Excel data to create a subcategory DataFrame that has the following columns:
  - A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories
  - A "subcategory" column that contains only the subcategory titles
Exported the subcategory DataFrame as subcategory.csv

The following image shows the subcategory DataFrame:

![subcategory](https://github.com/epsilonite/Crowdfunding_ETL/blob/main/images/subcatgeory.png)

---

## Create the Campaign DataFrame

Extract and transform the crowdfunding.xlsx Excel data to create a campaign DataFrame has the following columns:

  - "cf_id", "contact_id", "company_name", "outcome", "backers_count", "country", "currency" columns
  - "blurb" column, renamed to "description"
  - "goal" column, converted to the float data type
  - "pledged" column, converted to the float data type
  - "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format
  - "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format
  - "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame
  -  "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame

Exported the campaign DataFrame as campaign.csv and save it to your GitHub repository.

Merging campaign DataFrame with Category and Subcategory DataFrames:

![merge](https://github.com/epsilonite/Crowdfunding_ETL/blob/main/images/campaign_merge.png)

Dropping columns:

![drop](https://github.com/epsilonite/Crowdfunding_ETL/blob/main/images/campaign_drop.png)

## Create the Contacts DataFrame

Imported the contacts.xlsx file into a DataFrame
Iterated through the DataFrame, converting each row to a dictionary
Iterated through each dictionary, doing the following:
  - Extracted the dictionary values from the keys by using a Python list comprehension
  - Added the values for each row to a new list
  - Created a new DataFrame that contains the extracted data
  - Split each "name" column value into a first and last name, and placed each in a new column
  - Cleaned and exported the DataFrame as contacts.csv

The following image shows the contacts DataFrame:

![contacts](https://github.com/epsilonite/Crowdfunding_ETL/blob/main/images/contacts.png)

## Create the Crowdfunding Database

