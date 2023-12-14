
-- OLDEST USERS
Select *
From Users
Order By created_at
Limit 5;


 -- INACTIVE USERS
Select users.id, username 
From users
Left join photos
 On users.id = photos.user_id
Where photos.image_url Is Null;



 
 -- CONTEST WINNER
 Select
   photos.user_id,
   users.username,
   likes.photo_id,
   count(*) as no_of_likes
 From likes
 Left Join photos
   On photos.id = likes.photo_id
 Left Join users
   On users.id = photos.user_id
 Group By photo_id
 Order By no_of_likes Desc
 Limit 1;
 
 
 
 
 -- Most Common Hashtags
 Select   
   tag_id,
   tags.tag_name,
   COUNT(*) as tag_count
 From photo_tags
 Join tags
   On photo_tags.tag_id = tags.id
 Group By tag_id
 Order By tag_count Desc
 Limit 7;
 
 
 
 
 -- Most common Registration Day
 Select 
  DAYNAME(created_at) As Registration_Day,
  COUNT(*) as No_of_Registrations
 From users
 Group By Registration_Day
 Order By No_of_Registrations Desc
 Limit 2;
 
 
 
 
 -- Average Number of Posts
 
 Select    
     (Select COUNT(*) From Photos)/(Select COUNT(*) From Users) as Average_posts;
     
     
     
     
     
     
     
 -- Bots
 Select
   users.id,
   users.username,
   COUNT(*) As number_of_likes
 From users   
 Inner Join likes
   On users.id = likes.user_id
 Group By likes.user_id
 Having number_of_likes = (Select COUNT(*) From photos);
   
   