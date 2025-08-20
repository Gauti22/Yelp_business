'''Question 1'''
Select count(userid) as user_count,EXTRACT(Year FROM yelpjoin) as Years
FROM users
Where EXTRACT(Year FROM yelpjoin)>2009
Group by Years
ORDER BY Years;

'''Question 2 '''
Select year_column, COUNT(u.userid) AS elite_user_count
FROM usereliteyears ue
Left join users as u on ue.userid=u.userid
WHERE year_column BETWEEN 2012 AND 2021
GROUP BY year_column
ORDER BY year_column;

'''Question 3'''
Select u.name,yelpjoin,numberoffans,
usefulvotessentbyuser,funnyvotessentbyuser,
coolvotessentbyuser
FROM reviews r
join users as u on r.userid=u.userid
where userrating=5
group by u.userid
order by numberoffans desc
limit 10;

'''Question 5'''
SELECT state, count(businessid) as count_
FROM business
group by state
order by count_ DESC
limit 10;

'''Question 6'''
Select b.categoryname, count(b.businessid) as top_businesscategories
FROM businesscategories b
Group by categoryname
order by top_businesscategories DESC
LIMIT 10;

'''Question 7 '''
WITH TopCategories AS (
    SELECT
        categoryName
    FROM
        businesscategories
    GROUP BY
        categoryName
    ORDER BY
        COUNT(businessid) DESC
    LIMIT 10
)

SELECT
    tc.categoryName,
    AVG(b.averagereviews) AS average_rating
FROM
    TopCategories tc
JOIN
    businesscategories bc ON tc.categoryName = bc.categoryName
JOIN
    business b ON bc.businessid = b.businessid
GROUP BY
    tc.categoryName
ORDER BY
    average_rating DESC;

'''Question 8'''

SELECT 'Good' AS review_category, reviewtext
FROM (
    SELECT reviewtext, 
           ROW_NUMBER() OVER (ORDER BY userrating DESC) AS row_num
    FROM businesscategories bc
    JOIN reviews r ON bc.businessid = r.businessid
    WHERE categoryname LIKE '%Rest%' AND userrating = 5.0
    LIMIT 5
) ranked_good_reviews

UNION ALL

SELECT 'Bad' AS review_category, reviewtext
FROM (
    SELECT reviewtext, 
           ROW_NUMBER() OVER (ORDER BY userrating DESC) AS row_num
    FROM businesscategories bc
    JOIN reviews r ON bc.businessid = r.businessid
    WHERE categoryname LIKE '%Rest%' AND userrating = 1.0
    LIMIT 10
) ranked_bad_reviews;

'''Question 9 '''

SELECT
    'Most Complimented' AS tip_category,
    AVG(LENGTH(text)) AS average_tip_length
FROM (
    SELECT text
    FROM tips
    WHERE complimentstiprecevid > 0
    ORDER BY complimentstiprecevid DESC
    LIMIT 100
) AS MostComplimentedTips

UNION ALL

SELECT
    'Least Complimented' AS tip_category,
    AVG(LENGTH(text)) AS average_tip_length
FROM (
    SELECT text
    FROM tips
    WHERE complimentstiprecevid > 0
    ORDER BY complimentstiprecevid ASC, timetipwasleft DESC
    LIMIT 100
) AS LeastComplimentedTips;


'''Question 10'''
SELECT
    b.businessid,
    bc.categoryName AS restaurant_category,
    ba.attributeName AS price_range,
    bh.dayoftheweek,
    bh.openingTime,
    bh.closingTime,
    EXTRACT(EPOCH FROM (bh.closingTime - bh.openingTime))/3600 AS hours_open,
    b.averagereviews AS average_reviews,
    b.numberofreviews AS total_reviews,
    r.userRating,
    r.NumberofUsefulReviews AS useful_count,
    r.NumberoffunnyReviews AS funny_count,
    r.NumberofCoolReviews AS cool_count,
    r.ReviewText
FROM
    reviews r
JOIN
    businesscategories bc ON r.businessid = bc.businessid
JOIN
    business_hours bh ON bc.businessid = bh.businessid
JOIN
    business b ON r.businessid = b.businessid
LEFT JOIN
    businessattributes ba ON b.businessid = ba.businessid AND ba.attributeName = 'RestaurantsPriceRange2'
WHERE
    bc.categoryName = 'Restaurants'
ORDER BY
    r.userRating DESC, r.Reviewid DESC
LIMIT 10;


'''Question 11'''

SELECT b.businessname, b.averagereviews, bc.categoryName
FROM business b
JOIN businesscategories bc ON b.businessid = bc.businessid;

'''Question 12 '''
SELECT b.businessname, b.city, ROUND(AVG(EXTRACT(EPOCH FROM (bh.closingtime - bh.openingtime))/3600)::numeric, 2) AS avg_opening_hours
FROM business b
JOIN business_hours bh ON b.businessid = bh.businessid
GROUP BY b.businessname, b.city
ORDER BY avg_opening_hours DESC
LIMIT 5;

'''Question 13 '''
SELECT DISTINCT b.businessname, bc.categoryName, b.numberofreviews
FROM business b
JOIN businesscategories bc ON b.businessid = bc.businessid
ORDER BY b.numberofreviews DESC
LIMIT 5;

''' Question 14 '''

SELECT name, numberoffans
FROM users
ORDER BY numberoffans DESC
LIMIT 5;

''' Question 15 '''
SELECT u.name, u.averageratingofuserreviews
FROM users u
WHERE u.reviewsuserleft > 10
ORDER BY u.reviewsuserleft DESC;