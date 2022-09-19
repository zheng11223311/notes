.class Lcom/tudou/android/Youku$7;
.super Ljava/lang/Thread;
.source "Youku.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/android/Youku;->initStaticsTrack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/android/Youku;


# direct methods
.method constructor <init>(Lcom/tudou/android/Youku;)V
    .locals 0

    .prologue
    .line 1162
    iput-object p1, p0, Lcom/tudou/android/Youku$7;->this$0:Lcom/tudou/android/Youku;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1165
    const-string v0, "pid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pidsm name :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tudou/android/Youku$7;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pkg name :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/tudou/android/Youku;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    .line 1167
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/AboutTudouActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u5173\u4e8e\u571f\u8c46"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/AttentionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u8ba2\u9605\u5217\u8868"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/BuildInBrowserActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u5185\u5d4c\u6d4f\u89c8\u5668"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/CacheFolderActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u7f13\u5b58\u5267\u96c6\u9875"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/CachingListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u7f13\u5b58-\u6b63\u5728\u7f13\u5b58"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/CaptureResultAcitvity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u626b\u4e00\u626b-\u7ed3\u679c\u9875"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/ChannelSquareActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u9891\u9053\u5e7f\u573a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/CrashActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u78b0\u649e\u7a7f\u8d8a-\u521d\u59cb\u9875"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/CrashResultAcitvity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u78b0\u649e\u7a7f\u8d8a-\u7ed3\u679c\u9875"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u89c6\u9891\u64ad\u653e\u9875"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/guide/GuideActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u5e2e\u52a9\u9875"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/HomePageActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u9996\u9875tab"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/LocalVideoActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u7f13\u5b58-\u672c\u5730\u89c6\u9891"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/LoginActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u767b\u5f55\u9875"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/MoreActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u8bbe\u7f6e"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/MoreDownloadActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u7f13\u5b58-\u5267\u96c6-\u7f13\u5b58\u66f4\u591a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/MyFavoriteActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u6211\u7684\u6536\u85cf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u6211\u7684\u6536\u85cf-\u89c6\u9891"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u6211\u7684\u6536\u85cf-\u8c46\u5355"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/MyFavoriteActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u6211\u7684\u6536\u85cf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/PlayHistoryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u89c2\u770b\u8bb0\u5f55"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/NewPodcastActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u81ea\u9891\u9053\u9875"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/RegistActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u90ae\u7bb1\u6ce8\u518c\u9875"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/SearchResultManDetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u641c\u7d22-\u4eba\u7269\u8be6\u60c5\u9875"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/UpdateActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u63a8\u9001\u66f4\u65b0\u9875"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/UploadActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u89c6\u9891\u4e0a\u4f20-\u4fe1\u606f\u586b\u5199"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/CheckedActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u6211\u7684\u4e0a\u4f20-\u53d1\u5e03\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/UploadManagerActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u6211\u7684\u4e0a\u4f20-\u89c6\u9891\u7ba1\u7406"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/VideoRecommendActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u7cbe\u5f69\u63a8\u8350"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/WebViewActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u7f51\u9875\u5c55\u793a\u9875\u9762"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/WeiboManageActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u5206\u4eab\u8bbe\u7f6e\u9875"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u542f\u52a8\u9875"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/guide/SplashActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u5f15\u5bfc\u9875"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/guide/SplashSubActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u5f15\u5bfc\u81ea\u9891\u9053\u8be6\u60c5\u9875"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/PhoneRegistActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u624b\u673a\u53f7\u6ce8\u518c\u9875"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/DownLoadActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u641c\u7d22-\u70ed\u8bcd\u9875"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u641c\u7d22-\u641c\u7d22\u5386\u53f2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u641c\u7d22-\u89c6\u9891\u641c\u7d22\u7ed3\u679c\u9875"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/fragment/SearchTudouActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u641c\u7d22\u521d\u59cb\u9875"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/PhoneLoginActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u624b\u673a\u53f7\u767b\u5f55\u9875"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/fragment/HomeFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u9996\u9875tab"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/fragment/DiscoveryFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u53d1\u73b0tab"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u6211\u7684tab"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u8ba2\u9605tab"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/push/PushReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u901a\u77e5\u680f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/ChannelSquareActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u81ea\u9891\u9053\u5e7f\u573a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    const-class v1, Lcom/tudou/ui/activity/VipBuyActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u4f1a\u5458\u8be6\u60c5\u9875"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    return-void
.end method
