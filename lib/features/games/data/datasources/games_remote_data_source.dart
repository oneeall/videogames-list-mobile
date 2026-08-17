import 'package:videogames_list_mobile/core/constants/api_constants.dart';
import 'package:videogames_list_mobile/core/cubit/dummies_cubit.dart';
import 'package:videogames_list_mobile/core/network/dio_client.dart';
import 'package:videogames_list_mobile/features/games/data/models/game_model.dart';

const _mockResponse = {
  "count": 350000,
  "next": "https://api.rawg.io/api/games?key=YOUR_API_KEY&page=2",
  "previous": null,
  "results": [
    {
      "id": 3498,
      "slug": "grand-theft-auto-v",
      "name": "Grand Theft Auto V",
      "released": "2013-09-17",
      "tba": false,
      "background_image":
          "https://media.rawg.io/media/games/456/456dea5e1c7e3cd07060c14e96612001.jpg",
      "rating": 4.47,
      "rating_top": 5,
      "ratings": {
        "exceptional": {
          "id": 5,
          "title": "exceptional",
          "count": 4088,
          "percent": 58.87
        },
        "recommended": {
          "id": 4,
          "title": "recommended",
          "count": 2045,
          "percent": 29.44
        },
        "meh": {"id": 3, "title": "meh", "count": 491, "percent": 7.07},
        "skip": {"id": 1, "title": "skip", "count": 322, "percent": 4.63}
      },
      "ratings_count": 6946,
      "reviews_text_count": "64",
      "added": 20235,
      "added_by_status": {
        "yet": 527,
        "owned": 11362,
        "beaten": 4631,
        "toplay": 575,
        "dropped": 1089,
        "playing": 2051
      },
      "metacritic": 97,
      "playtime": 74,
      "suggestions_count": 454,
      "updated": "2023-12-05T08:25:10",
      "esrb_rating": {"id": 4, "slug": "mature", "name": "Mature"},
      "platforms": [
        {
          "platform": {"id": 4, "slug": "pc", "name": "PC"},
          "released_at": "2015-04-14",
          "requirements": {
            "minimum":
                "OS: Windows 10 64 Bit, 8.1 64 Bit; Processor: Intel Core 2 Quad CPU Q6600; Memory: 4 GB RAM",
            "recommended":
                "OS: Windows 10 64 Bit, 8.1 64 Bit; Processor: Intel Core i5 3470; Memory: 8 GB RAM"
          }
        },
        {
          "platform": {
            "id": 18,
            "slug": "playstation-4",
            "name": "PlayStation 4"
          },
          "released_at": "2014-11-18",
          "requirements": null
        }
      ]
    }
  ]
};

const _mockDetailResponse = {
  "id": 3498,
  "slug": "grand-theft-auto-v",
  "name": "Grand Theft Auto V",
  "name_original": "Grand Theft Auto V",
  "description":
      "<p>Rockstar Games went bigger, bolder and more impactful than ever with Grand Theft Auto V. A bold new direction in open-world freedom, storytelling, mission-based gameplay and online multiplayer.</p>",
  "metacritic": 97,
  "metacritic_url": "https://www.metacritic.com/game/grand-theft-auto-v",
  "released": "2013-09-17",
  "tba": false,
  "updated": "2023-12-05T08:25:10",
  "background_image":
      "https://media.rawg.io/media/games/456/456dea5e1c7e3cd07060c14e96612001.jpg",
  "background_image_additional":
      "https://media.rawg.io/media/screenshots/b37/b3797a0d1f89b0d5a44a91c9827e6a8f.jpg",
  "website": "https://www.rockstargames.com/V/",
  "rating": 4.47,
  "rating_top": 5,
  "ratings": {
    "exceptional": {
      "id": 5,
      "title": "exceptional",
      "count": 4088,
      "percent": 58.87
    }
  },
  "playtime": 74,
  "screenshots_count": 58,
  "movies_count": 8,
  "creators_count": 11,
  "achievements_count": 540,
  "parent_achievements_count": "75",
  "reddit_url": "https://www.reddit.com/r/GrandTheftAutoV/",
  "reddit_name": "/r/GrandTheftAutoV/",
  "reddit_description": "The GTA V subreddit",
  "reddit_logo":
      "https://b.thumbs.redditmedia.com/nnhbzNXvqx4JO_pjbJmY1i4oO2vDfSfxEJMFHlRQIxQ.png",
  "reddit_count": 4,
  "twitch_count": "0",
  "youtube_count": "0",
  "reviews_text_count": "64",
  "ratings_count": 6946,
  "suggestions_count": 454,
  "alternative_names": ["GTA V", "GTA 5"],
  "parents_count": 0,
  "additions_count": 3,
  "game_series_count": 12,
  "esrb_rating": {"id": 4, "slug": "mature", "name": "Mature"},
  "platforms": [
    {
      "platform": {"id": 4, "slug": "pc", "name": "PC"},
      "released_at": "2015-04-14",
      "requirements": {
        "minimum": "OS: Windows 10 64 Bit",
        "recommended": "OS: Windows 10 64 Bit, Processor: Intel Core i5 3470"
      }
    }
  ]
};

class GamesRemoteDataSource {
  final RawgDioClient rawgDioClient;
  final DummiesCubit dummiesCubit;

  GamesRemoteDataSource(this.rawgDioClient, this.dummiesCubit);

  Future<List<GameModel>> getPs5Games(int page) async {
    if (dummiesCubit.state) {
      // simulate network delay
      await Future.delayed(const Duration(seconds: 1));

      // stop pagination at page 3
      if (page >= 3) {
        return [];
      }

      final results = _mockResponse['results'] as List;
      return results.map((e) => GameModel.fromJson(e)).toList();
    }

    final response = await rawgDioClient.dio.get(
      '/games',
      queryParameters: {
        'platform': RawgApiConstants.ps5PlatformId,
        'ordering': '-released',
        'page': page,
        'page_size': RawgApiConstants.pageSize,
      },
    );

    /// get the list
    final result = response.data['results'] as List;

    return result.map((e) => GameModel.fromJson(e)).toList();
  }

  Future<GameModel> getGameDetails(int id) async {
    if (dummiesCubit.state) {
      // simulate network delay
      await Future.delayed(const Duration(seconds: 1));
      return GameModel.fromJson(_mockDetailResponse);
    }

    final response = await rawgDioClient.dio.get(
      '/games/$id',
    );
    return GameModel.fromJson(response.data);
  }
}
