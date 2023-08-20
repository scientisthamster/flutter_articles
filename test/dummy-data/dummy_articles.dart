import 'package:flutter_articles/models/article.dart';

class DummyArticles {
  static const Article dummyArticle1 = Article(
    id: 1028679,
    title: 'Flutter CLI Cheat Sheet',
    description:
        'This is a cheat sheet for the most useful commands you will need when developing a flutter app.      ...',
    readablePublishDate: 'Mar 20',
    url: 'https://dev.to/assisfery/flutter-cli-cheat-sheet-1l1',
    commentsCount: 0,
    positiveReactionsCount: 2,
    publishedTimestamp: '2022-03-20T14:01:23Z',
    coverImage:
        'https://res.cloudinary.com/practicaldev/image/fetch/s--NoKMxm-u--/c_imagga_scale,f_auto,fl_progressive,h_420,q_auto,w_1000/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/lyvsxp267xgqe1fgmzyw.jpg',
    readingTimeMinutes: 2,
    tags: ['flutter', 'cli', 'dart', 'mobile'],
  );

  static const Article dummyArticle2 = Article(
    id: 990934,
    title: 'The Grammar of Graphics in Flutter Charts',
    description:
        'The new version of Flutter visualization library Graphic optimized its declarative specification...',
    readablePublishDate: 'Feb 16',
    url:
        'https://dev.to/entronad/the-grammar-of-graphics-in-flutter-charts-3fhj',
    commentsCount: 0,
    publishedTimestamp: '2022-02-16T07:07:29Z',
    positiveReactionsCount: 7,
    coverImage:
        'https://res.cloudinary.com/practicaldev/image/fetch/s--lI1ToHWX--/c_imagga_scale,f_auto,fl_progressive,h_420,q_auto,w_1000/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/s6yzbaf78x8acwpvznhb.jpg',
    readingTimeMinutes: 2,
    tags: ['flutter', 'dart', 'android', 'tutorial'],
  );

  static const Map<String, dynamic> dummyRawArticle1 = {
    'id': 1028679,
    'title': 'Flutter CLI Cheat Sheet',
    'description':
        'This is a cheat sheet for the most useful commands you will need when developing a flutter app.      ...',
    'readable_publish_date': 'Mar 20',
    'url': 'https://dev.to/assisfery/flutter-cli-cheat-sheet-1l1',
    'comments_count': 0,
    'published_timestamp': '2022-03-20T14:01:23Z',
    'positive_reactions_count': 2,
    'cover_image':
        'https://res.cloudinary.com/practicaldev/image/fetch/s--NoKMxm-u--/c_imagga_scale,f_auto,fl_progressive,h_420,q_auto,w_1000/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/lyvsxp267xgqe1fgmzyw.jpg',
    'reading_time_minutes': 2,
    'tag_list': ['flutter', 'cli', 'dart', 'mobile'],
  };

  static const Map<String, dynamic> dummyRawArticle2 = {
    'id': 10286795,
    'title': 'Flutter CLI Cheat Sheet 2',
    'description':
        'This is a cheat sheet for the most useful commands you will need when developing a flutter app.      ...',
    'readable_publish_date': 'Mar 20',
    'url': 'https://dev.to/assisfery/flutter-cli-cheat-sheet-1l1',
    'comments_count': 0,
    'published_timestamp': '2022-03-20T14:01:23Z',
    'positive_reactions_count': 2,
    'cover_image':
        'https://res.cloudinary.com/practicaldev/image/fetch/s--NoKMxm-u--/c_imagga_scale,f_auto,fl_progressive,h_420,q_auto,w_1000/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/lyvsxp267xgqe1fgmzyw.jpg',
    'reading_time_minutes': 2,
    'tag_list': ['flutter', 'cli', 'dart', 'mobile'],
  };

  static const List<Map<String, dynamic>> dummyRawArticlesResponse = [
    {
      "id": 1028679,
      "title": "Flutter CLI Cheat Sheet",
      "description":
          "This is a cheat sheet for the most useful commands you will need when developing a flutter app.      ...",
      "readable_publish_date": "Mar 20",
      "url": "https://dev.to/assisfery/flutter-cli-cheat-sheet-1l1",
      "comments_count": 0,
      "published_timestamp": "2022-03-20T14:01:23Z",
      "positive_reactions_count": 2,
      "cover_image":
          "https://res.cloudinary.com/practicaldev/image/fetch/s--NoKMxm-u--/c_imagga_scale,f_auto,fl_progressive,h_420,q_auto,w_1000/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/lyvsxp267xgqe1fgmzyw.jpg",
      "reading_time_minutes": 2,
      "tag_list": ["flutter", "cli", "dart", "mobile"],
    },
    {
      "id": 990934,
      "title": "The Grammar of Graphics in Flutter Charts",
      "description":
          "The new version of Flutter visualization library Graphic optimized its declarative specification...",
      "readable_publish_date": "Feb 16",
      "url":
          "https://dev.to/entronad/the-grammar-of-graphics-in-flutter-charts-3fhj",
      "comments_count": 0,
      "published_timestamp": "2022-02-16T07:07:29Z",
      "positive_reactions_count": 7,
      "cover_image":
          "https://res.cloudinary.com/practicaldev/image/fetch/s--lI1ToHWX--/c_imagga_scale,f_auto,fl_progressive,h_420,q_auto,w_1000/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/s6yzbaf78x8acwpvznhb.jpg",
      "reading_time_minutes": 9,
      "tag_list": ["flutter", "dart", "android", "tutorial"],
    }
  ];

  static final List<Article> dummyArticlesResponse = List<Article>.from(
    dummyRawArticlesResponse.map((json) => Article.fromJson(json)),
  );

  static const List<Map<String, dynamic>> dummyRawAuthorArticlesResponse = [
    {
      "id": 1011954,
      "title": "This is why you need to use a factory constructor",
      "description": "In Dart, we can write multiple constructors for a class which allows different types of...",
      "readable_publish_date": "Mar 6",
      "url": "https://dev.to/aqueel/this-is-why-you-need-to-use-a-factory-constructor-kbm",
      "comments_count": 0,
      "published_timestamp": "2022-03-06T02:53:35Z",
      "positive_reactions_count": 6,
      "cover_image": null,
      "reading_time_minutes": 2,
      "tag_list": ["programming", "flutter", "dart"],
      "user": {
        "name": "Aqueel Aboobacker",
        "username": "aqueel",
        "twitter_username": "iamAQL",
        "github_username": null,
        "website_url": "https://aqueelaboobacker.com",
        "profile_image":
        "https://res.cloudinary.com/practicaldev/image/fetch/s--2NmpFXab--/c_fill,f_auto,fl_progressive,h_640,q_auto,w_640/https://dev-to-uploads.s3.amazonaws.com/uploads/user/profile_image/571496/2a4f9624-7cb5-492e-a8c9-d29e688a72bf.png",
        "profile_image_90":
        "https://res.cloudinary.com/practicaldev/image/fetch/s--e5ooH0qu--/c_fill,f_auto,fl_progressive,h_90,q_auto,w_90/https://dev-to-uploads.s3.amazonaws.com/uploads/user/profile_image/571496/2a4f9624-7cb5-492e-a8c9-d29e688a72bf.png"
      }
    },
    {
      "id": 588810,
      "title": "Flutter Firebase Messaging: Where everyone makes mistakes!",
      "description": "When I first got to integrate firebase messaging to flutter, I read the official documentation and ma...",
      "readable_publish_date": "Feb 1 '21",
      "url": "https://dev.to/aqueel/flutter-firebase-messaging-where-everyone-makes-mistakes-3g0i",
      "comments_count": 1,
      "published_timestamp": "2021-02-01T14:36:17Z",
      "positive_reactions_count": 11,
      "cover_image":
      "https://res.cloudinary.com/practicaldev/image/fetch/s--dbLVyENC--/c_imagga_scale,f_auto,fl_progressive,h_420,q_auto,w_1000/https://dev-to-uploads.s3.amazonaws.com/i/m7fv3gnz62ukkgljt95m.png",
      "reading_time_minutes": 5,
      "tag_list": ["flutter", "dart", "programming"],
      "user": {
        "name": "Aqueel Aboobacker",
        "username": "aqueel",
        "twitter_username": "iamAQL",
        "github_username": null,
        "website_url": "https://aqueelaboobacker.com",
        "profile_image":
        "https://res.cloudinary.com/practicaldev/image/fetch/s--2NmpFXab--/c_fill,f_auto,fl_progressive,h_640,q_auto,w_640/https://dev-to-uploads.s3.amazonaws.com/uploads/user/profile_image/571496/2a4f9624-7cb5-492e-a8c9-d29e688a72bf.png",
        "profile_image_90":
        "https://res.cloudinary.com/practicaldev/image/fetch/s--e5ooH0qu--/c_fill,f_auto,fl_progressive,h_90,q_auto,w_90/https://dev-to-uploads.s3.amazonaws.com/uploads/user/profile_image/571496/2a4f9624-7cb5-492e-a8c9-d29e688a72bf.png"
      }
    }
  ];

  static final List<Article> dummyAuthorArticlesResponse = List<Article>.from(
    dummyRawAuthorArticlesResponse.map((json) => Article.fromJson(json)),
  );

  static const Map<String, dynamic> dummyRawArticleDetails = {
    "id": 1027874,
    "title": "Why should you use Flutter?",
    "description":
        "Because i told you to. Flutter is the hot new framework and everyone else 's doing it, so why...",
    "readable_publish_date": "Mar 19",
    "url": "https://dev.to/dimaodin/why-should-you-use-flutter-4510",
    "comments_count": 7,
    "published_timestamp": "2022-03-19T14:02:57Z",
    "positive_reactions_count": 12,
    "cover_image":
        "https://res.cloudinary.com/practicaldev/image/fetch/s--0-GMbn0---/c_imagga_scale,f_auto,fl_progressive,h_420,q_auto,w_1000/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/bguepp7a7agl94m8l36i.png",
    "reading_time_minutes": 5,
    "tag_list": ["flutter", "dart", "mobile", "web"],
    "body_html":
        "\u003cp\u003eBecause i told you to. Flutter is the hot new framework and everyone else 's doing it, so why shouldn't YOU?\u003cbr\u003e\u003cbr\u003e\n\u003cstrong\u003eSeriously:\u003c/strong\u003e There are plenty of reasons why you should use flutter.\u003cbr\u003e\nLet's discuss what it offers over other cross-platform tools.\u003c/p\u003e\n\n\u003cp\u003eFlutter is an open source mobile application development framework by Google that allows you to use the same codebase for building iOS and Android output. You can write one set of business logic or UI codes and then just share it with either platform as long as the SDKs are available. The developer experience is very similar to React Native, but Flutter works better than RN because it provides a faster development cycle, more widgets support(all those material design components), and very smooth animations due to hardware acceleration.\u003c/p\u003e\n\n\u003cp\u003eThe first reason why you should consider using Flutter is that there is no need to write additional business logic or UI codes because Flutter comes with excellent features like stateful hot reload, code sharing, deep linking support, and fast development cycle to make your dev experience much better than any other option out there!    \u003c/p\u003e\n\n\u003cp\u003eNow back to our original topic. Let's discuss the benefits available when using Flutter over other cross-platform technologies like React Native or Xamarin.\u003c/p\u003e\n\n\u003cp\u003e\u003cstrong\u003e· Stateful Hot Reload -\u003c/strong\u003e\u003cbr\u003e\nThe stateful hot reload feature in Flutter allows you to change the code of your app while it's running. In other words, the changes you make to your source files will be applied immediately without restarting or recompiling. This is a life changer! You can imagine that when you're developing an application and even if it takes 2 minutes to recompile, that ~10 seconds of waiting really add up over time. So this feature alone makes a big difference in developer experience by making development a breeze. If this doesn't convince you enough, think about how much time you could save during refactoring when everything would work \"as expected\" even after changing your source files.\u003c/p\u003e\n\n\u003cp\u003e\u003cstrong\u003e· State management -\u003c/strong\u003e\u003cbr\u003e\nFlutter allows the developer to manage the state of their app with an easy-to-use framework that provides all the tools developers need without creating too many boilerplate codes. Everything in Flutter is built around this concept, and it's really awesome! When you're working on iOS or Android projects, you would usually find yourself duplicating codes for routing which could be quite time consuming during development; but thanks to this excellent state management feature in Flutter, you can write one set of business logic/UI code and the framework will automatically route the user flow(navigation) by itself depending on how deep you are in the widget tree.\u003c/p\u003e\n\n\u003cp\u003e\u003cstrong\u003e· Widgets -\u003c/strong\u003e\u003cbr\u003e\nReact Native comes with only a handful number of widgets, while Flutter provides over 90 high-quality widgets to choose from. It's difficult to find yourself limited when it comes to the variety of UI components available for you to use during development thanks to this extensive support. Plus, all these widgets are customizable because you can pass parameters as needed. For example, if you need your image's background color or border radius changed, that's easy! Just pass those values as parameters and Flutter will do the job! In contrast, Xamarin Forms doesn't give you great default widgets like those provided by Flutter; instead, the developer must either write their own or use a third-party library, which can be time consuming and error-prone since the widgets themselves may not be standardized into a framework.\u003c/p\u003e\n\n\u003cp\u003e\u003cstrong\u003e· Animations -\u003c/strong\u003e\u003cbr\u003e\nFlutter uses Skia as its 2D rendering engine. This engine is very performant because it takes advantage of every bit of GPU power you have on your device to make animations as smooth as possible. As I mentioned earlier, Flutter has its own hardware acceleration feature that allows for fast and efficient rendering on mobile devices with limited resources. Additionally, this animation system is completely customizable since developers can fine tune each layer by setting a tag associated with it.\u003c/p\u003e\n\n\u003cp\u003e\u003cstrong\u003e· Platform integrations -\u003c/strong\u003e\u003cbr\u003e\nFlutter currently provides support for both iOS and Android. The framework is designed with the idea that it would be easy to integrate with other platforms in the future.\u003c/p\u003e\n\n\u003cp\u003e\u003cstrong\u003e· Material Design -\u003c/strong\u003e\u003cbr\u003e\nDesigning mobile UIs are often complicated due to differences between platforms, but not with Flutter! Flutter implements Google's Material Design UI guidelines which means you don't have to worry about things like making sure your widgets are consistent across platform because they're all based on Google's design principles. It also helps that there are many material widgets available out of the box thanks to our friendly community. Just look at ic_menu_share, this button was implemented using Flutter from the ground up using Material as a guideline.\u003c/p\u003e\n\n\u003cp\u003e\u003cstrong\u003e· Future plans -\u003c/strong\u003e\u003cbr\u003e\nGoogle has been showing promising progress with Flutter. In fact, there have been talks about replacing Android's bad old WebView with a new modern engine built by Google that uses UI rendering from Chrome which means that one day all your web-based apps can be run natively on mobile devices.\u003c/p\u003e\n\n\u003cp\u003e\u003cstrong\u003e· Great documentation -\u003c/strong\u003e\u003cbr\u003e\nFlutter is open source so anyone with the knowledge can contribute to our great documentation. The docs are very detailed and have diagrams, written in Google's Material Design language that is easy to read. There are examples of tests using each widget, too!\u003c/p\u003e\n\n\u003cp\u003eIf you're writing code for both Android and iOS projects instead of just one type of project over another, you'd save time because the codebase would be less extensive due to not needing different implementations for each platform/device you support. You could easily make changes too without worrying about breaking something on another device or platform since you only have to write the code once.\u003c/p\u003e\n\n\u003cp\u003e· Since Flutter doesn't use native components, you don't need to wait on the platform team to update you when it comes to features and bug fixes! The framework takes care of this for you because these widgets are very lightweight.\u003c/p\u003e\n\n\u003cp\u003e· Flutter provides great performance due to its built-in hardware acceleration system, which means that it'll be able to get your app running fast without needing too many resources. You wouldn't have to worry about closing other apps running in the background because it uses only 1 core's worth of processing power!   \u003c/p\u003e\n\n\u003cp\u003e· Although not yet supported, Flutter is working towards integrating Google's instrumentation testing.    \u003c/p\u003e\n\n\u003cp\u003e· Flutter provides built-in support for localization so it takes less time to build an app that supports multiple languages   You can check out all of the widgets available here.\u003c/p\u003e\n\n\u003cp\u003eIf you're interested in learning more, visit \u003ca href=\"http://flutter.io\"\u003ehttp://flutter.io\u003c/a\u003e for more information!\u003c/p\u003e\n\n\u003cp\u003eIf you're not sure where to get started, don't worry because there are plenty of tutorials on the website that will help get your development started. I'd recommend checking out their beautifully written getting started guide. There is also a great tutorial on building beautiful user interfaces here!\u003cbr\u003e\nAdditionally, they offer many resources like videos and examples of applications made with flutter. \u003c/p\u003e\n\n\u003cp\u003eCheers!\u003cbr\u003e\nThanks for reading. ❤️\u003c/p\u003e\n\n",
    "body_markdown":
        "Because i told you to. Flutter is the hot new framework and everyone else 's doing it, so why shouldn't YOU?   \n**Seriously:** There are plenty of reasons why you should use flutter.\nLet's discuss what it offers over other cross-platform tools.\n\n\n\nFlutter is an open source mobile application development framework by Google that allows you to use the same codebase for building iOS and Android output. You can write one set of business logic or UI codes and then just share it with either platform as long as the SDKs are available. The developer experience is very similar to React Native, but Flutter works better than RN because it provides a faster development cycle, more widgets support(all those material design components), and very smooth animations due to hardware acceleration.\n\n\nThe first reason why you should consider using Flutter is that there is no need to write additional business logic or UI codes because Flutter comes with excellent features like stateful hot reload, code sharing, deep linking support, and fast development cycle to make your dev experience much better than any other option out there!    \n\n\nNow back to our original topic. Let's discuss the benefits available when using Flutter over other cross-platform technologies like React Native or Xamarin.\n\n**· Stateful Hot Reload -**\nThe stateful hot reload feature in Flutter allows you to change the code of your app while it's running. In other words, the changes you make to your source files will be applied immediately without restarting or recompiling. This is a life changer! You can imagine that when you're developing an application and even if it takes 2 minutes to recompile, that ~10 seconds of waiting really add up over time. So this feature alone makes a big difference in developer experience by making development a breeze. If this doesn't convince you enough, think about how much time you could save during refactoring when everything would work \"as expected\" even after changing your source files.\n\n**· State management -**\nFlutter allows the developer to manage the state of their app with an easy-to-use framework that provides all the tools developers need without creating too many boilerplate codes. Everything in Flutter is built around this concept, and it's really awesome! When you're working on iOS or Android projects, you would usually find yourself duplicating codes for routing which could be quite time consuming during development; but thanks to this excellent state management feature in Flutter, you can write one set of business logic/UI code and the framework will automatically route the user flow(navigation) by itself depending on how deep you are in the widget tree.\n\n**· Widgets -**\nReact Native comes with only a handful number of widgets, while Flutter provides over 90 high-quality widgets to choose from. It's difficult to find yourself limited when it comes to the variety of UI components available for you to use during development thanks to this extensive support. Plus, all these widgets are customizable because you can pass parameters as needed. For example, if you need your image's background color or border radius changed, that's easy! Just pass those values as parameters and Flutter will do the job! In contrast, Xamarin Forms doesn't give you great default widgets like those provided by Flutter; instead, the developer must either write their own or use a third-party library, which can be time consuming and error-prone since the widgets themselves may not be standardized into a framework.\n\n**· Animations -**\nFlutter uses Skia as its 2D rendering engine. This engine is very performant because it takes advantage of every bit of GPU power you have on your device to make animations as smooth as possible. As I mentioned earlier, Flutter has its own hardware acceleration feature that allows for fast and efficient rendering on mobile devices with limited resources. Additionally, this animation system is completely customizable since developers can fine tune each layer by setting a tag associated with it.\n\n**· Platform integrations -**\nFlutter currently provides support for both iOS and Android. The framework is designed with the idea that it would be easy to integrate with other platforms in the future.\n\n**· Material Design -**\nDesigning mobile UIs are often complicated due to differences between platforms, but not with Flutter! Flutter implements Google's Material Design UI guidelines which means you don't have to worry about things like making sure your widgets are consistent across platform because they're all based on Google's design principles. It also helps that there are many material widgets available out of the box thanks to our friendly community. Just look at ic_menu_share, this button was implemented using Flutter from the ground up using Material as a guideline.\n\n**· Future plans -**\nGoogle has been showing promising progress with Flutter. In fact, there have been talks about replacing Android's bad old WebView with a new modern engine built by Google that uses UI rendering from Chrome which means that one day all your web-based apps can be run natively on mobile devices.\n\n**· Great documentation -**\nFlutter is open source so anyone with the knowledge can contribute to our great documentation. The docs are very detailed and have diagrams, written in Google's Material Design language that is easy to read. There are examples of tests using each widget, too!\n\n\nIf you're writing code for both Android and iOS projects instead of just one type of project over another, you'd save time because the codebase would be less extensive due to not needing different implementations for each platform/device you support. You could easily make changes too without worrying about breaking something on another device or platform since you only have to write the code once.\n\n· Since Flutter doesn't use native components, you don't need to wait on the platform team to update you when it comes to features and bug fixes! The framework takes care of this for you because these widgets are very lightweight.\n\n· Flutter provides great performance due to its built-in hardware acceleration system, which means that it'll be able to get your app running fast without needing too many resources. You wouldn't have to worry about closing other apps running in the background because it uses only 1 core's worth of processing power!   \n\n· Although not yet supported, Flutter is working towards integrating Google's instrumentation testing.    \n\n· Flutter provides built-in support for localization so it takes less time to build an app that supports multiple languages   You can check out all of the widgets available here.\n\n\nIf you're interested in learning more, visit http://flutter.io for more information!\n\nIf you're not sure where to get started, don't worry because there are plenty of tutorials on the website that will help get your development started. I'd recommend checking out their beautifully written getting started guide. There is also a great tutorial on building beautiful user interfaces here!\nAdditionally, they offer many resources like videos and examples of applications made with flutter. \n\n\nCheers!\nThanks for reading. ❤️",
    "user": {
      "name": "Dima Odintsov",
      "username": "dimaodin",
      "twitter_username": null,
      "github_username": "dimaodin",
      "website_url": "https://www.dimaodin.com",
      "profile_image":
          "https://res.cloudinary.com/practicaldev/image/fetch/s--blxnsRK3--/c_fill,f_auto,fl_progressive,h_640,q_auto,w_640/https://dev-to-uploads.s3.amazonaws.com/uploads/user/profile_image/710013/7af4dc95-ad2d-4a29-8582-3a1d604bf226.jpeg",
      "profile_image_90":
          "https://res.cloudinary.com/practicaldev/image/fetch/s--BTUV3SSm--/c_fill,f_auto,fl_progressive,h_90,q_auto,w_90/https://dev-to-uploads.s3.amazonaws.com/uploads/user/profile_image/710013/7af4dc95-ad2d-4a29-8582-3a1d604bf226.jpeg"
    }
  };

  static final Article dummyArticleDetails = Article.fromJson(dummyRawArticleDetails);
}
