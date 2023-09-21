//iOS App version check endpoint
const String iosUrl = 'https://apps.apple.com/in/app/kyn/id1668807082';
const String androidUrl =
    'https://play.google.com/store/apps/details?id=com.theproindia.kyn';

// //Strapi endPoint :
const String journalsEndPoint = '/api/journals';
const String localitiesEndPoint = '/custom-api/locality';
const String categoriesEndPoint = '/custom-api/category';
const String reportResponseEndPoint = '/api/report-responses';

// //Api endPoint
//User
const String userEndPoint = '/user';
const String guestEndPoint = '/user/guest/info';
const String fcmRegisterEndPoint = '/user/register/fcmtoken';
const String registrationRequest = '/registrationRequest';
//Block user
const String blockUserEndPoint = '/user/block';
//Followers
const String followerApiEndPoint = '/user/follow';

const String generateSasTokenEndpoint = '/blob/sasToken';
//Journals
const String journalEndPoint = '/journal';
const String topJournalEndPoint = '/trends/topJournal';
const String cityTrendsJournalEndPoint = '/cityTrendsJournal/cityTrends';
const String userJournalBookmarkEndPoint = '/userJournalBookmark';
//Telecast
const String videoEndPoint = '/video';
const String telecastScheduleEndPoint = '/telecastScheduleDetail/scheduleDtl';
const String topTelecastEndPoint = '/trends/topVideo';
const String cityTrendsTelecastEndPoint = '/cityTrendsVideo/cityTrends';
const String userTelecastBookmarkEndPoint = '/userVideoBookmark';
const String liveVideoEndPoint = '/userLiveRequest';
const String scheduleVideoEndPoint = '/userScheduleRequest';
const String liveThumbnailEndPoint = '/liveThumbnail';
const String liveStreamEndPoint = '/liveStreamUrl';

//Shorts
const String shortsEndPoint = '/shorts';
const String userShortsBookmarkEndPoint = '/userShortsBookmark';

// Home
const String homeEndPoint = '/homePage';

//Notification
const String notificationEndPoint = '/notification';

// Post
const String postEndPoint = '/post';
const String userPostBookmarkEndPoint = '/userPostBookmark';

//Report
const String reportsDataEndPoint = '/reports/reportsByUserId';
const String reportJournalEndPoint = '/reports/journal';
const String reportVideoEndPoint = '/reports/video';
const String reportShortsEndPoint = '/reports/shorts';
const String reportUserEndPoint = '/reports/users';
const String reportPostEndPoint = '/reports/post';

// Token
const String sasTokenEndPoint = '/eventhub/getSasToken';
const String strapiTokenEndPoint = '/token';
//Like
const String userJournalLikeEndPoint = '/userJournalLike';
const String userVideoLikeEndPoint = '/userVideoLike';
const String userShortsLikeEndPoint = '/userShortsLike';

// User Activity
const String userActivity = '/useractivity';
const String userActivityInputEndPoint = '/user-activities/messages';

//Content events in eventhub
const String contentModerationEndPoint = '/content-moderator/messages';
const String contentTranscodeEndPoint = '/transcode-event/messages';

// Follower events in eventhub
const String followerEventEndPoint = '/followers-event/messages';
