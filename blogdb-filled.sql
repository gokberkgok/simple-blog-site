-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                10.4.32-MariaDB - mariadb.org binary distribution
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- blogdb için veritabanı yapısı dökülüyor
CREATE DATABASE IF NOT EXISTS `blogdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `blogdb`;

-- tablo yapısı dökülüyor blogdb.blogs
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=223235 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- blogdb.blogs: ~6 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `blogs` (`id`, `title`, `content`, `category`, `author`, `image_url`, `created_at`) VALUES
	(22, 'The state of small business marketing in 2024', '<p>We recently surveyed 1,400 consumers, small business owners, and marketers to gain insights into the marketing strategies driving success for small businesses in 2024 and to identify the most effective marketing approaches for reaching and engaging consumers.</p><p>Whether you’re a small business owner looking to refine your marketing tactics or a marketer seeking the latest industry insights, this report offers valuable perspectives and actionable strategies to help you thrive in 2024’s fast-paced market.&nbsp;</p><h2>Key small business marketing statistics</h2><ul><li>The three most influential marketing tactics for small businesses are <strong>online reviews, word-of-mouth referrals, and influencer endorsements.</strong></li><li>The five most influential marketing channels for small business growth are their websites, Facebook, review sites (e.g., Google Business), TikTok, and Instagram.</li><li>Small businesses with a marketing plan are <strong>6.7 times</strong> more likely to report marketing success than those without a plan.&nbsp;</li><li>Small businesses that blend in-house marketing with external professional services report <strong>2.5 times</strong> more marketing success than those relying exclusively on in-house efforts.</li><li><strong>63%</strong> of small businesses <strong>plan to increase their marketing budget</strong> over the next year. The sectors most likely to boost spending are technology (80%), human resources (80%), and finance (76%).&nbsp;</li><li>Most small businesses allocate <strong>6-10% of their budget to marketing.</strong> Small businesses that invest more in marketing report greater marketing success.</li><li>The biggest marketing challenges for small businesses are limited budget, time constraints, and finding the right marketing channels.</li><li>Over half of small businesses <strong>(59%) are incorporating AI into their marketing strategies</strong>, and 75% are incorporating customer feedback into their marketing strategies.&nbsp;</li><li><strong>72%</strong> of consumers <strong>prefer to buy products from small businesses</strong> over larger enterprises.</li><li>44% of consumers have intentionally increased their shopping at small businesses in the past year.</li><li>Most consumers prefer to receive marketing communications from small businesses through <strong>email, social media, and text.</strong>&nbsp;</li><li>Facebook, Instagram, YouTube, and TikTok rank as the top four social platforms where consumers are most responsive to marketing messages from small businesses.</li><li><strong>64%</strong> of consumers say that <strong>online reviews</strong> impacted their decision to support small businesses in the past year.</li></ul>', 'tech', 'Gokberk', 'https://simpletexting.com/wp-content/uploads/2024/06/2024-SMS-Marketing-Report-Hero-1536x864.png', '2024-09-09 19:39:46'),
	(223227, 'Dynamic Kubernetes Cluster Scaling at Airbnb', '<p>Authors: <a href="https://www.linkedin.com/in/evansheng112/">Evan Sheng</a>, <a href="https://www.linkedin.com/in/david-morrison-9419b110/">David Morrison</a></p><p><picture><source srcset="https://miro.medium.com/v2/resize:fit:640/format:webp/1*Elojmgc7Y06tItOaLdB0Cw.jpeg 640w, https://miro.medium.com/v2/resize:fit:720/format:webp/1*Elojmgc7Y06tItOaLdB0Cw.jpeg 720w, https://miro.medium.com/v2/resize:fit:750/format:webp/1*Elojmgc7Y06tItOaLdB0Cw.jpeg 750w, https://miro.medium.com/v2/resize:fit:786/format:webp/1*Elojmgc7Y06tItOaLdB0Cw.jpeg 786w, https://miro.medium.com/v2/resize:fit:828/format:webp/1*Elojmgc7Y06tItOaLdB0Cw.jpeg 828w, https://miro.medium.com/v2/resize:fit:1100/format:webp/1*Elojmgc7Y06tItOaLdB0Cw.jpeg 1100w, https://miro.medium.com/v2/resize:fit:1400/format:webp/1*Elojmgc7Y06tItOaLdB0Cw.jpeg 1400w" type="image/webp" sizes="(min-resolution: 4dppx) and (max-width: 700px) 50vw, (-webkit-min-device-pixel-ratio: 4) and (max-width: 700px) 50vw, (min-resolution: 3dppx) and (max-width: 700px) 67vw, (-webkit-min-device-pixel-ratio: 3) and (max-width: 700px) 65vw, (min-resolution: 2.5dppx) and (max-width: 700px) 80vw, (-webkit-min-device-pixel-ratio: 2.5) and (max-width: 700px) 80vw, (min-resolution: 2dppx) and (max-width: 700px) 100vw, (-webkit-min-device-pixel-ratio: 2) and (max-width: 700px) 100vw, 700px"><source srcset="https://miro.medium.com/v2/resize:fit:640/1*Elojmgc7Y06tItOaLdB0Cw.jpeg 640w, https://miro.medium.com/v2/resize:fit:720/1*Elojmgc7Y06tItOaLdB0Cw.jpeg 720w, https://miro.medium.com/v2/resize:fit:750/1*Elojmgc7Y06tItOaLdB0Cw.jpeg 750w, https://miro.medium.com/v2/resize:fit:786/1*Elojmgc7Y06tItOaLdB0Cw.jpeg 786w, https://miro.medium.com/v2/resize:fit:828/1*Elojmgc7Y06tItOaLdB0Cw.jpeg 828w, https://miro.medium.com/v2/resize:fit:1100/1*Elojmgc7Y06tItOaLdB0Cw.jpeg 1100w, https://miro.medium.com/v2/resize:fit:1400/1*Elojmgc7Y06tItOaLdB0Cw.jpeg 1400w" sizes="(min-resolution: 4dppx) and (max-width: 700px) 50vw, (-webkit-min-device-pixel-ratio: 4) and (max-width: 700px) 50vw, (min-resolution: 3dppx) and (max-width: 700px) 67vw, (-webkit-min-device-pixel-ratio: 3) and (max-width: 700px) 65vw, (min-resolution: 2.5dppx) and (max-width: 700px) 80vw, (-webkit-min-device-pixel-ratio: 2.5) and (max-width: 700px) 80vw, (min-resolution: 2dppx) and (max-width: 700px) 100vw, (-webkit-min-device-pixel-ratio: 2) and (max-width: 700px) 100vw, 700px"><img src="https://miro.medium.com/v2/resize:fit:875/1*Elojmgc7Y06tItOaLdB0Cw.jpeg" alt=""></picture></p><h2><strong>Introduction</strong></h2><p>An important part of running Airbnb’s infrastructure is ensuring our cloud spending automatically scales with demand, both up <strong>and </strong>down. Our traffic fluctuates heavily every day, and our cloud footprint should scale dynamically to support this.</p><p>To support this scaling, Airbnb utilizes Kubernetes, an open source container orchestration system. We also utilize OneTouch, a service configuration interface built on top of Kubernetes, and is described in more detail in a previous <a href="https://medium.com/airbnb-engineering/a-krispr-approach-to-kubernetes-infrastructure-a0741cff4e0c">post</a>.</p><p>In this post, we’ll talk about how we dynamically size our clusters using the Kubernetes Cluster Autoscaler, and highlight functionality we’ve contributed to the <a href="https://github.com/kubernetes/community/tree/master/sig-autoscaling">sig-autoscaling community</a>. These improvements add customizability and flexibility to meet Airbnb’s unique business requirements.</p><h2><strong>Kubernetes Clusters at Airbnb</strong></h2><p>Over the past few years, Airbnb has shifted almost all online services from manually orchestrated EC2 instances to Kubernetes. Today, we run thousands of nodes across nearly a hundred clusters to accommodate these workloads. However, this change didn’t happen overnight. During this migration, our underlying Kubernetes cluster setup evolved and became more sophisticated as more workloads and traffic shifted to our new technology stack. This evolution can be split into three stages.</p><p>Stage 1: Homogenous Clusters, Manual Scaling</p><p>Stage 2: Multiple Cluster Types, Independently Autoscaled</p><p>Stage 3: Heterogeneous Clusters, Autoscaled</p><h2><strong>Stage 1: Homogenous Clusters, Manual Scaling</strong></h2><p>Before using Kubernetes, each instance of a service was run on its own machine, and manually scaled to have the proper capacity to handle traffic increases. Capacity management varied per team and capacity would rarely be un-provisioned once load dropped.</p><p>Our initial Kubernetes cluster setup was relatively basic. We had a handful of clusters, each with a single underlying node type and configuration, which ran only stateless online services. As some of these services began shifting to Kubernetes, we started running containerized services in a multi-tenant environment (many pods on a node). This aggregation led to fewer wasted resources, and consolidated capacity management for these services to a single control point at the Kuberentes control plane. At this stage, we scaled our clusters manually, but this was still a marked improvement over the previous situation.</p><p><picture><source srcset="https://miro.medium.com/v2/resize:fit:640/format:webp/0*xgJUXKfck5DuQOg1 640w, https://miro.medium.com/v2/resize:fit:720/format:webp/0*xgJUXKfck5DuQOg1 720w, https://miro.medium.com/v2/resize:fit:750/format:webp/0*xgJUXKfck5DuQOg1 750w, https://miro.medium.com/v2/resize:fit:786/format:webp/0*xgJUXKfck5DuQOg1 786w, https://miro.medium.com/v2/resize:fit:828/format:webp/0*xgJUXKfck5DuQOg1 828w, https://miro.medium.com/v2/resize:fit:1100/format:webp/0*xgJUXKfck5DuQOg1 1100w, https://miro.medium.com/v2/resize:fit:1400/format:webp/0*xgJUXKfck5DuQOg1 1400w" type="image/webp" sizes="(min-resolution: 4dppx) and (max-width: 700px) 50vw, (-webkit-min-device-pixel-ratio: 4) and (max-width: 700px) 50vw, (min-resolution: 3dppx) and (max-width: 700px) 67vw, (-webkit-min-device-pixel-ratio: 3) and (max-width: 700px) 65vw, (min-resolution: 2.5dppx) and (max-width: 700px) 80vw, (-webkit-min-device-pixel-ratio: 2.5) and (max-width: 700px) 80vw, (min-resolution: 2dppx) and (max-width: 700px) 100vw, (-webkit-min-device-pixel-ratio: 2) and (max-width: 700px) 100vw, 700px"><source srcset="https://miro.medium.com/v2/resize:fit:640/0*xgJUXKfck5DuQOg1 640w, https://miro.medium.com/v2/resize:fit:720/0*xgJUXKfck5DuQOg1 720w, https://miro.medium.com/v2/resize:fit:750/0*xgJUXKfck5DuQOg1 750w, https://miro.medium.com/v2/resize:fit:786/0*xgJUXKfck5DuQOg1 786w, https://miro.medium.com/v2/resize:fit:828/0*xgJUXKfck5DuQOg1 828w, https://miro.medium.com/v2/resize:fit:1100/0*xgJUXKfck5DuQOg1 1100w, https://miro.medium.com/v2/resize:fit:1400/0*xgJUXKfck5DuQOg1 1400w" sizes="(min-resolution: 4dppx) and (max-width: 700px) 50vw, (-webkit-min-device-pixel-ratio: 4) and (max-width: 700px) 50vw, (min-resolution: 3dppx) and (max-width: 700px) 67vw, (-webkit-min-device-pixel-ratio: 3) and (max-width: 700px) 65vw, (min-resolution: 2.5dppx) and (max-width: 700px) 80vw, (-webkit-min-device-pixel-ratio: 2.5) and (max-width: 700px) 80vw, (min-resolution: 2dppx) and (max-width: 700px) 100vw, (-webkit-min-device-pixel-ratio: 2) and (max-width: 700px) 100vw, 700px"><img src="https://miro.medium.com/v2/resize:fit:875/0*xgJUXKfck5DuQOg1" alt="An EC2 node running a single application vs. a Kubernetes node running 3 applications."></picture></p><p>Figure 1: EC2 Nodes vs Kubernetes Nodes</p><h2><strong>Stage 2: Multiple Cluster Types, Independently Autoscaled</strong></h2><p>The second stage of our cluster configuration began when more diverse workload types, each with different requirements, sought to run on Kubernetes. To accommodate their needs, we created a cluster type abstraction. A “cluster type” defines the underlying configuration for a cluster, meaning that all clusters of a cluster type are identical, from node type to different cluster component settings.</p><p>More cluster types led to more clusters, and our initial strategy of manually managing capacity of each cluster quickly fell apart. To remedy this, we added the Kubernetes <a href="https://github.com/kubernetes/autoscaler">Cluster Autoscaler</a> to each of our clusters. This component automatically adjusts cluster size based on pod requests — if a cluster’s capacity is exhausted, and a pending pod’s request could be filled by adding a new node, Cluster Autoscaler launches one. Similarly, if there are nodes in a cluster that have been underutilized for an extended period of time, Cluster Autoscaler will remove these from the cluster. Adding this component worked beautifully for our setup, saved us roughly 5% of our total cloud spend, and the operational overhead of manually scaling clusters.</p>', 'tech', 'Gokberk', 'https://miro.medium.com/v2/resize:fit:828/format:webp/0*CedYKpSYMIGEiX7m', '2024-09-06 23:06:28'),
	(223229, '25 BEST THINGS TO DO IN SAINT JOHN, NEW BRUNSWICK', '<p>Saint John New Brunswick just might be the most underrated city in Canada. And during our two visits, we found plenty of things to do in Saint John, that will completely surprise you. With historic buildings converted to chic coffee shops and micro brewpubs, local artists setting up shop downtown, and nature at your fingertips, Saint John has quickly turned into one of Canada’s coolest cities to visit.</p><h2><strong>Things To Do In Saint John, New Brunswick</strong></h2><p>Saint John, NB is one of Canada’s oldest cities dating back to 1604. Discovered by Samuel de Champlain, it became a major hub due to its inviting harbour. The city has been having a renaissance this past decade with Millenials opening businesses and artists setting up shop. If you are planning an East Coast <a href="https://theplanetd.com/best-road-trips"><strong>road trip, </strong></a>be sure to put Saint John, New Brunswick on your list. Fundy National Park, located in southern New Brunswick, is easily accessible from Saint John and offers wilderness areas, wildlife, and scenic landscapes. These are the top attractions in Saint John and the best day trips from the city.</p><p>While the rugged coast of New Brunswick is a major draw road tripper, there are plenty of things to do in Saint John located in the heart of the city. We suggest spending at least two nights to take in the energy of the town and to explore the nightlife.<br><br><strong>1. Reversing Falls</strong><br>As one local said to us, “The Reversing Falls of Saint John is probably the most overrated attraction in the city, but the science behind it is interesting.” And once you understand that the Bay of Fundy is so powerful that it reverses the flow of the Saint John River twice a day, it’s pretty cool.</p><p>We checked it out from two different viewpoints. I highly recommend going to the Reversing Falls Skywalk and Bridge to see it from above.</p><p>Saint John itself s located on the Bay of Fundy creating a unique phenomenon as the&nbsp;Bay of Fundy’s high tide collides with the Saint John River. As the tides rise, it overpowers the river reversing the flow. It’s a cool thing to see the river flowing one way and then smashing against the tide creating rapids and whirlpools.<br><br>…</p>', 'travel', 'Gokberk', 'https://theplanetd.com/images/Saint-John-New-Brunswick-Park-941x627.jpg', '2024-09-06 19:41:25'),
	(223230, 'TURKEY TRAVEL GUIDE', '<h2><strong>Fast Facts</strong></h2><ul><li>Turkish power voltage is 220&nbsp;V 50 Hz; Power sockets&nbsp;C &amp; E</li><li>The&nbsp;local currency is Turkish Lira (TRY) and is around 1.5 TRY&nbsp;to 1 USD</li><li>The easiest currencies to convert to TRY are US dollars and Euros; change offices offer the best rates. It is advisable that travellers carry a mixture of cash (in small denominations), an ATM card and a major credit card to avoid problems.</li><li>Since 2014, travellers&nbsp;<strong>can not&nbsp;</strong>get a visa upon arrival in Turkey. &nbsp;Last year, a new visa system was implemented, which now requires travellers to apply for a tourist visa or “e-visa” online at the official&nbsp;<a href="https://www.evisa.gov.tr/en/"><strong>Turkish government website</strong></a>.</li><li>Make sure to book your hotel along the T-1 Tram for a hassle free stay in Istanbul. This line takes you to all major areas in the city, such as Sultanahmet for the Blue Mosque and Hagia Sofia, the Grand Bazaar, the Spice Bazaar, the Galata Bridge.</li><li>Haggling&nbsp;is a way of life in Istanbul, especially in the Grand Bazaar and Spice Bazaar.&nbsp;Always negotiate as prices can be double or even triple the original price – rule of thumb is immediately&nbsp;halve the original asking price and start from there!<br><br><strong>Food</strong></li></ul><p><strong>Food</strong>:</p><ul><li><strong>Corba</strong> – This is a very simple yet delicious soup dish that is also very popular in Turkey. Most of the Turks have it for breakfast too. Black cabbage soup is traditional in the black sea region.</li><li><strong>Kumpir</strong> – This is a Turkish street food mostly found on beach resorts. These are potato jackets with an outer crispy skin and soft inside skin mashed up with butter.</li><li><strong>Pide or Lahmacun </strong>– This is a popular dish in a cheap traditional Turkish restaurant. The top of the pastry is topped with cheese, egg, chicken or diced meat. It is an ideal option for vegetarians and is used as fillings.</li><li><strong>Baklava </strong>– This is a popular Turkish sweet that is perfect for people with a sweet tooth. The pastry is fulfilled with nuts and syrup.</li><li><strong>Mezes</strong> – These are eaten as appetizers, which are snacks before meals. It consists of a hot paste made from peppers, yogurt, garlic, and cucumbers.&nbsp;</li><li><strong>Meatballs (Kofte) </strong>– These are sold as street food in wraps and served with rice and salad in restaurants. There are various kinds of meatballs depending upon the region they are being made.</li><li><strong>Street Kebab </strong>– These are popular street foods and are held in large skewers.<br>&nbsp;</li></ul><p><strong>Transportation</strong></p><p><strong>Getting to</strong>:</p><p><strong>Flights:</strong> There are many direct flights from Europe to Turkey as well as cities in North America such as New York and Los Angeles.</p><p>You can check for the best flights to Turkey on <a href="https://theplanetd.com/skyscanner"><strong>Skyscanner</strong></a>.</p><p><strong>Transportation:</strong></p><p><strong>Buses</strong>: Modern buses in Turkey costs TL8 per 100km.</p><p><strong>Taxis</strong>/<strong>Uber</strong>: All the yellow cabs contain meters. They start at a standard rate of 3.20 Turkish Lira and charges are 2 TL per km.</p><p><strong>Car Rental:</strong>&nbsp;You can rent a car for as low as 50 Turkish lira per day. Although these rates keep changing with cities.</p><p>You can also compare <a href="https://theplanetd.com/CarRental"><strong>prices here</strong></a>.</p>', 'travel', 'Gokberk', 'https://plus.unsplash.com/premium_photo-1661955588369-b0d28de38b45?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dHVya2V5JTIwY291bnRyeXxlbnwwfHwwfHx8MA%3D%3D', '2024-09-06 19:44:33'),
	(223231, '19 New Games to Drop for GeForce NOW in September', '<p>Fall will be here soon, so leaf it to <a href="http://geforcenow.com/">GeForce NOW</a> to bring the games, with 19 joining the cloud in September.</p><p>Get started with the seven games available to stream this week, and a day one PC Game Pass title, <i>Age of Mythology: Retold,</i> from the creators of the award-winning <i>Age of Empires</i> franchise World’s Edge, Forgotten Empires and Xbox Game Studios.</p><p>The Open Beta for <i>Call of Duty: Black Ops 6</i> runs Sept. 6-9, offering everyone a chance to experience game-changing innovations before the title officially launches on Oct. 25. Members can stream the Battle.net and Steam versions of the Open Beta instantly this week on GeForce NOW to jump right into the action.</p><p>Fall will be here soon, so leaf it to <a href="http://geforcenow.com/">GeForce NOW</a> to bring the games, with 19 joining the cloud in September.</p><p>Get started with the seven games available to stream this week, and a day one PC Game Pass title, <i>Age of Mythology: Retold,</i> from the creators of the award-winning <i>Age of Empires</i> franchise World’s Edge, Forgotten Empires and Xbox Game Studios.</p><p>The Open Beta for <i>Call of Duty: Black Ops 6</i> runs Sept. 6-9, offering everyone a chance to experience game-changing innovations before the title officially launches on Oct. 25. Members can stream the Battle.net and Steam versions of the Open Beta instantly this week on GeForce NOW to jump right into the action.</p><h2><strong>Where Myths and Heroes Collide</strong></h2><figure class="image"><img src="https://blogs.nvidia.com/wp-content/uploads/2024/09/GFN_Thursday-Age_of_Mythology_Retold-672x378.jpg" alt="Age of Mythology on GeForce NOW" srcset="https://blogs.nvidia.com/wp-content/uploads/2024/09/GFN_Thursday-Age_of_Mythology_Retold-672x378.jpg 672w, https://blogs.nvidia.com/wp-content/uploads/2024/09/GFN_Thursday-Age_of_Mythology_Retold-400x225.jpg 400w, https://blogs.nvidia.com/wp-content/uploads/2024/09/GFN_Thursday-Age_of_Mythology_Retold-768x432.jpg 768w, https://blogs.nvidia.com/wp-content/uploads/2024/09/GFN_Thursday-Age_of_Mythology_Retold-1536x864.jpg 1536w, https://blogs.nvidia.com/wp-content/uploads/2024/09/GFN_Thursday-Age_of_Mythology_Retold-scaled.jpg 2048w, https://blogs.nvidia.com/wp-content/uploads/2024/09/GFN_Thursday-Age_of_Mythology_Retold-800x450.jpg 800w, https://blogs.nvidia.com/wp-content/uploads/2024/09/GFN_Thursday-Age_of_Mythology_Retold-382x215.jpg 382w, https://blogs.nvidia.com/wp-content/uploads/2024/09/GFN_Thursday-Age_of_Mythology_Retold-178x100.jpg 178w, https://blogs.nvidia.com/wp-content/uploads/2024/09/GFN_Thursday-Age_of_Mythology_Retold-1280x720.jpg 1280w" sizes="100vw" width="672"></figure><p><i>A vast, mythical world to explore with friends? Say no more…</i></p><p><i>Age of Mythology: Retold</i> revitalizes the classic real-time strategy game by merging its beloved elements with modern visuals.</p><p>Get immersed in a mythical universe, command legendary units and call upon the powers of various gods from the Atlantean, Greek, Egyptian and Norse pantheons. The single-player experience features a 50-mission campaign, including engaging battles and myth exploration in iconic locations like Troy and Midgard. Challenge friends in head-to-head matches or cooperate to take on advanced, AI-powered opponents.</p><p>Call upon the gods from the cloud with an <a href="http://geforcenow.com/memberhsip">Ultimate and Priority membership</a> and stream the game across devices. Games update automatically in the cloud, so members can dive into the action without having to wait.</p><h2><strong>September Gets Better With New Games</strong></h2><figure class="image"><img src="https://blogs.nvidia.com/wp-content/uploads/2024/09/GFN_Thursday-The_Casting_of_Frank_Stone-672x336.jpg" alt="The Casting of Frank Stone on GeForce NOW" srcset="https://blogs.nvidia.com/wp-content/uploads/2024/09/GFN_Thursday-The_Casting_of_Frank_Stone-672x336.jpg 672w, https://blogs.nvidia.com/wp-content/uploads/2024/09/GFN_Thursday-The_Casting_of_Frank_Stone-400x200.jpg 400w, https://blogs.nvidia.com/wp-content/uploads/2024/09/GFN_Thursday-The_Casting_of_Frank_Stone-768x384.jpg 768w, https://blogs.nvidia.com/wp-content/uploads/2024/09/GFN_Thursday-The_Casting_of_Frank_Stone-1536x768.jpg 1536w, https://blogs.nvidia.com/wp-content/uploads/2024/09/GFN_Thursday-The_Casting_of_Frank_Stone-842x421.jpg 842w, https://blogs.nvidia.com/wp-content/uploads/2024/09/GFN_Thursday-The_Casting_of_Frank_Stone-406x203.jpg 406w, https://blogs.nvidia.com/wp-content/uploads/2024/09/GFN_Thursday-The_Casting_of_Frank_Stone-188x94.jpg 188w, https://blogs.nvidia.com/wp-content/uploads/2024/09/GFN_Thursday-The_Casting_of_Frank_Stone-1280x640.jpg 1280w, https://blogs.nvidia.com/wp-content/uploads/2024/09/GFN_Thursday-The_Casting_of_Frank_Stone.jpg 2048w" sizes="100vw" width="672"></figure><p><i>Choose your fate.</i></p><p>Catch the storytelling prowess of Supermassive Games in <i>The Casting of Frank Stone</i>, available to stream this week for members. The shadow of Frank Stone looms over Cedar Hills, a town forever altered by his violent past. Delve into the mystery of Cedar Hills alongside an original cast of characters bound together on a twisted journey where nothing is quite as it seems. Every decision shapes the story and impacts the fate of the characters.</p><p>In addition, members can look for the following games this week:</p><ul><li><i>The Casting of Frank Stone </i>(New release on <a href="https://store.steampowered.com/app/2223840?utm_source=nvidia&amp;utm_campaign=geforce_now">Steam</a>, Sept. 3)</li><li><i>Age of Mythology </i>(New release on <a href="https://store.steampowered.com/app/1934680?utm_source=nvidia&amp;utm_campaign=geforce_now">Steam</a> and <a href="https://www.xbox.com/games/store/age-of-mythology-retold-standard-edition/9npkgvxpfrsx?utm_source=nvidia&amp;utm_campaign=geforce_now">Xbox</a>, available on PC Game Pass, Sept.4 )</li><li><i>Sniper Ghost Warrior Contracts&nbsp; </i>(New release on <a href="https://www.epicgames.com/store/p/sniper-ghost-warrior-contracts-c772b9?utm_source=nvidia&amp;utm_campaign=geforce_now">Epic Games Store</a>, early access Sept. 5)</li><li><i>Warhammer 40,000: Space Marine 2 </i>(New release on <a href="https://store.steampowered.com/app/2183900?utm_source=nvidia&amp;utm_campaign=geforce_now">Steam</a>, early access Sept. 5)</li><li><i>Crime Scene Cleaner </i>(<a href="https://store.steampowered.com/app/1040200?utm_source=nvidia&amp;utm_campaign=geforce_now">Steam</a>)</li><li><i>FINAL FANTASY XVI </i>Demo (<a href="https://www.epicgames.com/store/p/final-fantasy-xvi-demo-c289c2?utm_source=nvidia&amp;utm_campaign=geforce_now">Epic Games Store</a>)</li><li><i>Sins of a Solar Empire II </i>(<a href="https://store.steampowered.com/app/1575940?utm_source=nvidia&amp;utm_campaign=geforce_now">Steam</a>)</li></ul><p>Here’s what members can expect for the rest of September:</p><ul><li><i>Frostpunk 2 </i>(New release on <a href="https://store.steampowered.com/app/1601580?utm_source=nvidia&amp;utm_campaign=geforce_now">Steam</a> and Xbox available&nbsp; on PC Game Pass, Sept. 17)</li><li><i>FINAL FANTASY XVI </i>(New release on Steam and <a href="https://www.epicgames.com/store/p/final-fantasy-xvi?utm_source=nvidia&amp;utm_campaign=geforce_now">Epic Games Store</a>, Sept. 17)</li><li><i>The Plucky Squire </i>(New release on <a href="https://store.steampowered.com/app/1627570?utm_source=nvidia&amp;utm_campaign=geforce_now">Steam</a>, Sept. 17)</li><li><i>Tiny Glade </i>(New release on <a href="https://store.steampowered.com/app/2198150?utm_source=nvidia&amp;utm_campaign=geforce_now">Steam</a>, Sept. 23)</li><li><i>Disney Epic Mickey: Rebrushed </i>(New release on <a href="https://store.steampowered.com/app/1522160?utm_source=nvidia&amp;utm_campaign=geforce_now">Steam</a>, Sept. 24)</li><li><i>Greedfall II: The Dying World </i>(New release on <a href="https://store.steampowered.com/app/1997660?utm_source=nvidia&amp;utm_campaign=geforce_now">Steam</a>, Sept. 24)</li><li><i>Mechabellum </i>( <a href="https://store.steampowered.com/app/669330?utm_source=nvidia&amp;utm_campaign=geforce_now">Steam</a>)</li><li><i>Blacksmith Master </i>(New release on <a href="https://store.steampowered.com/app/2292800?utm_source=nvidia&amp;utm_campaign=geforce_now">Steam</a>, Sept. 26)</li><li><i>Breachway </i>(New release on <a href="https://store.steampowered.com/app/2118810?utm_source=nvidia&amp;utm_campaign=geforce_now">Steam</a>, Sept. 26)</li><li><i>REKA </i>(New release on <a href="https://store.steampowered.com/app/1737870?utm_source=nvidia&amp;utm_campaign=geforce_now">Steam</a>)</li><li><i>Test Drive Unlimited Solar Crown </i>(New release on <a href="https://store.steampowered.com/app/1249970?utm_source=nvidia&amp;utm_campaign=geforce_now">Steam</a>)</li><li><i>Rider’s Republic </i>(New release on PC Game Pass, Sept. 11). To begin playing, members need to activate access, and can refer to the <a href="https://nvidia.custhelp.com/app/answers/detail/a_id/5508/?utm_source=nvidia&amp;utm_campaign=geforce_now">help article</a> for instructions.</li></ul>', 'engineering', 'Gokberk', 'https://blogs.nvidia.com/wp-content/uploads/2024/08/black_wind_mountain_10-800x450.png', '2024-09-09 19:47:45'),
	(223232, 'Air Fryer Dry Ribs', '<p><strong>If you’ve had dry ribs at the pub and want to make them at home, these ribs are for you.</strong></p><p>If you’re a pub-lover just for the pub food, you’re my kind of person. I always, always happily agree to go to the bar or the pub because bar food! Bite-sized, usually deep-fried, and always delicious – I’m down.</p><h2>What are dry ribs?</h2><p>Dry ribs are deep-fried, seasoned pork riblets. They’re crispy, juicy, and completely addictive. I’m pretty sure dry ribs aren’t a popular menu item, but whenever I see them I’m excited because they’re so good. Usually, I see riblets served as saucy ribs but trust me when I say, dry riblets are superior. First off, they’re faster and easier to make and second, they aren’t super sticky and saucy which makes them a better finger food.</p><p>These ribs are perfect for game day, a snacky-snack, or even a meal if you make a vegetable side dish and some rice. I love them because they’re pretty hands off thanks to the air fryer. Traditionally dry ribs are deep-fried but I’m on the <a href="https://iamafoodblog.com/category/recipes/gadgets/air-fryer-recipes/">air fryer train</a> and I’m not getting off anytime soon.</p>', 'food', 'Gokberk', 'https://iamafoodblog.b-cdn.net/wp-content/uploads/2024/08/air-fryer-dry-ribs-9580w-2048x1366.webp', '2024-09-08 19:50:54');

-- tablo yapısı dökülüyor blogdb.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- blogdb.categories: ~5 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `categories` (`id`, `name`) VALUES
	(1, 'food'),
	(2, 'fashion'),
	(3, 'travel'),
	(4, 'tech'),
	(5, 'engineering');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
