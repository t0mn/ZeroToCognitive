Create classifier:
curl -X POST -F "abstract_positive_examples=@abstract.zip" -F "beach_positive_examples=@beach.zip" -F "building_positive_examples=@building.zip" -F "collage_positive_examples=@collage.zip" -F "forest_positive_examples=@forest.zip" -F "garden_positive_examples=@garden.zip" -F "still_positive_examples=@still.zip" -F "vista_positive_examples=@vista.zip" -F "name=paintings" "https://gateway-a.watsonplatform.net/visual-recognition/api/v3/classifiers?api_key={a192bfa0d69b0fcbc6cd853801a6f3de5d64bf81}&version=2017-05-10"

Check status:
curl "https://gateway-a.watsonplatform.net/visual-recognition/api/v3/classifiers?api_key={a192bfa0d69b0fcbc6cd853801a6f3de5d64bf81}&version=2017-05-10"

Classifier result:
$ curl -X POST -F "abstract_positive_examples=@abstract.zip" -F "beach_positive_examples=@beach.zip" -F "building_positive_examples=@building.zip" -F "collage_positive_examples=@collage.zip" -F "forest_positive_examples=@forest.zip" -F "garden_positive_examples=@garden.zip" -F "still_positive_examples=@still.zip" -F "vista_positive_examples=@vista.zip" -F "name=paintings" "https://gateway-a.watsonplatform.net/visual-recognition/api/v3/classifiers?api_key={a192bfa0d69b0fcbc6cd853801a6f3de5d64bf81}&version=2016-05-20"
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 1015k  100   450  100 1014k     23  54469  0:00:19  0:00:19 --:--:-- 41796{
    "classifier_id": "paintings_524808382",
    "name": "paintings",
    "owner": "7e46615e-f281-4321-aee0-f34fa01397df",
    "status": "training",
    "created": "2017-05-11T05:07:10.908Z",
    "classes": [
        {"class": "collage"},
        {"class": "building"},
        {"class": "beach"},
        {"class": "abstract"},
        {"class": "vista"},
        {"class": "still"},
        {"class": "garden"},
        {"class": "forest"}
    ]
}

Create collection:
curl -X POST -F "name=water" "https://gateway-a.watsonplatform.net/visual-recognition/api/v3/collections?api_key={a192bfa0d69b0fcbc6cd853801a6f3de5d64bf81}&version=2016-05-20"

Colection result:
$ curl -X POST -F "name=water" "https://gateway-a.watsonplatform.net/visual-recognition/api/v3/collections?api_key={a192bfa0d69b0fcbc6cd853801a6f3de5d64bf81}&version=2016-05-20"
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   304  100   160  100   144     72     65  0:00:02  0:00:02 --:--:--    77{
  "collection_id": "water_c1b73a",
  "name": "water",
  "status": "available",
  "created": "2017-05-11T05:12:24.098Z",
  "images": 0,
  "capacity": 1000000
} 
$ curl -X POST -F "name=garden" "https://gateway-a.watsonplatform.net/visual-recognition/api/v3/collections?api_key={a192bfa0d69b0fcbc6cd853801a6f3de5d64bf81}&version=2016-05-20"
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   307  100   162  100   145     78     69  0:00:02  0:00:02 --:--:--    83{
  "collection_id": "garden_3af2b2",
  "name": "garden",
  "status": "available",
  "created": "2017-05-11T12:55:12.697Z",
  "images": 0,
  "capacity": 1000000
}
curl -X POST -F "name=forest" "https://gateway-a.watsonplatform.net/visual-recognition/api/v3/collections?api_key={a192bfa0d69b0fcbc6cd853801a6f3de5d64bf81}&version=2016-05-20"
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   307  100   162  100   145     78     70  0:00:02  0:00:02 --:--:--    79{
  "collection_id": "forest_7d6dae",
  "name": "forest",
  "status": "available",
  "created": "2017-05-11T12:56:22.445Z",
  "images": 0,
  "capacity": 1000000
}
curl -X POST -F "name=beach" "https://gateway-a.watsonplatform.net/visual-recognition/api/v3/collections?api_key={a192bfa0d69b0fcbc6cd853801a6f3de5d64bf81}&version=2016-05-20"
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   304  100   160  100   144     94     84  0:00:01  0:00:01 --:--:--    95{
  "collection_id": "beach_95e508",
  "name": "beach",
  "status": "available",
  "created": "2017-05-11T12:57:04.543Z",
  "images": 0,
  "capacity": 1000000
}


Add image to collection (run from images folder):
curl -X POST -F "image_file=@water01.jpg" "https://gateway-a.watsonplatform.net/visual-recognition/api/v3/collections/{water_c1b73a}/images?api_key={a192bfa0d69b0fcbc6cd853801a6f3de5d64bf81}&version=2016-05-20"

curl -X POST -F "image_file=@forest01.jpg" "https://gateway-a.watsonplatform.net/visual-recognition/api/v3/collections/{forest_7d6dae}/images?api_key={a192bfa0d69b0fcbc6cd853801a6f3de5d64bf81}&version=2016-05-20"

curl -X POST -F "image_file=@beach01.jpg" "https://gateway-a.watsonplatform.net/visual-recognition/api/v3/collections/{beach_95e508}/images?api_key={a192bfa0d69b0fcbc6cd853801a6f3de5d64bf81}&version=2016-05-20"

curl -X POST -F "image_file=@garden01.jpg" "https://gateway-a.watsonplatform.net/visual-recognition/api/v3/collections/{garden_3af2b2}/images?api_key={a192bfa0d69b0fcbc6cd853801a6f3de5d64bf81}&version=2016-05-20"

