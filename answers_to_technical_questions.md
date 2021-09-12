1. How long did you spend on the code challenge? What would you add to your solution
if you had more time? If you didn't spend much time on the code challenge then use
this as an opportunity to explain what you would add.

Answer: 
I have spent around 7 hours on this coding assessment. Based on the provided documentation, and based on my understanding I have developed the provided API's. If I had more time, I would had been adding comments on what I have done, also tested the API's end to end for all the flows if I am knowing the use case properly before handing it over. As per my experience, we should know what we are doing before developing anything, but for this assessment because of time constraint & also since it is a simple code challenge I understood the requirement & came up with some assumptions.

2. What was the most useful feature that was added to the latest version of a language you used? Please include a snippet of code that shows how you've used it.

Answer:
React js was new to me in my last project. So, I found everything new in that as I had to learn and implement the features. The new feature is the react hooks, a functional component that I had used instead of class components. 
Coming to rails, I had been working on rails 4, but the current project is on rails 6. Rails 6 has come up with many new features like supporting multiple databases, action mailbox, action cable etc.. but I haven't used it. Action cable I have used for broadcasting live notifications to the logged in user.

UserNotificationChannel.broadcast_to \
  user,
  event: 'site_message.new',
  subject: subject,
  message: message,
  theme: theme,
  action_label: action_label,
  action_url: action_url,
  shop_id: shop_id

3. How would you track down a performance issue in production? Have you ever had to do this?
Answer:
Yes, I had been working for a healthcare start up & performance was a concern as the server configurations were low. So during heavy trafic / bcs of some slow queries application used to halt. At that time I used to login to mysql database server, show process list & kill all the halted select queries to improve performance on immediate affect. 

In database server we can set the time limit for each request setting pt-kill. Say no process should last more than 20 s, then we can set the pt-kill time to 20 seconds & it kills the process. Meanwhile we can log all the killed process & trace back the performance of the same. There are some other tools like newrelic to do this.

pt-kill --busy-time 20 --log /path/to/kill_long_running_thread.log --kill -u username -p password  --daemonize;

4. Please describe yourself using JSON
rakesh_is = {name: 'Rakesh Sharma', dob: '20-05-1992', qualification: 'B.E', total_experience: '7 Years & 2 months',company_details: {'2014-2020'=> 'isiri Technologies pvt ltd. Isiri is a healthcare IT solutions, a product based startup company. I had been working in this organization for 6 years', '2020-2021'=> 'Infosys - Working as Technology Analyst at Infosys'}, hobbies: {1=> 'Keep 1-2 hours in a day to play badminton. I love badminton', 2=> 'Watch movies', 3=> 'Bike rides'},final_conclusion: 'I am result oriented, straight forward, follow some professional ethics & smart worker. Basically a sports person who always loves to win, but accept the failures too'}