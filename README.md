
Developers
(1) Justin John - s3846390 - 50% contribution
(2) Muhib Hasan - s3850034 - 50% contribution

Highest Level Attempted
80+

Time Sheet for both Members - Peer Programming
Timesheet - initial commit 23 April
Day 1: Muhib & Justin 2.5 hours (peer programming)
Day 2: Muhib & Justin 3 hours (peer programming)
Day 3: Muhib & Justin 1.5 hours (peer programming)
Day 4: Muhib: 2 hours, Justin 1.5 hours
Day 5: Muhib & Justin 4 hours (peer programming)
Day 6: Justin 2 hours
Day 7: Muhib 2.5 hours
Day 8: Muhib & Justin 20 mins hours (peer programming)
Day 9:  
Day 10: Muhib & Justin 1 hour (peer programming)
Day 11: Muhib 1 hour
Day 12: Justin 45 mins
Day 13:
Day 14: Muhib & Justin 1.5 (peer programming)
Day 15:
Day 16: Justin 1.5 hours, Muhib 2 hours
Day 17: Muhib 2 hours, Justin 1.5 hours
Day 19: Justin 2.5 hours, Muhib 2 hours
Day 20: Muhib & Justin 4 hours (peer programming)
Day 21: Muhib & Justin 4 hours (peer programming)


Link to Heroku Page:
https://quiet-atoll-36578.herokuapp.com/


How to run the app on Cloud 9/Local Installation

    - bundle install --without production 
    - rake db:migrate
    - rake db:seed
    - rails s

Note:
    - Login With Twitter works locally but not on heroku
    - You would have to return back to the log in page after exception of InvalidAuthencityToken and press it again and it should work

Github Repo Name/Location:
https://github.com/s3850034/RAD2021_s3846390_s3850034

Heroku Deployment Log:
2021-05-24T01:49:05.784607+00:00 app[web.1]: I, [2021-05-24T01:49:05.784464 #4]  INFO -- : [18e9cdb1-57af-463d-9b0e-33e6e38ffde2] Started GET "/bag" for 120.148.77.119 at 2021-05-24 01:49:05 +0000
2021-05-24T01:49:05.785918+00:00 app[web.1]: I, [2021-05-24T01:49:05.785823 #4]  INFO -- : [18e9cdb1-57af-463d-9b0e-33e6e38ffde2] Processing by BagsController#show as HTML
2021-05-24T01:49:05.801150+00:00 app[web.1]: D, [2021-05-24T01:49:05.801003 #4] DEBUG -- : [18e9cdb1-57af-463d-9b0e-33e6e38ffde2]   SavedList Load (7.1ms)  SELECT  "saved_lists".* FROM "saved_lists" WHERE "saved_lists"."id" = $1 LIMIT $2  [["id", 40], ["LIMIT", 1]]
2021-05-24T01:49:05.809281+00:00 app[web.1]: D, [2021-05-24T01:49:05.809168 #4] DEBUG -- : [18e9cdb1-57af-463d-9b0e-33e6e38ffde2]   Customer Load (6.7ms)  SELECT  "customers".* FROM "customers" WHERE "customers"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
2021-05-24T01:49:05.810841+00:00 app[web.1]: I, [2021-05-24T01:49:05.810711 #4]  INFO -- : [18e9cdb1-57af-463d-9b0e-33e6e38ffde2]   Rendering bags/show.html.erb within layouts/application
2021-05-24T01:49:05.814210+00:00 app[web.1]: D, [2021-05-24T01:49:05.814082 #4] DEBUG -- : [18e9cdb1-57af-463d-9b0e-33e6e38ffde2]   OrderItem Load (2.6ms)  SELECT "order_items".* FROM "order_items" WHERE "order_items"."customer_id" = $1  [["customer_id", 1]]
2021-05-24T01:49:05.820332+00:00 app[web.1]: D, [2021-05-24T01:49:05.820208 #4] DEBUG -- : [18e9cdb1-57af-463d-9b0e-33e6e38ffde2]   Product Load (4.2ms)  SELECT  "products".* FROM "products" WHERE "products"."id" = $1 LIMIT $2  [["id", 6], ["LIMIT", 1]]
2021-05-24T01:49:05.830816+00:00 app[web.1]: D, [2021-05-24T01:49:05.830662 #4] DEBUG -- : [18e9cdb1-57af-463d-9b0e-33e6e38ffde2]   Order Load (4.1ms)  SELECT  "orders".* FROM "orders" WHERE "orders"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]
2021-05-24T01:49:05.831740+00:00 app[web.1]: D, [2021-05-24T01:49:05.831622 #4] DEBUG -- : [18e9cdb1-57af-463d-9b0e-33e6e38ffde2]   CACHE Order Load (0.0ms)  SELECT  "orders".* FROM "orders" WHERE "orders"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]
2021-05-24T01:49:05.841624+00:00 app[web.1]: D, [2021-05-24T01:49:05.841441 #4] DEBUG -- : [18e9cdb1-57af-463d-9b0e-33e6e38ffde2]   OrderItem Load (4.4ms)  SELECT "order_items".* FROM "order_items" WHERE "order_items"."order_id" = $1  [["order_id", 3]]
2021-05-24T01:49:05.843733+00:00 app[web.1]: D, [2021-05-24T01:49:05.843642 #4] DEBUG -- : [18e9cdb1-57af-463d-9b0e-33e6e38ffde2]   CACHE Product Load (0.0ms)  SELECT  "products".* FROM "products" WHERE "products"."id" = $1 LIMIT 
$2  [["id", 6], ["LIMIT", 1]]
2021-05-24T01:49:05.845060+00:00 app[web.1]: D, [2021-05-24T01:49:05.844970 #4] DEBUG -- : [18e9cdb1-57af-463d-9b0e-33e6e38ffde2]   CACHE Customer Load (0.0ms)  SELECT  "customers".* FROM "customers" WHERE "customers"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
2021-05-24T01:49:05.846249+00:00 app[web.1]: I, [2021-05-24T01:49:05.846139 #4]  INFO -- : [18e9cdb1-57af-463d-9b0e-33e6e38ffde2]   Rendered bags/show.html.erb within layouts/application (35.2ms)
2021-05-24T01:49:05.847926+00:00 app[web.1]: I, [2021-05-24T01:49:05.847845 #4]  INFO -- : [18e9cdb1-57af-463d-9b0e-33e6e38ffde2] Completed 200 OK in 62ms (Views: 22.2ms | ActiveRecord: 29.1ms)
2021-05-24T01:49:05.848324+00:00 heroku[router]: at=info method=GET path="/bag" host=quiet-atoll-36578.herokuapp.com request_id=18e9cdb1-57af-463d-9b0e-33e6e38ffde2 fwd="120.148.77.119" dyno=web.1 connect=1ms service=67ms status=200 bytes=4474 protocol=https
2021-05-24T01:49:07.383455+00:00 app[web.1]: I, [2021-05-24T01:49:07.383253 #4]  INFO -- : [25cea1db-b0de-4b13-ace2-4cdb416e1e98] Started POST "/clear_bag" for 120.148.77.119 at 2021-05-24 01:49:07 +0000
2021-05-24T01:49:07.385384+00:00 app[web.1]: I, [2021-05-24T01:49:07.385289 #4]  INFO -- : [25cea1db-b0de-4b13-ace2-4cdb416e1e98] Processing by BagsController#clear as HTML
2021-05-24T01:49:07.385529+00:00 app[web.1]: I, [2021-05-24T01:49:07.385408 #4]  INFO -- : [25cea1db-b0de-4b13-ace2-4cdb416e1e98]   Parameters: {"authenticity_token"=>"O3FsURhmh/5Mq7+51QQ/FeLQ9U7Cd/fJYA9DTBwn1AHpKpRY5LeUM/+LBORXozLXBlipDYkEGobzprd9FBr5/A=="}
2021-05-24T01:49:07.394023+00:00 app[web.1]: D, [2021-05-24T01:49:07.393724 #4] DEBUG -- : [25cea1db-b0de-4b13-ace2-4cdb416e1e98]   SavedList Load (3.6ms)  SELECT  "saved_lists".* FROM "saved_lists" WHERE "saved_lists"."id" = $1 LIMIT $2  [["id", 40], ["LIMIT", 1]]
2021-05-24T01:49:07.399275+00:00 app[web.1]: D, [2021-05-24T01:49:07.399141 #4] DEBUG -- : [25cea1db-b0de-4b13-ace2-4cdb416e1e98]   Order Load (3.5ms)  SELECT  "orders".* FROM "orders" WHERE "orders"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]
2021-05-24T01:49:07.399981+00:00 app[web.1]: D, [2021-05-24T01:49:07.399869 #4] DEBUG -- : [25cea1db-b0de-4b13-ace2-4cdb416e1e98]   CACHE Order Load (0.0ms)  SELECT  "orders".* FROM "orders" WHERE "orders"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]
2021-05-24T01:49:07.404662+00:00 app[web.1]: D, [2021-05-24T01:49:07.404496 #4] DEBUG -- : [25cea1db-b0de-4b13-ace2-4cdb416e1e98]    (4.2ms)  BEGIN
2021-05-24T01:49:07.408863+00:00 app[web.1]: D, [2021-05-24T01:49:07.408726 #4] DEBUG -- : [25cea1db-b0de-4b13-ace2-4cdb416e1e98]   SQL (3.1ms)  DELETE FROM "orders" WHERE "orders"."id" = $1  [["id", 3]]
2021-05-24T01:49:07.414999+00:00 app[web.1]: D, [2021-05-24T01:49:07.414875 #4] DEBUG -- : [25cea1db-b0de-4b13-ace2-4cdb416e1e98]    (5.7ms)  COMMIT
2021-05-24T01:49:07.431319+00:00 app[web.1]: D, [2021-05-24T01:49:07.431174 #4] DEBUG -- : [25cea1db-b0de-4b13-ace2-4cdb416e1e98]   Customer Load (5.7ms)  SELECT  "customers".* FROM "customers" WHERE "customers"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
2021-05-24T01:49:07.436637+00:00 app[web.1]: D, [2021-05-24T01:49:07.436538 #4] DEBUG -- : [25cea1db-b0de-4b13-ace2-4cdb416e1e98]   OrderItem Load (4.6ms)  SELECT "order_items".* FROM "order_items" WHERE "order_items"."customer_id" = $1  [["customer_id", 1]]
2021-05-24T01:49:07.444758+00:00 app[web.1]: D, [2021-05-24T01:49:07.444632 #4] DEBUG -- : [25cea1db-b0de-4b13-ace2-4cdb416e1e98]    (7.7ms)  BEGIN
2021-05-24T01:49:07.447125+00:00 app[web.1]: D, [2021-05-24T01:49:07.447015 #4] DEBUG -- : [25cea1db-b0de-4b13-ace2-4cdb416e1e98]   SQL (1.5ms)  DELETE FROM "order_items" WHERE "order_items"."id" = $1  [["id", 3]]
2021-05-24T01:49:07.449548+00:00 app[web.1]: D, [2021-05-24T01:49:07.449390 #4] DEBUG -- : [25cea1db-b0de-4b13-ace2-4cdb416e1e98]    (2.0ms)  COMMIT
2021-05-24T01:49:07.449970+00:00 app[web.1]: I, [2021-05-24T01:49:07.449897 #4]  INFO -- : [25cea1db-b0de-4b13-ace2-4cdb416e1e98] Redirected to https://quiet-atoll-36578.herokuapp.com/
2021-05-24T01:49:07.450157+00:00 app[web.1]: I, [2021-05-24T01:49:07.450070 #4]  INFO -- : [25cea1db-b0de-4b13-ace2-4cdb416e1e98] Completed 302 Found in 63ms (ActiveRecord: 41.7ms)
2021-05-24T01:49:07.453054+00:00 heroku[router]: at=info method=POST path="/clear_bag" host=quiet-atoll-36578.herokuapp.com request_id=25cea1db-b0de-4b13-ace2-4cdb416e1e98 fwd="120.148.77.119" dyno=web.1 connect=1ms service=77ms status=302 bytes=1069 protocol=https
2021-05-24T01:49:07.693609+00:00 app[web.1]: I, [2021-05-24T01:49:07.693429 #4]  INFO -- : [60d16724-7e41-41eb-85f2-905a1909ba4d] Started GET "/" for 120.148.77.119 at 2021-05-24 01:49:07 +0000
2021-05-24T01:49:07.695521+00:00 app[web.1]: I, [2021-05-24T01:49:07.695417 #4]  INFO -- : [60d16724-7e41-41eb-85f2-905a1909ba4d] Processing by PagesController#home as HTML
2021-05-24T01:49:07.699371+00:00 app[web.1]: D, [2021-05-24T01:49:07.699269 #4] DEBUG -- : [60d16724-7e41-41eb-85f2-905a1909ba4d]   SavedList Load (1.5ms)  SELECT  "saved_lists".* FROM "saved_lists" WHERE "saved_lists"."id" = $1 LIMIT $2  [["id", 40], ["LIMIT", 1]]
2021-05-24T01:49:07.702131+00:00 app[web.1]: D, [2021-05-24T01:49:07.702020 #4] DEBUG -- : [60d16724-7e41-41eb-85f2-905a1909ba4d]   Product Load (1.6ms)  SELECT  "products".* FROM "products" ORDER BY RANDOM() LIMIT $1  [["LIMIT", 
1]]
2021-05-24T01:49:07.705736+00:00 app[web.1]: D, [2021-05-24T01:49:07.705635 #4] DEBUG -- : [60d16724-7e41-41eb-85f2-905a1909ba4d]    (2.1ms)  SELECT COUNT(*) FROM "products" WHERE "products"."collection_type" = $1  [["collection_type", "women"]]
2021-05-24T01:49:07.707926+00:00 app[web.1]: D, [2021-05-24T01:49:07.707847 #4] DEBUG -- : [60d16724-7e41-41eb-85f2-905a1909ba4d]    (1.4ms)  SELECT COUNT(*) FROM "products" WHERE "products"."collection_type" = $1  [["collection_type", "men"]]
2021-05-24T01:49:07.709993+00:00 app[web.1]: D, [2021-05-24T01:49:07.709905 #4] DEBUG -- : [60d16724-7e41-41eb-85f2-905a1909ba4d]    (1.4ms)  SELECT COUNT(*) FROM "products" WHERE "products"."collection_type" = $1  [["collection_type", "kids"]]
2021-05-24T01:49:07.711809+00:00 app[web.1]: D, [2021-05-24T01:49:07.711727 #4] DEBUG -- : [60d16724-7e41-41eb-85f2-905a1909ba4d]    (1.3ms)  SELECT COUNT(*) FROM "products" WHERE "products"."collection_type" = $1  [["collection_type", "newins"]]
2021-05-24T01:49:07.712352+00:00 app[web.1]: I, [2021-05-24T01:49:07.712280 #4]  INFO -- : [60d16724-7e41-41eb-85f2-905a1909ba4d]   Rendering pages/home.html.erb within layouts/application
2021-05-24T01:49:07.716126+00:00 app[web.1]: D, [2021-05-24T01:49:07.716040 #4] DEBUG -- : [60d16724-7e41-41eb-85f2-905a1909ba4d]   Product Load (1.6ms)  SELECT "products".* FROM "products" WHERE (popularity >= 3.0)
2021-05-24T01:49:07.723463+00:00 app[web.1]: I, [2021-05-24T01:49:07.723360 #4]  INFO -- : [60d16724-7e41-41eb-85f2-905a1909ba4d]   Rendered pages/home.html.erb within layouts/application (11.0ms)
2021-05-24T01:49:07.725965+00:00 app[web.1]: D, [2021-05-24T01:49:07.725860 #4] DEBUG -- : [60d16724-7e41-41eb-85f2-905a1909ba4d]   Customer Load (1.3ms)  SELECT  "customers".* FROM "customers" WHERE "customers"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
2021-05-24T01:49:07.727087+00:00 app[web.1]: I, [2021-05-24T01:49:07.726983 #4]  INFO -- : [60d16724-7e41-41eb-85f2-905a1909ba4d] Completed 200 OK in 31ms (Views: 11.9ms | ActiveRecord: 12.1ms)
2021-05-24T01:49:07.729399+00:00 heroku[router]: at=info method=GET path="/" host=quiet-atoll-36578.herokuapp.com request_id=60d16724-7e41-41eb-85f2-905a1909ba4d fwd="120.148.77.119" dyno=web.1 connect=1ms service=39ms status=200 
bytes=11685 protocol=https
2021-05-24T01:49:08.875054+00:00 heroku[router]: at=info method=GET path="/assets/bootstrap/glyphicons-halflings-regular-fe185d11a49676890d47bb783312a0cda5a44c4039214094e7957b4c040ef11c.woff2" host=quiet-atoll-36578.herokuapp.com 
request_id=0e3fdcce-0d2b-4d15-8d29-40ddd0c893be fwd="203.219.219.132" dyno=web.1 connect=7ms service=10ms status=200 bytes=18173 protocol=https
2021-05-24T01:49:10.039442+00:00 app[web.1]: I, [2021-05-24T01:49:10.039284 #4]  INFO -- : [b42dfe84-5d06-4739-8952-2e62c36b6747] Started GET "/" for 120.148.77.119 at 2021-05-24 01:49:10 +0000
2021-05-24T01:49:10.040863+00:00 app[web.1]: I, [2021-05-24T01:49:10.040769 #4]  INFO -- : [b42dfe84-5d06-4739-8952-2e62c36b6747] Processing by PagesController#home as HTML
2021-05-24T01:49:10.044500+00:00 app[web.1]: D, [2021-05-24T01:49:10.044414 #4] DEBUG -- : [b42dfe84-5d06-4739-8952-2e62c36b6747]   SavedList Load (1.5ms)  SELECT  "saved_lists".* FROM "saved_lists" WHERE "saved_lists"."id" = $1 LIMIT $2  [["id", 40], ["LIMIT", 1]]
2021-05-24T01:49:10.046798+00:00 app[web.1]: D, [2021-05-24T01:49:10.046690 #4] DEBUG -- : [b42dfe84-5d06-4739-8952-2e62c36b6747]   Product Load (1.5ms)  SELECT  "products".* FROM "products" ORDER BY RANDOM() LIMIT $1  [["LIMIT", 
1]]
2021-05-24T01:49:10.049786+00:00 app[web.1]: D, [2021-05-24T01:49:10.049655 #4] DEBUG -- : [b42dfe84-5d06-4739-8952-2e62c36b6747]    (1.5ms)  SELECT COUNT(*) FROM "products" WHERE "products"."collection_type" = $1  [["collection_type", "women"]]
2021-05-24T01:49:10.051947+00:00 app[web.1]: D, [2021-05-24T01:49:10.051876 #4] DEBUG -- : [b42dfe84-5d06-4739-8952-2e62c36b6747]    (1.5ms)  SELECT COUNT(*) FROM "products" WHERE "products"."collection_type" = $1  [["collection_type", "men"]]
2021-05-24T01:49:10.054062+00:00 app[web.1]: D, [2021-05-24T01:49:10.053964 #4] DEBUG -- : [b42dfe84-5d06-4739-8952-2e62c36b6747]    (1.3ms)  SELECT COUNT(*) FROM "products" WHERE "products"."collection_type" = $1  [["collection_type", "kids"]]
2021-05-24T01:49:10.056375+00:00 app[web.1]: D, [2021-05-24T01:49:10.056296 #4] DEBUG -- : [b42dfe84-5d06-4739-8952-2e62c36b6747]    (1.4ms)  SELECT COUNT(*) FROM "products" WHERE "products"."collection_type" = $1  [["collection_type", "newins"]]
2021-05-24T01:49:10.057234+00:00 app[web.1]: I, [2021-05-24T01:49:10.057140 #4]  INFO -- : [b42dfe84-5d06-4739-8952-2e62c36b6747]   Rendering pages/home.html.erb within layouts/application
2021-05-24T01:49:10.062030+00:00 app[web.1]: D, [2021-05-24T01:49:10.061895 #4] DEBUG -- : [b42dfe84-5d06-4739-8952-2e62c36b6747]   Product Load (1.7ms)  SELECT "products".* FROM "products" WHERE (popularity >= 3.0)
2021-05-24T01:49:10.075217+00:00 app[web.1]: I, [2021-05-24T01:49:10.075066 #4]  INFO -- : [b42dfe84-5d06-4739-8952-2e62c36b6747]   Rendered pages/home.html.erb within layouts/application (17.7ms)
2021-05-24T01:49:10.078236+00:00 app[web.1]: D, [2021-05-24T01:49:10.078132 #4] DEBUG -- : [b42dfe84-5d06-4739-8952-2e62c36b6747]   Customer Load (1.5ms)  SELECT  "customers".* FROM "customers" WHERE "customers"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
2021-05-24T01:49:10.079274+00:00 app[web.1]: I, [2021-05-24T01:49:10.079172 #4]  INFO -- : [b42dfe84-5d06-4739-8952-2e62c36b6747] Completed 200 OK in 38ms (Views: 19.1ms | ActiveRecord: 11.8ms)
2021-05-24T01:49:10.079908+00:00 heroku[router]: at=info method=GET path="/" host=quiet-atoll-36578.herokuapp.com request_id=b42dfe84-5d06-4739-8952-2e62c36b6747 fwd="120.148.77.119" dyno=web.1 connect=1ms service=45ms status=200 
bytes=11691 protocol=https
2021-05-24T01:49:52.842242+00:00 app[web.1]: I, [2021-05-24T01:49:52.842104 #4]  INFO -- : [54cb1ef9-9ae8-4a62-a353-1d17b831fc4b] Started GET "/logon" for 120.148.77.119 at 2021-05-24 01:49:52 +0000
2021-05-24T01:49:52.843680+00:00 app[web.1]: I, [2021-05-24T01:49:52.843593 #4]  INFO -- : [54cb1ef9-9ae8-4a62-a353-1d17b831fc4b] Processing by PagesController#log_on as HTML
2021-05-24T01:49:52.847130+00:00 app[web.1]: D, [2021-05-24T01:49:52.847042 #4] DEBUG -- : [54cb1ef9-9ae8-4a62-a353-1d17b831fc4b]   SavedList Load (1.5ms)  SELECT  "saved_lists".* FROM "saved_lists" WHERE "saved_lists"."id" = $1 LIMIT $2  [["id", 40], ["LIMIT", 1]]
2021-05-24T01:49:52.848221+00:00 app[web.1]: I, [2021-05-24T01:49:52.848137 #4]  INFO -- : [54cb1ef9-9ae8-4a62-a353-1d17b831fc4b]   Rendering pages/log_on.html.erb within layouts/application
2021-05-24T01:49:52.849010+00:00 app[web.1]: I, [2021-05-24T01:49:52.848917 #4]  INFO -- : [54cb1ef9-9ae8-4a62-a353-1d17b831fc4b]   Rendered pages/log_on.html.erb within layouts/application (0.7ms)
2021-05-24T01:49:52.851565+00:00 app[web.1]: D, [2021-05-24T01:49:52.851462 #4] DEBUG -- : [54cb1ef9-9ae8-4a62-a353-1d17b831fc4b]   Customer Load (1.4ms)  SELECT  "customers".* FROM "customers" WHERE "customers"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
2021-05-24T01:49:52.852274+00:00 app[web.1]: I, [2021-05-24T01:49:52.852187 #4]  INFO -- : [54cb1ef9-9ae8-4a62-a353-1d17b831fc4b] Completed 200 OK in 8ms (Views: 2.9ms | ActiveRecord: 2.9ms)
2021-05-24T01:49:52.852561+00:00 heroku[router]: at=info method=GET path="/logon" host=quiet-atoll-36578.herokuapp.com request_id=54cb1ef9-9ae8-4a62-a353-1d17b831fc4b fwd="120.148.77.119" dyno=web.1 connect=1ms service=15ms status=200 bytes=5200 protocol=https
2021-05-24T01:49:54.913965+00:00 app[web.1]: I, [2021-05-24T01:49:54.913803 #4]  INFO -- : [33eab2d7-ecbb-4a77-8073-e077ff9783d7] Started POST "/auth/twitter" for 120.148.77.119 at 2021-05-24 01:49:54 +0000
2021-05-24T01:49:54.914482+00:00 app[web.1]: D, [2021-05-24T01:49:54.914344 #4] DEBUG -- omniauth: (twitter) Request phase initiated.
2021-05-24T01:49:54.915330+00:00 app[web.1]: E, [2021-05-24T01:49:54.915266 #4] ERROR -- omniauth: (twitter) Authentication failure! ActionController::InvalidAuthenticityToken: ActionController::InvalidAuthenticityToken, ActionController::InvalidAuthenticityToken
2021-05-24T01:49:54.916479+00:00 heroku[router]: at=info method=POST path="/auth/twitter" host=quiet-atoll-36578.herokuapp.com request_id=33eab2d7-ecbb-4a77-8073-e077ff9783d7 fwd="120.148.77.119" dyno=web.1 connect=1ms service=7ms status=302 bytes=881 protocol=https
2021-05-24T01:49:55.152261+00:00 app[web.1]: I, [2021-05-24T01:49:55.152151 #4]  INFO -- : [3a3a6ce6-2d6f-4bd6-9e97-a4ab9179584e] Started GET "/auth/failure?message=ActionController%3A%3AInvalidAuthenticityToken&strategy=twitter" 
for 120.148.77.119 at 2021-05-24 01:49:55 +0000
2021-05-24T01:49:55.154583+00:00 app[web.1]: F, [2021-05-24T01:49:55.154494 #4] FATAL -- : [3a3a6ce6-2d6f-4bd6-9e97-a4ab9179584e]
2021-05-24T01:49:55.156568+00:00 app[web.1]: F, [2021-05-24T01:49:55.156450 #4] FATAL -- : [3a3a6ce6-2d6f-4bd6-9e97-a4ab9179584e] ActionController::RoutingError (No route matches [GET] "/auth/failure"):
2021-05-24T01:49:55.156759+00:00 app[web.1]: F, [2021-05-24T01:49:55.156644 #4] FATAL -- : [3a3a6ce6-2d6f-4bd6-9e97-a4ab9179584e]
2021-05-24T01:49:55.156953+00:00 app[web.1]: F, [2021-05-24T01:49:55.156835 #4] FATAL -- : [3a3a6ce6-2d6f-4bd6-9e97-a4ab9179584e] vendor/bundle/ruby/2.6.0/gems/actionpack-5.1.7/lib/action_dispatch/middleware/debug_exceptions.rb:63:in `call'
2021-05-24T01:49:55.156954+00:00 app[web.1]: [3a3a6ce6-2d6f-4bd6-9e97-a4ab9179584e] vendor/bundle/ruby/2.6.0/gems/actionpack-5.1.7/lib/action_dispatch/middleware/show_exceptions.rb:31:in `call'
2021-05-24T01:49:55.156955+00:00 app[web.1]: [3a3a6ce6-2d6f-4bd6-9e97-a4ab9179584e] vendor/bundle/ruby/2.6.0/gems/railties-5.1.7/lib/rails/rack/logger.rb:36:in `call_app'
2021-05-24T01:49:55.156956+00:00 app[web.1]: [3a3a6ce6-2d6f-4bd6-9e97-a4ab9179584e] vendor/bundle/ruby/2.6.0/gems/railties-5.1.7/lib/rails/rack/logger.rb:24:in `block in call'
2021-05-24T01:49:55.156956+00:00 app[web.1]: [3a3a6ce6-2d6f-4bd6-9e97-a4ab9179584e] vendor/bundle/ruby/2.6.0/gems/activesupport-5.1.7/lib/active_support/tagged_logging.rb:69:in `block in tagged'
2021-05-24T01:49:55.156957+00:00 app[web.1]: [3a3a6ce6-2d6f-4bd6-9e97-a4ab9179584e] vendor/bundle/ruby/2.6.0/gems/activesupport-5.1.7/lib/active_support/tagged_logging.rb:26:in `tagged'
2021-05-24T01:49:55.156957+00:00 app[web.1]: [3a3a6ce6-2d6f-4bd6-9e97-a4ab9179584e] vendor/bundle/ruby/2.6.0/gems/activesupport-5.1.7/lib/active_support/tagged_logging.rb:69:in `tagged'
2021-05-24T01:49:55.156957+00:00 app[web.1]: [3a3a6ce6-2d6f-4bd6-9e97-a4ab9179584e] vendor/bundle/ruby/2.6.0/gems/railties-5.1.7/lib/rails/rack/logger.rb:24:in `call'
2021-05-24T01:49:55.156958+00:00 app[web.1]: [3a3a6ce6-2d6f-4bd6-9e97-a4ab9179584e] vendor/bundle/ruby/2.6.0/gems/actionpack-5.1.7/lib/action_dispatch/middleware/remote_ip.rb:79:in `call'
2021-05-24T01:49:55.156958+00:00 app[web.1]: [3a3a6ce6-2d6f-4bd6-9e97-a4ab9179584e] vendor/bundle/ruby/2.6.0/gems/actionpack-5.1.7/lib/action_dispatch/middleware/request_id.rb:25:in `call'
2021-05-24T01:49:55.156959+00:00 app[web.1]: [3a3a6ce6-2d6f-4bd6-9e97-a4ab9179584e] vendor/bundle/ruby/2.6.0/gems/rack-2.2.3/lib/rack/method_override.rb:24:in `call'
2021-05-24T01:49:55.156959+00:00 app[web.1]: [3a3a6ce6-2d6f-4bd6-9e97-a4ab9179584e] vendor/bundle/ruby/2.6.0/gems/rack-2.2.3/lib/rack/runtime.rb:22:in `call'
2021-05-24T01:49:55.156960+00:00 app[web.1]: [3a3a6ce6-2d6f-4bd6-9e97-a4ab9179584e] vendor/bundle/ruby/2.6.0/gems/activesupport-5.1.7/lib/active_support/cache/strategy/local_cache_middleware.rb:27:in `call'
2021-05-24T01:49:55.156961+00:00 app[web.1]: [3a3a6ce6-2d6f-4bd6-9e97-a4ab9179584e] vendor/bundle/ruby/2.6.0/gems/actionpack-5.1.7/lib/action_dispatch/middleware/executor.rb:12:in `call'
2021-05-24T01:49:55.156961+00:00 app[web.1]: [3a3a6ce6-2d6f-4bd6-9e97-a4ab9179584e] vendor/bundle/ruby/2.6.0/gems/actionpack-5.1.7/lib/action_dispatch/middleware/static.rb:125:in `call'
2021-05-24T01:49:55.156961+00:00 app[web.1]: [3a3a6ce6-2d6f-4bd6-9e97-a4ab9179584e] vendor/bundle/ruby/2.6.0/gems/rack-2.2.3/lib/rack/sendfile.rb:110:in `call'
2021-05-24T01:49:55.156962+00:00 app[web.1]: [3a3a6ce6-2d6f-4bd6-9e97-a4ab9179584e] vendor/bundle/ruby/2.6.0/gems/railties-5.1.7/lib/rails/engine.rb:522:in `call'
2021-05-24T01:49:55.156962+00:00 app[web.1]: [3a3a6ce6-2d6f-4bd6-9e97-a4ab9179584e] vendor/bundle/ruby/2.6.0/gems/puma-3.12.6/lib/puma/configuration.rb:227:in `call'
2021-05-24T01:49:55.156962+00:00 app[web.1]: [3a3a6ce6-2d6f-4bd6-9e97-a4ab9179584e] vendor/bundle/ruby/2.6.0/gems/puma-3.12.6/lib/puma/server.rb:706:in `handle_request'
2021-05-24T01:49:55.156963+00:00 app[web.1]: [3a3a6ce6-2d6f-4bd6-9e97-a4ab9179584e] vendor/bundle/ruby/2.6.0/gems/puma-3.12.6/lib/puma/server.rb:476:in `process_client'
2021-05-24T01:49:55.156963+00:00 app[web.1]: [3a3a6ce6-2d6f-4bd6-9e97-a4ab9179584e] vendor/bundle/ruby/2.6.0/gems/puma-3.12.6/lib/puma/server.rb:334:in `block in run'
2021-05-24T01:49:55.156964+00:00 app[web.1]: [3a3a6ce6-2d6f-4bd6-9e97-a4ab9179584e] vendor/bundle/ruby/2.6.0/gems/puma-3.12.6/lib/puma/thread_pool.rb:135:in `block in spawn_thread'
2021-05-24T01:49:55.157450+00:00 heroku[router]: at=info method=GET path="/auth/failure?message=ActionController%3A%3AInvalidAuthenticityToken&strategy=twitter" host=quiet-atoll-36578.herokuapp.com request_id=3a3a6ce6-2d6f-4bd6-9e97-a4ab9179584e fwd="120.148.77.119" dyno=web.1 connect=1ms service=9ms status=404 bytes=1902 protocol=https
2021-05-24T01:49:55.156964+00:00 app[web.1]: [3a3a6ce6-2d6f-4bd6-9e97-a4ab9179584e] vendor/bundle/ruby/2.6.0/gems/puma-3.12.6/lib/puma/thread_pool.rb:135:in `block in spawn_thread'
2021-05-24T01:49:55.157450+00:00 heroku[router]: at=info method=GET path="/auth/failure?message=ActionController%3A%3AInvalidAuthenticityToken&strategy=twitter" host=quiet-atoll-36578.herokuapp.com request_id=3a3a6ce6-2d6f-4bd6-9e97-a4ab9179584e fwd="120.148.77.119" dyno=web.1
 connect=1ms service=9ms status=404 bytes=1902 protocol=https

