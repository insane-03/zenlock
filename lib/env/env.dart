//Api Url
const apiUrl = String.fromEnvironment("API_URL",
    defaultValue: "https://stage-kyn-restapi.azurewebsites.net/api");

//Event Hub Url
const eventHubEndpoint = String.fromEnvironment("EVENTHUB_URL",
    defaultValue: "https://stage-kyn-eventhub.servicebus.windows.net");
const isModeratorEvent =
    String.fromEnvironment("IS_MODERATOR_EVENT", defaultValue: 'true');

//Strapi Url
const strapiUrl = String.fromEnvironment("STRAPI_URL",
    defaultValue: "https://stage-kyn-strapi.azurewebsites.net");

//ADB2C App Config
const adb2cTenent =
    String.fromEnvironment('ADB2C_TENANT', defaultValue: 'stagekyn');

const adb2cClient = String.fromEnvironment('ADB2C_CLIENT',
    defaultValue: 'af129f64-b43e-40a2-80a4-e19cb8d6c68b');

const adb2cScope = String.fromEnvironment('ADB2C_SCOPE',
    defaultValue:
        'https://stagekyn.onmicrosoft.com/87b0ed56-9752-4300-b232-2afb516c6c7d/');

const adb2cRedirectUri = String.fromEnvironment('ADB2C_REDIRECT',
    defaultValue:
        'msauth://com.theproindia.kyn/MtBxk6zBwueYTRkMiEF%2FAg1hHA4%3D');

const adb2cPolicy =
    String.fromEnvironment('ADB2C_POLICY', defaultValue: 'B2C_1A_PH_SUSI');

const adb2cIdentifier =
    String.fromEnvironment('ADB2C_IDENTIFIER', defaultValue: 'Token');

const strapiToken = String.fromEnvironment('STRAPI_TOKEN',
    defaultValue:
        '66f952c9c1e1fd44ae5df270230ad3de097acd2b6ae94d7fc25349cd6503247e44d944c968fb12ef10fcc1c518ff914dd8748c1c112c661adb3f07da26c0683380ab5ba89519d95d1706f59f7778565f023414b67ea7b47838d1d0119dcd952cec8290e3d43a52d4f5169b1664e207721ea6a8f77d0614f87c5f53a637388e5c');

const blobEndPoint = String.fromEnvironment('BLOB_URI',
    defaultValue: 'https://stage-kynblob.azureedge.net');

const sasToken = String.fromEnvironment('SAS_TOKEN',
    defaultValue:
        'DefaultEndpointsProtocol=https;AccountName=stagekynsrg;AccountKey=XxS6V1lrB6eUfSf/mIzIHPb1DiMrEppLK8JV+kQgBdCUcH35ERv6KJQbL5l08e9szb2o+f3DEqhL+ASt4l8xIg==;EndpointSuffix=core.windows.net');

const sasTokenValidity =
    String.fromEnvironment('SAS_TOKEN_VALIDITY', defaultValue: '30');

const streamingEndpoint = String.fromEnvironment('STREAM_ENDPOINT',
    defaultValue:
        'https://stage-kyn-mediaserver-aci.g0gyc2hjaga7drha.centralindia.azurecontainer.io/');

const streamPath = String.fromEnvironment('STREAM_PATH',
    defaultValue: 'live/currentstream/index.m3u8');

const sentryDsnKey = String.fromEnvironment('SENTRY_DSN_KEY', defaultValue: '');

const sentryEnvironment =
    String.fromEnvironment('SENTRY_ENV', defaultValue: 'stage');
const gamificationFeatToggleString =
    String.fromEnvironment('GAMIFICATION_FEAT_TOGGLE', defaultValue: 'false');

const kynDomain = String.fromEnvironment('KYN_DOMAIN',
    defaultValue: 'https://stage.kynhood.com');
//gamification client credentials
const gamificationClientId = String.fromEnvironment('GAMIFICATIONCLIENTID',
    defaultValue: '1f5c88ef-830c-47f7-8da0-b17b4e3fe536');

const gamificationClientSecret = String.fromEnvironment(
    'GAMIFICATIONCLIENTSECRET',
    defaultValue: 'dbb74e4e-bf07-4a41-ab5c-f75696bc39dd');

const gamificationUsersClientId = String.fromEnvironment(
    'GAMIFICATIONUSERSCLIENTID',
    defaultValue: '627ca8c48748914da68db7a9');

const gamificationApplicationId = String.fromEnvironment(
    'GAMIFICATIONAPPLICATIONID',
    defaultValue: '6411ca0e8803bd763670c096');
// gameActions
const journalPostingId = String.fromEnvironment('JOURNALPOSTINGID',
    defaultValue: '6411cacd8803bd485670c0c0');
const profilePictureUpdateId = String.fromEnvironment('PROFILEPICTUREUPDATEID',
    defaultValue: '641454a48803bdec46717584');
const videoPostingId = String.fromEnvironment('VIDEOPOSTINGID',
    defaultValue: '64146a0e8803bd80cc71779b');
const shortsPostingId = String.fromEnvironment('SHORTSPOSTINGID',
    defaultValue: '64146a2c8803bd8d1871779d');
const userRegisteringId = String.fromEnvironment('USERREGISTERINGID',
    defaultValue: '64146a4f8803bd131d71779f');
//FirebaseConfigration
//FirebaseAndroid

const firebaseAppName =
    String.fromEnvironment('FIREBASEAPPNAME', defaultValue: 'kyn');

const firebaseApiKey = String.fromEnvironment('FIREBASEAPIKEY',
    defaultValue: 'AIzaSyDs8OqeLsL4sIY4kWKb04vkPRP3AFmF5go');

const firebaseAppId = String.fromEnvironment('FIREBASEAPPID',
    defaultValue: '1:498393887524:android:9ec87b548dbde94d6239b1');

const firebaseMessagingSenderId = String.fromEnvironment(
    'FIREBASEMESSAGINGSENDERID',
    defaultValue: '498393887524');

const firebaseProjectId = String.fromEnvironment('FIREBASEPROJECTID',
    defaultValue: 'know-your-neighbourhood-stage');

const firebaseStorageBucket = String.fromEnvironment('FIREBASESTORAGEBUCKET',
    defaultValue: 'know-your-neighbourhood-stage.appspot.com');

//FirebaseIOS
const firebaseIosAppId = String.fromEnvironment('FIREBASEIOSAPPID',
    defaultValue: '1:498393887524:ios:151b23783b2781a16239b1');

const firebaseIosApiKey = String.fromEnvironment('FIREBASEIOSAPIKEY',
    defaultValue: 'AIzaSyCmkq283dldnh7TXQCNdu9BeKeT_fu9i7w');

const firebaseIosClientId = String.fromEnvironment('FIREBASEIOSCLIENTID',
    defaultValue:
        '498393887524-ocflopgo191ccaefqsvqkl675jpm2a9m.apps.googleusercontent.com');

const firebaseIosBundleId = String.fromEnvironment('FIREBASEIOSBUNDLEID',
    defaultValue: 'com.theproindia.kyn');

//End FirebaseConfigration
const isTranscodeTrigger =
    String.fromEnvironment("ISTRANSCODETRIGGER", defaultValue: 'false');

const transcodeQueueName = String.fromEnvironment("TRANSCODEQUEUENAME",
    defaultValue: 'transcode-event');

const firebaseTopic = String.fromEnvironment('FIREBASETOPIC',
    defaultValue: 'generalNotification');

const analyticsEnvironment =
    String.fromEnvironment('ENVIRONMENTSTATE', defaultValue: 'development');

const imageProcessEventHub = String.fromEnvironment("IMAGE_PROCESS_EVENT_HUB",
    defaultValue: "image-process");

const followerFollowingFeature =
    String.fromEnvironment("FOLLOWER_FOLLOWING_FEATURE", defaultValue: "true");
