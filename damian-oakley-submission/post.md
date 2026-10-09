Recently, I had the privilege of testing OLake's pipeline to carry data from Postgres into Apache Iceberg, with amazing results! I first developed a table using PostgreSQL, and then utilized OLake's resources to discover the schema and transfer it to Iceberg. From there, I used Apache Spark to verify that the data remainded constant. Not only was the data accurate, but updating the table held the same results in both PostgreSQL and Spark! Granted, this was a small example containing 15-17 rows, but it worked so smoothly that I have high hopes for larger datasets.

![Postgres query result](images/postgres-before1.png)

The really good part about this setup is that the whole process (Postgres, OLake, Iceberg's REST catalog, MinIO and Spark)runs locally in Docker. This removes the need for AWS bills or Glue setups.

I have devloped a tutorial for setting up your own OLake pipeline, included below. It primarily focuses on Windows and its PowerShell, although Linux and Mac are also available. Within, you should be able to find all the resources you need, as well as some photos depicting the visual similarities between the two systems. The entire process should take about 30 minutes, provided there are no errors with the image pulls and commands. 

![Spark query result](images/spark-before3.png)

Keep in mind, however, that this tutorial also fixes some errors I myself encountered while setting up my pipeline. The quickstart was broken due to some images being outdated or removed from official sources, and some provided commands do not function on Windows PowerShell. My tutorial includes working replacements, as well as a full list of the problems I encountered during this project, as well as how I resolved them. 

Overall, I enjoyed experimenting with OLake's work, and I would like to get the chance to do so more in the future!

My repo: https://github.com/DamianOakley/olake-repo
