-- MySQL dump 10.13  Distrib 5.6.35, for Linux (x86_64)
--
-- Host: localhost    Database: db_blog
-- ------------------------------------------------------
-- Server version	5.6.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_blog`
--

DROP TABLE IF EXISTS `t_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `summary` varchar(400) DEFAULT NULL,
  `releaseDate` datetime DEFAULT NULL,
  `clickHit` int(11) DEFAULT NULL,
  `replyHit` int(11) DEFAULT NULL,
  `content` text,
  `typeId` int(11) DEFAULT NULL,
  `keyWord` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `typeId` (`typeId`),
  CONSTRAINT `t_blog_ibfk_1` FOREIGN KEY (`typeId`) REFERENCES `t_blogtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_blog`
--

LOCK TABLES `t_blog` WRITE;
/*!40000 ALTER TABLE `t_blog` DISABLE KEYS */;
INSERT INTO `t_blog` VALUES (45,'老小孩',' -----------本故事人物纯属虚构，如有雷同，请主动对号入座，并及时联系----------\n\n    广场上的探照灯把夜晚照的煞白煞白的，昏昏暗暗，好像一个垂暮的丑陋女人在哀叹她黯淡的一生。\n     灯光拙劣的角度没有照出来楼角美丽的雕塑。整片的墙却护住了一个半明半灭的阴影。一个老妇女穿着漂亮的长','2017-04-19 00:14:23',0,0,'<p class=\"ql-align-center\">&nbsp;-----------本故事人物纯属虚构，如有雷同，请主动对号入座，并及时联系----------</p><p><br></p><p>    广场上的探照灯把夜晚照的煞白煞白的，昏昏暗暗，好像一个垂暮的丑陋女人在哀叹她黯淡的一生。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;灯光拙劣的角度没有照出来楼角美丽的雕塑。整片的墙却护住了一个半明半灭的阴影。一个老妇女穿着漂亮的长裙子抱着一只狗，混混沌沌说着一些难以分辨的语言。狗走开后，她抱着自己的膝盖嘀嘀咕咕。她的身材修长极了，年轻的时候绝对是一个美艳如花让身边女人侧目嫉妒的女子。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;突然昨天看见的一个小孩在我的脑海中愈来愈清晰。他在你的脑袋中渐渐跳跃，一种直直地逼到你瞳孔的感觉。</p><p>就是昨天的事情，没错，就在昨天我们出去吃面的时候——</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在去面馆的路上，我们习惯地东张西望，搜寻所有漂亮的脸蛋，绝美的身材以及白皙的大腿。当上衣的下摆越提越高，衣领越拉越低，我们深切的感受到这个时代在进步。没错，一对白萝卜在眼前晃动。肤如凝脂，紧绷的在夕阳的余晖下都能熠熠生光。可惜了，我分明看见在那根萝卜在落地的时候，它的皮囊仍旧往前位移；在萝卜拔腿想走的时候，它的皮囊似乎还没休息到位就被生拉硬拽着拖走了。对的，你们知道，在我表现这样无礼不正经的时候，我会找个借口缓解一下气氛。可事实就是这样，但这并不会影响我的胃口。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;白萝卜旁边的小孩吸引我了。没错，我看见了他的眼睛，他不是一般的小孩子。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这个小孩就在白萝卜旁边，身边没有别人，一定是跟白萝卜一起的。但是他有离白萝卜足够远，像是一个迷路的小朋友。看上去他只有三岁小孩的个子，瘦弱单薄，脑袋不协调的大，撑圆了眼睛。他没有牵任何人的手，走得很谨慎，脑袋不停的张望，像是一个特务。没错，就是他的那个眼神，不是三岁的傻，不是四岁的天真，不是五岁的萌萌哒。他的眼神扫过我，但是没有停留。像我等浑身带着酸气的可以被空气掩盖的人，伤害指数断然为零，连小混混都不愿意拦住我们收取保护费以向同伙证明他们身上真的有痞子习性。这小孩抬着头，他目光能看见每一个人的下颚。没错，我没有蹲下来确认他到底能看到多高，因为我知道路上的人一定不喜欢我这样做，但他确实和别人不一样。我明白，他不屑于其他小孩靠嘟嘴挤眼睛换来别人廉价的温柔。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我们在面馆坐下来。面馆的生意好极了。白萝卜和老小孩也走进来了。他们一共有三个人，还有个年纪稍微大点的女人，对，因为她是跟着他两过来的，我注意到她了。他们三个人坐在两个人的座位上。小孩背对着我，白萝卜正对着我，另外一个加了一个座位，侧对着我。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;妇女的腰上挎着一个卖西瓜常用的钱包，她点了两张纸币要了面。我想她是妈妈，另外两个是姐弟俩。对，就是这样的。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我看见了白萝卜的脸，很标致。我很想描述一下，但是我拙劣的笔恐怕误导了读者的想象。她的眉毛勾成了细线，坐落在高高的鼻梁上面，像是江南的白墙灰瓦憨厚的样子。她的嘴唇鲜红肥厚，标准的瓜子脸在她的笑容下撑成一个蓝宝石比例倒三角的轮廓，再蒙上漂亮的皮肤，那样的比例，真正是美丽极了。别人都说嘴唇肥厚的人特别善良。但是她直勾勾的眼神盯着小男孩，他两的眼神如出一辙。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我突然背脊发凉，这个似曾相识的小孩像极了《酒国》里的小老孩。那个被卖到酒店作为食材的长着小孩容貌的老头。酒国里的小老孩就是个老头。一身瘆人的红衣，一脸的横肉，让卖主都不能得到一个好价钱。他是没有办法跟面前的小朋友的比较的，面前的小朋友纤细的背影，乌黑的头发顶多是一个老小孩。但是眼看着面前的老小孩捏着筷根轻松的拉着面条，酒国里的小老孩交叉着手收在胸前冷静指挥着吸着鼻涕的小孩如何逃跑，我不得不将他们联系在一起。对面的白萝卜还低着头翻着眼睛对着老小孩笑。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我使劲咬了一口蒜头，据说里面有导致口臭的硫化物，似乎跟硫磺像是同宗同系，能辟邪。终于我听到了耳边的嘈杂声：有服务员传面的脚步声，旁边男男女女呢呢喃喃声，牙齿咬断面条滑在嗓子里的咕噜咕噜声，肺部挤压着低气压呼次呼次的声音，毛孔停止交换空气渗出汗液的声音。我们一桌子都在盯着自己的碗，看着里面的泼了辣酱黏黏糊糊地粘着面条，翻一筷子咬一口。就是这样的辛辣刺激才能让人保持清醒。似乎所有能让人上瘾的味道初次体验都是让人本能拒绝的，比如泔水味道的啤酒，在整个脑腔里乱串的呛人的香烟，甚至是北京的豆汁重庆的辣油。我们甚至觉得人们喜欢这样的标新立异，或者说在庞大的群体中靠这种变态体验的认同感来找到自己的小小群体从而获得安全感。人天生是孤独的，人天生是容易聚合的，人天生是容易抵触小小群体之外的人的。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;老小孩的背部的肩胛骨清晰可见，瘦弱的胳膊拎着面上下晃动。手夹着的地方离筷头很远，据说这样的人嫁的远或者娶的远。这不无道理，眼前的这位小孩将会是一个很好的证明。我们吃完饭，又从他们身边走过。老小孩的头发不是小朋友特有的柔软的毛发，他一头的毛寸根根直立，稀稀落落插在宽大的脑袋上，架在细小的脖子上。他们还是看都没看我们一眼。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在教学区买的一罐啤酒两块五，宿舍楼下面三块。他娘的，都是一个味儿，又省了五毛钱。</p><p><br></p><p><br></p>',2,''),(57,'一个老头','	年初五初六，村子里的青年人就出去差不多了。这个老头在我吃晚饭的时候坐在我家唠嗑，整个村子也就没剩几家的门敞开着。老头说他这左眼几乎看不见了，右眼也模糊了。奶奶说：“那怎么不在过年的时候叫你儿子给你看看去。”“说了呀，怎么没说，在吃饭的时候跟他说了，他嗯了一声，也没带我去看医生”，老人的声音很低，他一直这么说','2017-04-21 00:08:51',0,0,'<p>	年初五初六，村子里的青年人就出去差不多了。这个老头在我吃晚饭的时候坐在我家唠嗑，整个村子也就没剩几家的门敞开着。老头说他这左眼几乎看不见了，右眼也模糊了。奶奶说：“那怎么不在过年的时候叫你儿子给你看看去。”“说了呀，怎么没说，在吃饭的时候跟他说了，他嗯了一声，也没带我去看医生”，老人的声音很低，他一直这么说话，一个字一个字很匀速地吐出来，有气无力，却很稳重，像是一位武术大师走出来的步子。“可能是后来你儿子是给忘了吧。”老头弓腰坐着没出声，奶奶有提高声音重复了刚刚的那句话。老头慢声慢气地说：“嗯，可能是过年事儿多给忘了吧。”我吃饭，很少插话，没什么内容是我可以补充的。“我儿子说带我去他那儿过，我不去”，沉默了很长一段时间老头突然冒出来句话。“唉，又不去呢？在那儿好歹有人照应”，老头的妻子很早就去世了，他自己一个人过。“不去不去，哪有呆在家里舒服”，“嗯啊，那倒是”，“以后死也死在家里，啊，哈哈”，老头连笑的时候也是一个音一个音的吐字。吃完饭收拾桌子，老头挺起身子说：“唉，回家喽，回家睡觉喽。”便走出去了，外面黑乎乎的，但时间还很早。我说，这么早怎么睡得着。“哪会这么早就睡觉，他是又出去走，去公路上转转，在村里转转，可是家家关门落锁的，没人家去的，这老头也是闷的慌，以前在这儿天天看电视看到打瞌睡才回家。”</p><p>	老头果然往公路那边走了。</p><p>	前两天傍晚路过农田，老头坐在一只小木头板凳上除草，他立起腰来笑了笑，我也笑了笑便走过了，我想他是准备给我一个最平常的问候。</p><p>	老头一个人坐在一览无余黄豆田里，像是一只小土堆突出在广阔的土质松散的荒土地里。老头看上去瘦瘦的，但并不单薄。脸上古铜色的皱纹勾勒出头骨的轮廓，佝偻着腰。不像国外的老人一样老了之后浑身的肉集体下垂，层峦叠嶂，面前的这位老人一眼就能想象出他年轻时候健壮的体魄。好似一片树叶，枯黄了，经脉通明，但还是原来的模样。村子里的人习惯在这样的天气，在农田归来的时候站在村口的马路上唠唠村子几十户人家的长长短短。这好像是几十年的传统，从我记事起就有的传统，但现在的聚会只是短时间的了，天还没黑透就早早收场了。老头一个人坐在长木板凳上，笑吟吟的，不做声，不时插上两句话。老人习惯走到村头，看着村子。这几年，村子的公路就修了两次，路越修越平，越修越宽，越修越漂亮，不过从上面走过的村里面的人越来越少。路上的车很多，车里的人掠过村里稀疏的瓦屋回到城里，村里的人扫过路上狂奔的车子回到老屋。村外越来便利，村里越来荒芜，老头这样感叹道。年轻人怕近，老年人怕远。当那些“留守儿童”长成了年轻人远离了村庄，那些带大我们的祖辈们就只能固守着这寸土地成了“留守老人”。而且，显然地，现在的村子比以往更荒芜，更没有人味。在这样的大夏天，黑了天觉得热的话，光着屁股出门纳凉，除了蚊子跟着你，没有人跟着你笑话这孩子疯了。很显然，老头跟我一个想法，不过，坚持每天出门走走散散的只剩他了。</p><p>	奶奶半开玩笑地说，他每天这样出来走走也好，万一哪天死在家里都没人知道。</p><p><br></p>',2,''),(69,'vue在history模式下的nginx配置','对于的SPA的应用需要修改nginx配置，不然会经常出现404错误。\n详细点说，SPA程序编译之后只有一个index.html，但是在vue-router中是可以有url为 http://ip:prot/aboutMe.要是按照原来的配置方式，nginx是不能正确找到页面的。\n\n所以，需要重新配置nginx如','2017-07-12 02:28:03',0,0,'<p>对于的SPA的应用需要修改nginx配置，不然会经常出现404错误。</p><p>详细点说，SPA程序编译之后只有一个index.html，但是在vue-router中是可以有url为<u> http://ip:prot/aboutMe</u>.要是按照原来的配置方式，nginx是不能正确找到页面的。</p><p><br></p><p>所以，需要重新配置nginx如下：</p><p><br></p><pre class=\"ql-syntax\" spellcheck=\"false\">server {\n        listen       80 default_server;\n        listen       [::]:80 default_server;\n        server_name  _;\n        root         /data;\n\n        # Load configuration files for the default server block.\n        include /etc/nginx/default.d/*.conf;\n\n        location / {\n                try_files $uri $uri/ /index.html =404;\n        }\n\n    }\n</pre><p><br></p>',1,''),(71,'springBoot的跨域设置','在利用vue将前后端完全分离之后，前端利用的ajax完成数据模型请求，从而影响视图层的展示。\n原来可以利用ngnix的反响代理完成，但是我们也可以配置controller层的跨域策略。\n在springBoot中的Main函数中添加全局跨域允许配置如下：\n\n\n@SpringBootApplication\npub','2017-07-13 02:19:25',0,0,'<p>在利用vue将前后端完全分离之后，前端利用的ajax完成数据模型请求，从而影响视图层的展示。</p><p>原来可以利用ngnix的反响代理完成，但是我们也可以配置controller层的跨域策略。</p><p>在springBoot中的Main函数中添加全局跨域允许配置如下：</p><p><br></p><pre class=\"ql-syntax\" spellcheck=\"false\">\n@SpringBootApplication\npublic class SpringbootSoaBlogControllerApplication {\n\n&nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SpringApplication.run(SpringbootSoaBlogControllerApplication.class, args);\n&nbsp;&nbsp;&nbsp;&nbsp;}\n\n&nbsp;&nbsp;&nbsp;&nbsp;//全局跨域允许设置\n&nbsp;&nbsp;&nbsp;&nbsp;@Bean\n&nbsp;&nbsp;&nbsp;&nbsp;public WebMvcConfigurer corsConfigurer() {\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return new WebMvcConfigurerAdapter() {\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@Override\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public void addCorsMappings(CorsRegistry registry) {\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;registry.addMapping(\"/**\").allowedOrigins(\"http://localhost:9998\");\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;};\n&nbsp;&nbsp;&nbsp;&nbsp;}\n}\n</pre><p><br></p>',1,''),(72,'mysql5.7错误incompatible with sql_mode=only_full_group_by','在布置docker的时候，由于daocloud上只有5.7的现成的mysql镜像。但是部署好了之后进行关联查询的时候出现如下错误：\n\nServer version: 5.7.18 MySQL Community Server (GPL)\n报错Expression #1 of SELECT list is no','2017-07-13 02:19:25',0,0,'<p>在布置docker的时候，由于daocloud上只有<a href=\"https://hub.daocloud.io/repos/fa51c1d6-9dc2-49d9-91ac-4bbfc24a1bda\" target=\"_blank\">5.7的现成的mysql镜像</a>。但是部署好了之后进行关联查询的时候出现如下错误：</p><p><br></p><p>Server version: 5.7.18 MySQL Community Server (GPL)</p><p>报错Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column \'db_blog.t2.id\' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by</p><p><br></p><p>一度认为是自己的dao层实现问题，网上查询无果，更有甚者，<a href=\"http://blog.csdn.net/hw1287789687/article/details/50990062\" target=\"_blank\">直接表明没有解决方法</a>。</p><p><br></p><p>基于此，我的解决方法是：</p><p>硬着头皮pull docker.io的5.6的mysql镜像。确实是非常慢、非常慢！</p>',1,''),(73,'酸文','时间穿过秋天，嗖地一下跑过了，来到了冬天，\n秋天树叶子哗啦啦砸在地上，\n像神庙前的信徒呼啦啦集体下跪弯腰做祷告，\n像送灵的仪仗队从头顶上散落的冥币。\n被风挤到南边的路基上。\n从路的这边缩着脖子走到路的那边，穿过送灵人的身体，\n他们的身体透明又冰冷。\n天将大雪，初降的雪细细的，像极了精细的盐，\n被风吹得像海浪，','2017-07-13 02:20:04',0,0,'<p>时间穿过秋天，嗖地一下跑过了，来到了冬天，</p><p>秋天树叶子哗啦啦砸在地上，</p><p>像神庙前的信徒呼啦啦集体下跪弯腰做祷告，</p><p>像送灵的仪仗队从头顶上散落的冥币。</p><p>被风挤到南边的路基上。</p><p>从路的这边缩着脖子走到路的那边，穿过送灵人的身体，</p><p>他们的身体透明又冰冷。</p><p>天将大雪，初降的雪细细的，像极了精细的盐，</p><p>被风吹得像海浪，像腾起的沙尘。</p><p>站在中间，雪花围绕着打转，</p><p>我试着学习上帝一样思考，会不会其中的一粒雪花上有一个生物想我一样存活着，</p><p>有着相同的简单快乐和忧伤。</p><p><br></p><p>路面上的晶体在昏黄的灯光下闪着漂亮的光芒。</p><p><br></p><p>时间拥拥嚷嚷地跑，</p><p>上一分钟和下一分钟疾步如飞都能擦出来火花，</p><p>似乎随时都有可能发生爆炸。</p><p>人人包紧脑袋，</p><p>五颜六色奇形怪状的鞋子行色匆匆，</p><p>路太滑一不小心就是个趔趄。</p><p>风风火火热热闹闹挤进四面围墙的空间，</p><p>身上有食堂的烟火的味道，有雪白的清凉的味道，有洗衣粉和淡淡香水好闻的味道。</p><p>有左右摇曳的飘飘长发，也有亮油油的蓬乱的头发，</p><p>一个是平原上色彩斑斓的绚烂花朵，一个是插入云霄山峰的陡峭巍峨。</p><p>一样都很美丽。</p><p><br></p><p>胖女孩捏着火腿面包在走廊上摇摇晃晃，满嘴油光，</p><p>右上嘴角的黑痣好像前排考试作弊的男孩的后脑勺上上下下，活泼而又生动。</p><p>卸掉冬装的女孩昂首挺胸去打水，露出较好的身材。</p><p>胖男孩嘴里嚼着字夸张地笑着，皮肤绷紧了，能反出灯光，</p><p>想象着他们上嘴唇粘着泡沫举着酒杯，一副健康的颜色</p><p><br></p><p>走在寒风里头的薄嘴唇的老女人有着深红的口红和有花边的帽子，</p><p>我想蹒跚着双腿的她一定还钟爱着红皮鞋和飞机，</p><p>怀揣着环游世界的梦想。</p><p>&nbsp;&nbsp;</p><p>编不下去了，讲个笑话结束。女孩说，头发有静电，真讨厌。男孩说，有静电，那接地啊。哈哈。</p><p><br></p>',2,''),(74,'浅谈孙子跟爷爷','	《阳光下灿烂的日子》里夏雨对着镜子大骂炮局的条子，叫他们孙子。古时候的人见着了位高多金的主子也习惯叫爷。罗永浩说，中国人就是两类，一类是做孙子的，另一类就是当爷爷的。多数的孙子是分不清状况，擦着鼻涕但还是趾高气昂地想当爷爷。多数时候我也是这样的孙子。\n	读史讲战国。魏国第一国君魏文侯礼贤下士。做国君了，是位','2017-07-17 16:31:42',0,0,'<p>	《阳光下灿烂的日子》里夏雨对着镜子大骂炮局的条子，叫他们孙子。古时候的人见着了位高多金的主子也习惯叫爷。罗永浩说，中国人就是两类，一类是做孙子的，另一类就是当爷爷的。多数的孙子是分不清状况，擦着鼻涕但还是趾高气昂地想当爷爷。多数时候我也是这样的孙子。</p><p>	读史讲战国。魏国第一国君魏文侯礼贤下士。做国君了，是位爷吧，人家低头做孙子，一心图强，在贤人志士面前还是谦虚恭敬的样子，颇有马屁精见了总经理的“孙子”精神，得到吴起西门豹等一批人才，成一代明君，创魏国百年霸业。可是魏武侯与吴起论山河之险，魏武侯自己觉得的魏国地利国强，身为魏国君主他自是位爷了。吴起呛了嘴，反驳了魏武侯，最终吴起在人挑唆下失去了魏武侯的信任，去魏投楚。强秦也是利用其他列强君主一心想称霸做爷爷的野心破合纵之术，一统天下。再说吴起，一代名将，与士卒共甘苦，征战沙场，创赫赫功名，但在楚国皇亲国戚阻碍改革的势力面前厉行变法，挺着腰杆做开路人，终是乱箭而亡。效法吴起的同样是卫国人的商鞅跟吴起有着相同的命运。</p><p>	所以，是爷爷的，低头做孙子是一流的聪明人；是爷爷的，言行举止心里思想上就是爷是二流的聪明人；是孙子的，想做爷的是三流的正常人。有句粗话说，在中国，有骨气的难熬出头。他们做不了孙子。点头哈腰，快速掏腰包。</p><p>	爷爷跟孙子怎样的存在才是平衡？魏文侯愿意当孙子，所以他手下有才能的可以昂着头说话，他们可以是爷爷，后人还会称赞他们风流倜傥。但是当君主自恃爷爷，其他人就不要一副爷爷的派头了。你风流，把你逮起来投进监狱，你倜傥，把你贬为庶民流放边疆。这是一种阴阳平衡。就像电影《哈利波特》里的人物都是能飞能蹦，充满活力，是鲜亮的，所以电影的建筑都是深颜色的厚重的，天空总是灰蒙蒙的，这是一种平衡。又比如说，一对情侣相处，总一个强势一个稍微弱势，要是弱势那个突然有一个想抬头做爷爷了，另一个就要低头装孙子，这样才平衡。要是两都希望压对方一头，都要做爷爷，那散的就多了。</p><p>	前段时间李某某的事情闹得满城风雨，他没有做好装孙子这事，梦妈妈着急上火，也是没辙。关于这件事，大部分群众表现得义愤填膺。有人说这是仇富，那仇富是什么，仇富就是做孙子做久了，想看看你们那帮做爷的出出洋相。</p>',2,''),(75,'修改本地hexo-server的监听端口','已经在本地模块中安装了hexo-server，而且也已经运行起来了：\nczy@czy-PC MINGW64 /e/hexo (hexo)\n$ hexo s\nINFO  Start processing\nINFO  Hexo is running at http://localhost:4000/. Press','2017-07-17 16:31:54',0,0,'<p>已经在本地模块中安装了hexo-server，而且也已经运行起来了：</p><pre class=\"ql-syntax\" spellcheck=\"false\">czy@czy-PC MINGW64 /e/hexo (hexo)\n$ hexo s\nINFO  Start processing\nINFO  Hexo is running at http://localhost:4000/. Press Ctrl+C to stop.\n</pre><p>但是打开浏览器<em>并不能正确的显示页面</em>，可能是在windows下端口冲突，故修改hexo-server的监听端口（文件路径为<code style=\"background-color: rgb(238, 238, 238);\">node_modules/hexo-server/index.js</code>）：</p><p><br></p><pre class=\"ql-syntax\" spellcheck=\"false\">hexo.config.server = assign({\n  port: 4444,\n  log: false,\n  ip: \'0.0.0.0\',\n  compress: false,\n  header: true\n}, hexo.config.server);\n</pre><p>再次运行就可以正常显示了。</p><p>在知乎上有<a href=\"https://www.zhihu.com/question/28847824\" target=\"_blank\" style=\"color: rgb(39, 128, 227);\">这个问题的讨论</a></p><p><br></p>',1,''),(76,'将class文件反编译进行分析','最近接了一个任务:将一个线上产品拿回来分析，产品没有文档。一看全是class文档，并且被压缩成了zip包。解压之后看了是两个javaweb和一个javaAPP。连个war包都没拷回来。汗。\n要反编译，去网上搜了一个工具jd-gui，试用了之后只能反编译class文件和jar包，不可以选择多个class文件。在','2017-07-20 06:39:52',0,0,'<p>最近接了一个任务:将一个线上产品拿回来分析，产品没有文档。一看全是class文档，并且被压缩成了zip包。解压之后看了是两个javaweb和一个javaAPP。连个war包都没拷回来。汗。</p><p>要反编译，去网上搜了一个工具jd-gui，试用了之后只能反编译class文件和jar包，不可以选择多个class文件。在花了一天半只反编译了一个工程之后，领导要我去讲解代码逻辑了，效率太低。于是心想jar不也是一种压缩方式而已吗？于是网上所搜到了方法可以将web工程打包成jar包，如下:</p><p>Cmd下进入目录，用命令jar comf spnsv.jar META-INF/MANIFEST.MF -C .</p><p>结果是压缩成一个spnsv.jar的一个jar包，用工具可以直接反编译啦。</p>',1,'');
/*!40000 ALTER TABLE `t_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_blogtype`
--

DROP TABLE IF EXISTS `t_blogtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_blogtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(30) DEFAULT NULL,
  `orderNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_blogtype`
--

LOCK TABLES `t_blogtype` WRITE;
/*!40000 ALTER TABLE `t_blogtype` DISABLE KEYS */;
INSERT INTO `t_blogtype` VALUES (1,'IT技术',1),(2,'风月',2);
/*!40000 ALTER TABLE `t_blogtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_link`
--

DROP TABLE IF EXISTS `t_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `linkName` varchar(100) DEFAULT NULL,
  `linkUrl` varchar(100) DEFAULT NULL,
  `linkNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_link`
--

LOCK TABLES `t_link` WRITE;
/*!40000 ALTER TABLE `t_link` DISABLE KEYS */;
INSERT INTO `t_link` VALUES (1,'我的博客','http://chenbuer.github.com',1),(2,'我的github','http://github.com/chenbuer',2),(3,'我的facebook','http://www.facebook.com',3);
/*!40000 ALTER TABLE `t_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `profile` text,
  `nickName` varchar(50) DEFAULT NULL,
  `sign` varchar(100) DEFAULT NULL,
  `imageName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (1,'chenbuer','231d4af96cba51e9b10d0d973b845406','<p>我叫陈志远</p><p>喜欢web前后端技术</p><p>熟悉Java nodejs python php vuecli等技术</p><p><br></p><p>这个网站说明可以参考<a href=\"https://github.com/chenbuer/soa-blog-fe\" target=\"_blank\">我的github项目</a>。他的<a href=\"https://github.com/chenbuer/soa-blog-fe/blob/master/README.md\" target=\"_blank\">稍微详细的说明在这里</a>。</p><p>它是基于vuecli、springBoot编写而成，前后端分离。将不同模块装在五个docker容器中，这五个docker容器相互协作，成为这样一个博客系统。</p><p><br></p><p>如果你觉得我还不错</p><p>请跟我联系</p><p>chenzy08@126.com</p><p>Tel：18013897059</p>','chenzy','屌不屌还得靠自己。','chenbuer.png');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-09  1:42:33
