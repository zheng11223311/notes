.class public Lcom/tudou/ui/activity/HomePageActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "HomePageActivity.java"

# interfaces
.implements Lcom/youku/util/IAlertPositive;
.implements Lcom/youku/util/IAlert;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/ui/activity/HomePageActivity$OnBackListener;
    }
.end annotation


# static fields
.field private static final CACHE:I = 0x1

.field private static final DISCOVERY:I = 0x2

.field public static final FORCE_UPDATE:I = 0x3

.field private static final HOME:I = 0x0

.field private static final MSG_REFRESH_MY_ICON:I = 0x4d2

.field public static final OPTIONAL_UPDATE:I = 0x2

.field private static final SPACE:I = 0x3

.field public static final TAG:Ljava/lang/String; = "HomePageActivity"

.field public static TAG_FROM_FIRST_PAGE:Ljava/lang/String; = null

.field private static final UPDATE_DOWNLOAD_APK:I = 0x1

.field private static final blackVideoGuideList:[Ljava/lang/String;

.field public static channelsdata:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/ChannelItem;",
            ">;"
        }
    .end annotation
.end field

.field private static context:Landroid/content/Context;

.field public static isNeedRefreshMyIcon:Z

.field public static isShare:Z

.field private static isStartSoService:Z

.field public static isfirstGoChannel:Z

.field public static isfirstGoHomeActivityOnResume:Z

.field public static mChannalListV5:Lcom/youku/vo/ChannelListV5;

.field public static mHasGameCenterClicked:Z

.field public static mIsFistInApp:Z

.field public static mIsFistInAppKeySub:Z

.field public static startTime:J


# instance fields
.field public final MY_TUDOU_ICON_STATE:Ljava/lang/String;

.field private apk:Ljava/io/File;

.field private cacheIconReceiver:Landroid/content/BroadcastReceiver;

.field private guideVideo:Z

.field private handler:Landroid/os/Handler;

.field private initial:Lcom/youku/vo/Initial;

.field private isCancelDownload:Z

.field private mAdStartpage:Lcom/youku/vo/AdStartpage;

.field private mFootView:Landroid/view/View;

.field public mTudouTab:Lcom/youku/widget/TudouTab;

.field private mVPadapter:Lcom/tudou/adapter/HomeVPAdapter;

.field public mViewPager:Lcom/youku/widget/TabViewPager;

.field public onBackListener:Lcom/tudou/ui/activity/HomePageActivity$OnBackListener;

.field private progress:I

.field private progressDialog:Lcom/youku/widget/TudouProDialog;

.field private updateHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    sput-boolean v2, Lcom/tudou/ui/activity/HomePageActivity;->isShare:Z

    .line 105
    sput-object v0, Lcom/tudou/ui/activity/HomePageActivity;->channelsdata:Ljava/util/ArrayList;

    .line 106
    sput-object v0, Lcom/tudou/ui/activity/HomePageActivity;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    .line 121
    sput-boolean v1, Lcom/tudou/ui/activity/HomePageActivity;->isfirstGoChannel:Z

    .line 123
    sput-boolean v1, Lcom/tudou/ui/activity/HomePageActivity;->isfirstGoHomeActivityOnResume:Z

    .line 126
    const-string v0, "first"

    sput-object v0, Lcom/tudou/ui/activity/HomePageActivity;->TAG_FROM_FIRST_PAGE:Ljava/lang/String;

    .line 131
    sput-boolean v1, Lcom/tudou/ui/activity/HomePageActivity;->mIsFistInApp:Z

    .line 135
    sput-boolean v2, Lcom/tudou/ui/activity/HomePageActivity;->mHasGameCenterClicked:Z

    .line 522
    sput-boolean v2, Lcom/tudou/ui/activity/HomePageActivity;->isStartSoService:Z

    .line 1286
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "T8830"

    aput-object v1, v0, v2

    sput-object v0, Lcom/tudou/ui/activity/HomePageActivity;->blackVideoGuideList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    .line 92
    iput-boolean v1, p0, Lcom/tudou/ui/activity/HomePageActivity;->guideVideo:Z

    .line 96
    const-string v0, "mytudou_icon_state"

    iput-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity;->MY_TUDOU_ICON_STATE:Ljava/lang/String;

    .line 112
    iput-object v2, p0, Lcom/tudou/ui/activity/HomePageActivity;->progressDialog:Lcom/youku/widget/TudouProDialog;

    .line 113
    iput-boolean v1, p0, Lcom/tudou/ui/activity/HomePageActivity;->isCancelDownload:Z

    .line 114
    iput-object v2, p0, Lcom/tudou/ui/activity/HomePageActivity;->apk:Ljava/io/File;

    .line 115
    iput v1, p0, Lcom/tudou/ui/activity/HomePageActivity;->progress:I

    .line 568
    new-instance v0, Lcom/tudou/ui/activity/HomePageActivity$2;

    invoke-direct {v0, p0}, Lcom/tudou/ui/activity/HomePageActivity$2;-><init>(Lcom/tudou/ui/activity/HomePageActivity;)V

    iput-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity;->handler:Landroid/os/Handler;

    .line 601
    new-instance v0, Lcom/tudou/ui/activity/HomePageActivity$3;

    invoke-direct {v0, p0}, Lcom/tudou/ui/activity/HomePageActivity$3;-><init>(Lcom/tudou/ui/activity/HomePageActivity;)V

    iput-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity;->cacheIconReceiver:Landroid/content/BroadcastReceiver;

    .line 1191
    new-instance v0, Lcom/tudou/ui/activity/HomePageActivity$11;

    invoke-direct {v0, p0}, Lcom/tudou/ui/activity/HomePageActivity$11;-><init>(Lcom/tudou/ui/activity/HomePageActivity;)V

    iput-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity;->updateHandler:Landroid/os/Handler;

    .line 1274
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/activity/HomePageActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/HomePageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/tudou/ui/activity/HomePageActivity;->onChangeTab(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/tudou/ui/activity/HomePageActivity;)Lcom/youku/vo/Initial;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/HomePageActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity;->initial:Lcom/youku/vo/Initial;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/activity/HomePageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/HomePageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/tudou/ui/activity/HomePageActivity;->progressDialog(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/tudou/ui/activity/HomePageActivity;Lcom/youku/vo/Initial;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/HomePageActivity;
    .param p1, "x1"    # Lcom/youku/vo/Initial;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/tudou/ui/activity/HomePageActivity;->gamePop(Lcom/youku/vo/Initial;)V

    return-void
.end method

.method static synthetic access$400(Lcom/tudou/ui/activity/HomePageActivity;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/HomePageActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/tudou/ui/activity/HomePageActivity;->downloadApk(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/tudou/ui/activity/HomePageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/HomePageActivity;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/tudou/ui/activity/HomePageActivity;->isCancelDownload:Z

    return v0
.end method

.method static synthetic access$502(Lcom/tudou/ui/activity/HomePageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/HomePageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/tudou/ui/activity/HomePageActivity;->isCancelDownload:Z

    return p1
.end method

.method static synthetic access$600(Lcom/tudou/ui/activity/HomePageActivity;)Lcom/youku/widget/TudouProDialog;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/HomePageActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity;->progressDialog:Lcom/youku/widget/TudouProDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/ui/activity/HomePageActivity;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/HomePageActivity;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity;->apk:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/activity/HomePageActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/HomePageActivity;

    .prologue
    .line 84
    iget v0, p0, Lcom/tudou/ui/activity/HomePageActivity;->progress:I

    return v0
.end method

.method private dialog(Lcom/youku/vo/Initial;)V
    .locals 3
    .param p1, "initial"    # Lcom/youku/vo/Initial;

    .prologue
    .line 1014
    new-instance v0, Lcom/youku/widget/TudouDialog;

    sget-object v1, Lcom/youku/widget/TudouDialog$TYPE;->picker:Lcom/youku/widget/TudouDialog$TYPE;

    invoke-direct {v0, p0, v1}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;Lcom/youku/widget/TudouDialog$TYPE;)V

    .line 1015
    .local v0, "dialog":Lcom/youku/widget/TudouDialog;
    const-string/jumbo v1, "\u53d1\u73b0\u65b0\u7248\u672c"

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setTitle(Ljava/lang/String;)V

    .line 1016
    iget-object v1, p1, Lcom/youku/vo/Initial;->update:Lcom/youku/vo/Initial$Update;

    iget-object v1, v1, Lcom/youku/vo/Initial$Update;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 1018
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setCancelable(Z)V

    .line 1019
    const v1, 0x7f0d01ef

    new-instance v2, Lcom/tudou/ui/activity/HomePageActivity$7;

    invoke-direct {v2, p0, v0, p1}, Lcom/tudou/ui/activity/HomePageActivity$7;-><init>(Lcom/tudou/ui/activity/HomePageActivity;Lcom/youku/widget/TudouDialog;Lcom/youku/vo/Initial;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(ILandroid/view/View$OnClickListener;)V

    .line 1030
    const v1, 0x7f0d01ee

    invoke-virtual {p0, v1}, Lcom/tudou/ui/activity/HomePageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tudou/ui/activity/HomePageActivity$8;

    invoke-direct {v2, p0, v0, p1}, Lcom/tudou/ui/activity/HomePageActivity$8;-><init>(Lcom/tudou/ui/activity/HomePageActivity;Lcom/youku/widget/TudouDialog;Lcom/youku/vo/Initial;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1045
    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->show()V

    .line 1046
    return-void
.end method

.method private downloadApk(Ljava/lang/String;Z)V
    .locals 18
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "isNotForse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1144
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->createNewApkFile()Ljava/io/File;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/tudou/ui/activity/HomePageActivity;->apk:Ljava/io/File;

    .line 1150
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/ui/activity/HomePageActivity;->apk:Ljava/io/File;

    invoke-direct {v12, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1151
    .local v12, "out":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1153
    .local v2, "bis":Ljava/io/BufferedOutputStream;
    new-instance v13, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1154
    .local v13, "url":Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 1155
    .local v4, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 1156
    const-wide/16 v6, 0x0

    .line 1157
    .local v6, "downLoadFileSize":D
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v14

    int-to-long v8, v14

    .line 1158
    .local v8, "fileSize":J
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 1159
    .local v5, "is":Ljava/io/InputStream;
    const/16 v14, 0x400

    new-array v3, v14, [B

    .line 1162
    .local v3, "buf":[B
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/tudou/ui/activity/HomePageActivity;->isCancelDownload:Z

    if-eqz v14, :cond_1

    .line 1184
    :cond_0
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 1185
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 1186
    return-void

    .line 1164
    :cond_1
    invoke-virtual {v5, v3}, Ljava/io/InputStream;->read([B)I

    move-result v11

    .line 1165
    .local v11, "numread":I
    int-to-double v14, v11

    add-double/2addr v6, v14

    .line 1167
    if-gtz v11, :cond_2

    .line 1169
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/ui/activity/HomePageActivity;->initial:Lcom/youku/vo/Initial;

    iget-object v14, v14, Lcom/youku/vo/Initial;->update:Lcom/youku/vo/Initial$Update;

    iget-object v14, v14, Lcom/youku/vo/Initial$Update;->version:Ljava/lang/String;

    invoke-static {v14, v8, v9}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;J)V

    .line 1170
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->installApk()V

    .line 1171
    if-nez p2, :cond_0

    .line 1172
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/activity/HomePageActivity;->finish()V

    goto :goto_1

    .line 1176
    :cond_2
    long-to-double v14, v8

    div-double v14, v6, v14

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v14, v14, v16

    double-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/tudou/ui/activity/HomePageActivity;->progress:I

    .line 1177
    new-instance v10, Landroid/os/Message;

    invoke-direct {v10}, Landroid/os/Message;-><init>()V

    .line 1178
    .local v10, "msg":Landroid/os/Message;
    const/4 v14, 0x1

    iput v14, v10, Landroid/os/Message;->what:I

    .line 1179
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/ui/activity/HomePageActivity;->updateHandler:Landroid/os/Handler;

    invoke-virtual {v14, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1181
    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14, v11}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0
.end method

.method private gamePop(Lcom/youku/vo/Initial;)V
    .locals 16
    .param p1, "initial"    # Lcom/youku/vo/Initial;

    .prologue
    .line 1052
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/youku/vo/Initial;->pop_page:Lcom/youku/vo/PopPage;

    .line 1053
    .local v15, "popPage":Lcom/youku/vo/PopPage;
    iget-object v14, v15, Lcom/youku/vo/PopPage;->game_information:Lcom/youku/vo/PopPage$GameInfomation;

    .line 1054
    .local v14, "infomation":Lcom/youku/vo/PopPage$GameInfomation;
    iget v2, v15, Lcom/youku/vo/PopPage;->state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    if-nez v14, :cond_1

    .line 1072
    :cond_0
    :goto_0
    return-void

    .line 1057
    :cond_1
    new-instance v13, Lcom/youku/gamecenter/GameDialog;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/youku/gamecenter/GameDialog;-><init>(Landroid/content/Context;)V

    .line 1060
    .local v13, "gameDialog":Lcom/youku/gamecenter/GameDialog;
    :try_start_0
    new-instance v1, Lcom/youku/gamecenter/data/GameDialogInfo;

    iget-object v2, v14, Lcom/youku/vo/PopPage$GameInfomation;->game_id:Ljava/lang/String;

    iget-object v3, v15, Lcom/youku/vo/PopPage;->game_image:Ljava/lang/String;

    iget-object v4, v14, Lcom/youku/vo/PopPage$GameInfomation;->game_name:Ljava/lang/String;

    iget-object v5, v14, Lcom/youku/vo/PopPage$GameInfomation;->game_logo:Ljava/lang/String;

    iget-object v6, v14, Lcom/youku/vo/PopPage$GameInfomation;->game_url:Ljava/lang/String;

    iget-object v7, v14, Lcom/youku/vo/PopPage$GameInfomation;->game_package_name:Ljava/lang/String;

    iget-object v8, v14, Lcom/youku/vo/PopPage$GameInfomation;->game_version_code:Ljava/lang/String;

    iget-object v9, v14, Lcom/youku/vo/PopPage$GameInfomation;->source:Ljava/lang/String;

    invoke-virtual {v14}, Lcom/youku/vo/PopPage$GameInfomation;->genTargetType()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/youku/gamecenter/data/GameDialogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1066
    .local v1, "gameDialogInfo":Lcom/youku/gamecenter/data/GameDialogInfo;
    invoke-virtual {v13, v1}, Lcom/youku/gamecenter/GameDialog;->show(Lcom/youku/gamecenter/data/GameDialogInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1067
    .end local v1    # "gameDialogInfo":Lcom/youku/gamecenter/data/GameDialogInfo;
    :catch_0
    move-exception v12

    .line 1068
    .local v12, "e":Ljava/lang/Exception;
    const-string v3, "TAG_TUDOU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u663e\u793a\u6e38\u620f\u5f39\u7a97\u51fa\u9519======"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v12, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private getChannelsData()V
    .locals 12

    .prologue
    .line 806
    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getTudouChannel()Ljava/lang/String;

    move-result-object v2

    .line 807
    .local v2, "channelUrl":Ljava/lang/String;
    invoke-static {v2}, Lcom/tudou/android/TudouApi;->formatURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 809
    .local v4, "formatUri":Ljava/lang/String;
    invoke-static {v4}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 811
    :try_start_0
    invoke-static {v4}, Lcom/tudou/android/TudouApi;->readUrlCacheFromLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 812
    .local v0, "cacheDataStr":Ljava/lang/String;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 813
    .local v8, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v10, "results"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 816
    .local v9, "resultArray":Lorg/json/JSONArray;
    sget-object v10, Lcom/tudou/ui/activity/HomePageActivity;->channelsdata:Ljava/util/ArrayList;

    if-nez v10, :cond_0

    .line 817
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sput-object v10, Lcom/tudou/ui/activity/HomePageActivity;->channelsdata:Ljava/util/ArrayList;

    .line 819
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v7, v10, :cond_1

    .line 820
    new-instance v1, Lcom/youku/vo/ChannelItem;

    invoke-direct {v1}, Lcom/youku/vo/ChannelItem;-><init>()V

    .line 821
    .local v1, "channelItem":Lcom/youku/vo/ChannelItem;
    invoke-virtual {v9, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    const-class v11, Lcom/youku/vo/ChannelItem;

    invoke-static {v10, v11}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "channelItem":Lcom/youku/vo/ChannelItem;
    check-cast v1, Lcom/youku/vo/ChannelItem;

    .line 823
    .restart local v1    # "channelItem":Lcom/youku/vo/ChannelItem;
    sget-object v10, Lcom/tudou/ui/activity/HomePageActivity;->channelsdata:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 826
    .end local v0    # "cacheDataStr":Ljava/lang/String;
    .end local v1    # "channelItem":Lcom/youku/vo/ChannelItem;
    .end local v7    # "i":I
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "resultArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v3

    .line 827
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 830
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const-class v10, Lcom/youku/network/IHttpRequest;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/network/IHttpRequest;

    .line 832
    .local v6, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v5, Lcom/youku/network/HttpIntent;

    invoke-direct {v5, v2}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;)V

    .line 833
    .local v5, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v10, Lcom/tudou/ui/activity/HomePageActivity$4;

    invoke-direct {v10, p0}, Lcom/tudou/ui/activity/HomePageActivity$4;-><init>(Lcom/tudou/ui/activity/HomePageActivity;)V

    invoke-interface {v6, v5, v10}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 872
    return-void
.end method

.method private initData()V
    .locals 5

    .prologue
    .line 537
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity;->mTudouTab:Lcom/youku/widget/TudouTab;

    iget-object v1, p0, Lcom/tudou/ui/activity/HomePageActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouTab;->setHandler(Landroid/os/Handler;)V

    .line 538
    new-instance v0, Lcom/tudou/adapter/HomeVPAdapter;

    sget-object v1, Lcom/tudou/ui/activity/HomePageActivity;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/tudou/ui/activity/HomePageActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tudou/ui/activity/HomePageActivity;->mTudouTab:Lcom/youku/widget/TudouTab;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tudou/adapter/HomeVPAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/os/Bundle;Lcom/youku/widget/TudouTab;)V

    iput-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity;->mVPadapter:Lcom/tudou/adapter/HomeVPAdapter;

    .line 540
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity;->mViewPager:Lcom/youku/widget/TabViewPager;

    iget-object v1, p0, Lcom/tudou/ui/activity/HomePageActivity;->mVPadapter:Lcom/tudou/adapter/HomeVPAdapter;

    invoke-virtual {v0, v1}, Lcom/youku/widget/TabViewPager;->setAdapter(Lcom/youku/widget/viewpager/PagerAdapter;)V

    .line 541
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity;->mViewPager:Lcom/youku/widget/TabViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/TabViewPager;->setEnabled(Z)V

    .line 542
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity;->mViewPager:Lcom/youku/widget/TabViewPager;

    iget-object v1, p0, Lcom/tudou/ui/activity/HomePageActivity;->mVPadapter:Lcom/tudou/adapter/HomeVPAdapter;

    invoke-virtual {v0, v1}, Lcom/youku/widget/TabViewPager;->setOnPageChangeListener(Lcom/youku/widget/viewpager/ViewPager$OnPageChangeListener;)V

    .line 543
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 463
    const v0, 0x7f0c01b0

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/HomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/TudouTab;

    iput-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity;->mTudouTab:Lcom/youku/widget/TudouTab;

    .line 464
    const v0, 0x7f0c01b1

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/HomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/TabViewPager;

    iput-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity;->mViewPager:Lcom/youku/widget/TabViewPager;

    .line 469
    return-void
.end method

.method private isBlackVideoGuideList()Z
    .locals 3

    .prologue
    .line 1288
    sget-object v1, Lcom/youku/vo/DeviceInfo;->MODEL:Ljava/lang/String;

    invoke-static {v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;)V

    .line 1289
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/tudou/ui/activity/HomePageActivity;->blackVideoGuideList:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1290
    sget-object v1, Lcom/tudou/ui/activity/HomePageActivity;->blackVideoGuideList:[Ljava/lang/String;

    aget-object v1, v1, v0

    sget-object v2, Lcom/youku/vo/DeviceInfo;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1291
    const/4 v1, 0x1

    .line 1294
    :goto_1
    return v1

    .line 1289
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1294
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isExistUploadingAndDownload()Z
    .locals 3

    .prologue
    .line 774
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadManager;->hasDownloadingTask()Z

    move-result v0

    .line 775
    .local v0, "isDownLoad":Z
    invoke-static {}, Lcom/tudou/upload/UploadProcessor;->getUploadingTask()Lcom/tudou/upload/UploadInfo;

    move-result-object v1

    .line 776
    .local v1, "uploadingInfo":Lcom/tudou/upload/UploadInfo;
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 777
    :cond_0
    const/4 v2, 0x1

    .line 779
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onChangeTab(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 553
    const-string v1, "Youku"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangeTab index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v1, p0, Lcom/tudou/ui/activity/HomePageActivity;->mViewPager:Lcom/youku/widget/TabViewPager;

    invoke-virtual {v1}, Lcom/youku/widget/TabViewPager;->getCurrentItem()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 556
    const-string v1, "Tudou_Fragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangeTab index= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v1, p0, Lcom/tudou/ui/activity/HomePageActivity;->mViewPager:Lcom/youku/widget/TabViewPager;

    invoke-virtual {v1, p1}, Lcom/youku/widget/TabViewPager;->setCurrentItem(I)V

    .line 566
    :goto_0
    return-void

    .line 559
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/activity/HomePageActivity;->mVPadapter:Lcom/tudou/adapter/HomeVPAdapter;

    iget-object v2, p0, Lcom/tudou/ui/activity/HomePageActivity;->mViewPager:Lcom/youku/widget/TabViewPager;

    invoke-virtual {v1, v2, p1}, Lcom/tudou/adapter/HomeVPAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/ui/YoukuFragment;

    .line 561
    .local v0, "fragment":Lcom/youku/ui/YoukuFragment;
    invoke-virtual {v0}, Lcom/youku/ui/YoukuFragment;->onPageSelected()V

    goto :goto_0
.end method

.method private progressDialog(Z)V
    .locals 4
    .param p1, "cancelAble"    # Z

    .prologue
    .line 1078
    new-instance v1, Lcom/youku/widget/TudouProDialog;

    invoke-direct {v1, p0}, Lcom/youku/widget/TudouProDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tudou/ui/activity/HomePageActivity;->progressDialog:Lcom/youku/widget/TudouProDialog;

    .line 1079
    iget-object v1, p0, Lcom/tudou/ui/activity/HomePageActivity;->progressDialog:Lcom/youku/widget/TudouProDialog;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/youku/widget/TudouProDialog;->setMax(I)V

    .line 1081
    iget-object v1, p0, Lcom/tudou/ui/activity/HomePageActivity;->progressDialog:Lcom/youku/widget/TudouProDialog;

    const v2, 0x7f0d01eb

    invoke-virtual {p0, v2}, Lcom/tudou/ui/activity/HomePageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/widget/TudouProDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1083
    :try_start_0
    iget-object v1, p0, Lcom/tudou/ui/activity/HomePageActivity;->progressDialog:Lcom/youku/widget/TudouProDialog;

    iget-object v2, p0, Lcom/tudou/ui/activity/HomePageActivity;->initial:Lcom/youku/vo/Initial;

    iget-object v2, v2, Lcom/youku/vo/Initial;->update:Lcom/youku/vo/Initial$Update;

    iget-object v2, v2, Lcom/youku/vo/Initial$Update;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/youku/widget/TudouProDialog;->setMessage(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    :goto_0
    new-instance v1, Lcom/tudou/ui/activity/HomePageActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/tudou/ui/activity/HomePageActivity$9;-><init>(Lcom/tudou/ui/activity/HomePageActivity;Z)V

    invoke-virtual {v1}, Lcom/tudou/ui/activity/HomePageActivity$9;->start()V

    .line 1112
    if-eqz p1, :cond_0

    .line 1113
    iget-object v1, p0, Lcom/tudou/ui/activity/HomePageActivity;->progressDialog:Lcom/youku/widget/TudouProDialog;

    const v2, 0x7f0d00b2

    new-instance v3, Lcom/tudou/ui/activity/HomePageActivity$10;

    invoke-direct {v3, p0}, Lcom/tudou/ui/activity/HomePageActivity$10;-><init>(Lcom/tudou/ui/activity/HomePageActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/youku/widget/TudouProDialog;->setNormalPositiveBtn(ILandroid/view/View$OnClickListener;)V

    .line 1125
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/activity/HomePageActivity;->progressDialog:Lcom/youku/widget/TudouProDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/youku/widget/TudouProDialog;->setCancelable(Z)V

    .line 1126
    iget-object v1, p0, Lcom/tudou/ui/activity/HomePageActivity;->progressDialog:Lcom/youku/widget/TudouProDialog;

    invoke-virtual {v1}, Lcom/youku/widget/TudouProDialog;->show()V

    .line 1127
    return-void

    .line 1085
    :catch_0
    move-exception v0

    .line 1086
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityWelcome.progressDialog()"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private pushToDetail(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 925
    if-nez p1, :cond_0

    .line 931
    :goto_0
    return-void

    .line 929
    :cond_0
    const-class v0, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 930
    invoke-static {p0, p1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private pushToGameDetail(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 949
    if-nez p1, :cond_0

    .line 956
    :goto_0
    return-void

    .line 953
    :cond_0
    const-class v1, Lcom/tudou/push/PushMsg;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/tudou/push/PushMsg;

    .line 955
    .local v0, "msg":Lcom/tudou/push/PushMsg;
    invoke-static {v0}, Lcom/tudou/push/StartActivityService;->startDetailGame(Lcom/tudou/push/PushMsg;)V

    goto :goto_0
.end method

.method private pushToGameDownLoad(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 962
    if-nez p1, :cond_0

    .line 969
    :goto_0
    return-void

    .line 966
    :cond_0
    const-class v1, Lcom/tudou/push/PushMsg;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/tudou/push/PushMsg;

    .line 968
    .local v0, "msg":Lcom/tudou/push/PushMsg;
    invoke-static {v0}, Lcom/tudou/push/StartActivityService;->startDownloadGame(Lcom/tudou/push/PushMsg;)V

    goto :goto_0
.end method

.method private pushToGameList(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 937
    if-nez p1, :cond_0

    .line 943
    :goto_0
    return-void

    .line 941
    :cond_0
    const-class v0, Lcom/youku/gamecenter/GameCenterHomeActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 942
    invoke-static {p0, p1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setMyTudouIcon()V
    .locals 1

    .prologue
    .line 317
    new-instance v0, Lcom/tudou/ui/activity/HomePageActivity$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/activity/HomePageActivity$1;-><init>(Lcom/tudou/ui/activity/HomePageActivity;)V

    invoke-virtual {v0}, Lcom/tudou/ui/activity/HomePageActivity$1;->start()V

    .line 332
    return-void
.end method

.method private showForceUpdateDialog()V
    .locals 3

    .prologue
    .line 975
    new-instance v0, Lcom/youku/widget/TudouDialog;

    sget-object v1, Lcom/youku/widget/TudouDialog$TYPE;->picker:Lcom/youku/widget/TudouDialog$TYPE;

    invoke-direct {v0, p0, v1}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;Lcom/youku/widget/TudouDialog$TYPE;)V

    .line 976
    .local v0, "dialog":Lcom/youku/widget/TudouDialog;
    const-string/jumbo v1, "\u53d1\u73b0\u65b0\u7248\u672c"

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setTitle(Ljava/lang/String;)V

    .line 977
    iget-object v1, p0, Lcom/tudou/ui/activity/HomePageActivity;->initial:Lcom/youku/vo/Initial;

    iget-object v1, v1, Lcom/youku/vo/Initial;->update:Lcom/youku/vo/Initial$Update;

    iget-object v1, v1, Lcom/youku/vo/Initial$Update;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 979
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setCancelable(Z)V

    .line 980
    const v1, 0x7f0d01ef

    new-instance v2, Lcom/tudou/ui/activity/HomePageActivity$5;

    invoke-direct {v2, p0}, Lcom/tudou/ui/activity/HomePageActivity$5;-><init>(Lcom/tudou/ui/activity/HomePageActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(ILandroid/view/View$OnClickListener;)V

    .line 998
    const v1, 0x7f0d0124

    invoke-virtual {p0, v1}, Lcom/tudou/ui/activity/HomePageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tudou/ui/activity/HomePageActivity$6;

    invoke-direct {v2, p0}, Lcom/tudou/ui/activity/HomePageActivity$6;-><init>(Lcom/tudou/ui/activity/HomePageActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1006
    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->show()V

    .line 1008
    return-void
.end method

.method public static trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 1242
    const-class v0, Lcom/tudou/ui/activity/HomePageActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    return-void
.end method

.method public static trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "extendValue"    # Ljava/lang/String;

    .prologue
    .line 1249
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1250
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "refercode"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    const-class v1, Lcom/tudou/ui/activity/HomePageActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1254
    return-void
.end method

.method public static trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1264
    .local p2, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v0, Lcom/tudou/ui/activity/HomePageActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1267
    return-void
.end method


# virtual methods
.method public alertNegative(I)V
    .locals 0
    .param p1, "tag"    # I

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/tudou/ui/activity/HomePageActivity;->finish()V

    .line 798
    invoke-static {}, Lcom/tudou/android/Youku;->exit()V

    .line 799
    return-void
.end method

.method public alertPositive(I)V
    .locals 1
    .param p1, "tag"    # I

    .prologue
    const/4 v0, 0x1

    .line 787
    if-ne p1, v0, :cond_1

    .line 788
    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/HomePageActivity;->moveTaskToBack(Z)Z

    .line 793
    :cond_0
    :goto_0
    return-void

    .line 789
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 790
    invoke-virtual {p0}, Lcom/tudou/ui/activity/HomePageActivity;->finish()V

    .line 791
    invoke-static {}, Lcom/tudou/android/Youku;->exit()V

    goto :goto_0
.end method

.method public goDiscovery()V
    .locals 2

    .prologue
    .line 914
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity;->mTudouTab:Lcom/youku/widget/TudouTab;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouTab;->onTabClick(I)V

    .line 915
    return-void
.end method

.method public goHomeAuto()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1225
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity;->mTudouTab:Lcom/youku/widget/TudouTab;

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouTab;->selectTab(I)V

    .line 1226
    invoke-direct {p0, v1}, Lcom/tudou/ui/activity/HomePageActivity;->onChangeTab(I)V

    .line 1227
    return-void
.end method

.method public goMyTudou()V
    .locals 1

    .prologue
    .line 1221
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/tudou/ui/activity/HomePageActivity;->onChangeTab(I)V

    .line 1222
    return-void
.end method

.method public goSub()V
    .locals 2

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity;->mTudouTab:Lcom/youku/widget/TudouTab;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouTab;->onTabClick(I)V

    .line 1233
    return-void
.end method

.method public goWay(ILandroid/content/Intent;)V
    .locals 3
    .param p1, "goWay"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 893
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 895
    const-string/jumbo v0, "\u901a\u77e5\u680f\u7f13\u5b58\u5b8c\u6210\u89c6\u9891\u70b9\u51fb"

    const-string/jumbo v1, "\u901a\u77e5\u680f"

    const-string/jumbo v2, "\u901a\u77e5\u680f-\u7f13\u5b58\u5b8c\u6210"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity;->mTudouTab:Lcom/youku/widget/TudouTab;

    invoke-virtual {v0, p1}, Lcom/youku/widget/TudouTab;->onTabClick(I)V

    .line 911
    :cond_0
    :goto_0
    return-void

    .line 897
    :cond_1
    if-eqz p1, :cond_0

    .line 899
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 900
    invoke-direct {p0, p2}, Lcom/tudou/ui/activity/HomePageActivity;->pushToDetail(Landroid/content/Intent;)V

    goto :goto_0

    .line 901
    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    .line 902
    invoke-direct {p0, p2}, Lcom/tudou/ui/activity/HomePageActivity;->pushToGameList(Landroid/content/Intent;)V

    goto :goto_0

    .line 903
    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 904
    invoke-direct {p0, p2}, Lcom/tudou/ui/activity/HomePageActivity;->pushToGameDownLoad(Landroid/content/Intent;)V

    goto :goto_0

    .line 905
    :cond_4
    const/4 v0, 0x7

    if-ne p1, v0, :cond_5

    .line 906
    invoke-direct {p0, p2}, Lcom/tudou/ui/activity/HomePageActivity;->pushToGameDetail(Landroid/content/Intent;)V

    goto :goto_0

    .line 908
    :cond_5
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity;->mTudouTab:Lcom/youku/widget/TudouTab;

    invoke-virtual {v0, p1}, Lcom/youku/widget/TudouTab;->onTabClick(I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 876
    if-eqz p3, :cond_0

    .line 877
    sget-object v0, Lcom/tudou/ui/activity/HomePageActivity;->TAG_FROM_FIRST_PAGE:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 879
    :cond_0
    sget v0, Lcom/tudou/ui/fragment/UploadFragment;->RECORD_VIDEO_TUDOU:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/tudou/ui/fragment/UploadFragment;->LOCAL_VIDEO:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/tudou/ui/fragment/UploadFragment;->RECORD_VIDEO_SYSTEM:I

    if-ne p1, v0, :cond_2

    .line 882
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/tudou/ui/fragment/UploadFragment;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 885
    :cond_2
    const/16 v0, 0x7d0

    if-ne p2, v0, :cond_3

    .line 886
    invoke-static {p2, p3}, Lcom/tudou/ui/fragment/AccountFragment;->onActivityResult(ILandroid/content/Intent;)V

    .line 889
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/tudou/ui/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 890
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sput-wide v8, Lcom/tudou/ui/activity/HomePageActivity;->startTime:J

    .line 146
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    sput-boolean v10, Lcom/tudou/ui/activity/HomePageActivity;->mIsFistInApp:Z

    .line 148
    sput-boolean v10, Lcom/tudou/ui/activity/HomePageActivity;->mIsFistInAppKeySub:Z

    .line 149
    iput-boolean v10, p0, Lcom/tudou/ui/activity/HomePageActivity;->mHandleBackButton:Z

    .line 150
    sput-boolean v10, Lcom/tudou/android/Youku;->sPageStillExist:Z

    .line 151
    invoke-virtual {p0, v10}, Lcom/tudou/ui/activity/HomePageActivity;->requestWindowFeature(I)Z

    .line 154
    invoke-static {}, Lcom/tudou/service/classify/ClassifyManager;->getInstance()Lcom/tudou/service/classify/Classify;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/tudou/service/classify/Classify;->getChannalList(Landroid/os/Handler;)V

    .line 156
    const v7, 0x7f030032

    invoke-virtual {p0, v7}, Lcom/tudou/ui/activity/HomePageActivity;->setContentView(I)V

    .line 158
    invoke-static {v10}, Lcom/tudou/push/PushReceiver;->pushAction(I)V

    .line 160
    const-string v7, "isfirstGoChannel"

    sget-boolean v8, Lcom/tudou/ui/activity/HomePageActivity;->isfirstGoChannel:Z

    invoke-static {v7, v8}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v7

    sput-boolean v7, Lcom/tudou/ui/activity/HomePageActivity;->isfirstGoChannel:Z

    .line 163
    sput-object p0, Lcom/tudou/ui/activity/HomePageActivity;->context:Landroid/content/Context;

    .line 164
    invoke-direct {p0}, Lcom/tudou/ui/activity/HomePageActivity;->initView()V

    .line 165
    invoke-direct {p0}, Lcom/tudou/ui/activity/HomePageActivity;->initData()V

    .line 167
    invoke-virtual {p0}, Lcom/tudou/ui/activity/HomePageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 168
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "home_way"

    invoke-virtual {v3, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 170
    .local v1, "goWay":I
    if-eqz p1, :cond_0

    .line 171
    const-string v7, "home_way"

    invoke-virtual {p1, v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 173
    const-string v7, "isGame_Show"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 174
    .local v4, "isGame_Show":Z
    const-string/jumbo v7, "test1"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initTitle savedInstanceState isGame_Show = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Youku.isGame_Show = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/tudou/android/Youku;->isGame_Show:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .end local v4    # "isGame_Show":Z
    :cond_0
    invoke-virtual {p0, v1, v3}, Lcom/tudou/ui/activity/HomePageActivity;->goWay(ILandroid/content/Intent;)V

    .line 179
    const-string v7, "home_way"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 180
    if-eq v1, v12, :cond_1

    .line 183
    sget-object v7, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iput-object v7, p0, Lcom/tudou/ui/activity/HomePageActivity;->initial:Lcom/youku/vo/Initial;

    .line 184
    iget-object v7, p0, Lcom/tudou/ui/activity/HomePageActivity;->initial:Lcom/youku/vo/Initial;

    if-eqz v7, :cond_1

    .line 187
    iget-object v7, p0, Lcom/tudou/ui/activity/HomePageActivity;->initial:Lcom/youku/vo/Initial;

    iget-object v7, v7, Lcom/youku/vo/Initial;->update:Lcom/youku/vo/Initial$Update;

    if-eqz v7, :cond_4

    .line 188
    iget-object v7, p0, Lcom/tudou/ui/activity/HomePageActivity;->initial:Lcom/youku/vo/Initial;

    iget-object v7, v7, Lcom/youku/vo/Initial;->update:Lcom/youku/vo/Initial$Update;

    iget v6, v7, Lcom/youku/vo/Initial$Update;->type:I

    .line 189
    .local v6, "updateType":I
    if-ne v6, v12, :cond_3

    .line 190
    sput-boolean v10, Lcom/tudou/android/Youku;->IS_NEED_TO_UPDATE:Z

    .line 191
    invoke-direct {p0}, Lcom/tudou/ui/activity/HomePageActivity;->showForceUpdateDialog()V

    .line 212
    .end local v6    # "updateType":I
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/tudou/ui/activity/HomePageActivity;->startSoService()V

    .line 225
    const-class v7, Lcom/youku/vo/AdStartpage;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/youku/vo/AdStartpage;

    iput-object v7, p0, Lcom/tudou/ui/activity/HomePageActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    .line 227
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startGuide"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/youku/config/Profile;->VER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 228
    const-string v7, "TAG_TUDOU"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startGuide==============="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/youku/config/Profile;->VER:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-boolean v7, p0, Lcom/tudou/ui/activity/HomePageActivity;->guideVideo:Z

    if-eqz v7, :cond_5

    .line 242
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/tudou/ui/activity/HomePageActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    if-eqz v7, :cond_8

    .line 243
    iget-object v7, p0, Lcom/tudou/ui/activity/HomePageActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget-object v7, v7, Lcom/youku/vo/AdStartpage;->CUM:[Ljava/lang/String;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/tudou/ui/activity/HomePageActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget-object v7, v7, Lcom/youku/vo/AdStartpage;->CUM:[Ljava/lang/String;

    array-length v7, v7

    if-lez v7, :cond_7

    .line 244
    iget-object v7, p0, Lcom/tudou/ui/activity/HomePageActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget-object v7, v7, Lcom/youku/vo/AdStartpage;->CUM:[Ljava/lang/String;

    array-length v5, v7

    .line 245
    .local v5, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v5, :cond_7

    .line 246
    iget-object v7, p0, Lcom/tudou/ui/activity/HomePageActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget-object v7, v7, Lcom/youku/vo/AdStartpage;->CUMSDK:[I

    aget v7, v7, v2

    if-ne v7, v10, :cond_6

    .line 247
    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    move-result-object v7

    iget-object v8, p0, Lcom/tudou/ui/activity/HomePageActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget-object v8, v8, Lcom/youku/vo/AdStartpage;->CUM:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Lcn/com/mma/mobile/tracking/api/Countly;->onExpose(Ljava/lang/String;)V

    .line 245
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 193
    .end local v2    # "i":I
    .end local v5    # "len":I
    .restart local v6    # "updateType":I
    :cond_3
    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 194
    sput-boolean v10, Lcom/tudou/android/Youku;->IS_NEED_TO_UPDATE:Z

    .line 195
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->cancelDownloadThread()V

    .line 197
    iget-object v7, p0, Lcom/tudou/ui/activity/HomePageActivity;->initial:Lcom/youku/vo/Initial;

    invoke-direct {p0, v7}, Lcom/tudou/ui/activity/HomePageActivity;->dialog(Lcom/youku/vo/Initial;)V

    goto/16 :goto_0

    .line 201
    .end local v6    # "updateType":I
    :cond_4
    iget-object v7, p0, Lcom/tudou/ui/activity/HomePageActivity;->initial:Lcom/youku/vo/Initial;

    iget-object v7, v7, Lcom/youku/vo/Initial;->pop_page:Lcom/youku/vo/PopPage;

    if-eqz v7, :cond_1

    .line 202
    iget-object v7, p0, Lcom/tudou/ui/activity/HomePageActivity;->initial:Lcom/youku/vo/Initial;

    invoke-direct {p0, v7}, Lcom/tudou/ui/activity/HomePageActivity;->gamePop(Lcom/youku/vo/Initial;)V

    goto/16 :goto_0

    .line 236
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-class v7, Lcom/tudou/guide/GuideActivity;

    invoke-direct {v0, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    .local v0, "goGuid":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 249
    .end local v0    # "goGuid":Landroid/content/Intent;
    .restart local v2    # "i":I
    .restart local v5    # "len":I
    :cond_6
    new-instance v7, Lcom/youku/network/ExposureAdHttpTask;

    iget-object v8, p0, Lcom/tudou/ui/activity/HomePageActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget-object v8, v8, Lcom/youku/vo/AdStartpage;->CUM:[Ljava/lang/String;

    aget-object v8, v8, v2

    const-string v9, "ad_cookie"

    invoke-direct {v7, v8, v9}, Lcom/youku/network/ExposureAdHttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/youku/network/ExposureAdHttpTask;->start()V

    goto :goto_3

    .line 254
    .end local v2    # "i":I
    .end local v5    # "len":I
    :cond_7
    iget-object v7, p0, Lcom/tudou/ui/activity/HomePageActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget v7, v7, Lcom/youku/vo/AdStartpage;->CUF:I

    packed-switch v7, :pswitch_data_0

    .line 284
    :cond_8
    :goto_4
    :pswitch_0
    return-void

    .line 256
    :pswitch_1
    iget-object v7, p0, Lcom/tudou/ui/activity/HomePageActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget-object v7, v7, Lcom/youku/vo/AdStartpage;->CU:Ljava/lang/String;

    invoke-static {p0, v7, v11}, Lcom/youku/util/Util;->goWebShow(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_4

    .line 259
    :pswitch_2
    iget-object v7, p0, Lcom/tudou/ui/activity/HomePageActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget-object v7, v7, Lcom/youku/vo/AdStartpage;->CU:Ljava/lang/String;

    invoke-static {p0, v7, v10}, Lcom/youku/util/Util;->goWebShow(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_4

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 714
    invoke-virtual {p0}, Lcom/tudou/ui/activity/HomePageActivity;->unregisterReceiver()V

    .line 715
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onDestroy()V

    .line 716
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/android/Youku;->sPageStillExist:Z

    .line 717
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 721
    const-string v0, "HomePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyCode -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 731
    iget-boolean v0, p0, Lcom/tudou/ui/activity/HomePageActivity;->mHandleBackButton:Z

    if-eqz v0, :cond_5

    .line 732
    invoke-static {}, Lcom/youku/util/Util;->isConfirmedExit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 734
    :try_start_0
    sget-object v0, Lcom/tudou/android/Youku;->ALL_SWITCHES:Lcom/youku/vo/TudouSwitchesBean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tudou/android/Youku;->ALL_SWITCHES:Lcom/youku/vo/TudouSwitchesBean;

    iget-object v0, v0, Lcom/youku/vo/TudouSwitchesBean;->switches:Lcom/youku/vo/TudouSwitchesBean$Switches;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tudou/android/Youku;->ALL_SWITCHES:Lcom/youku/vo/TudouSwitchesBean;

    invoke-virtual {v0}, Lcom/youku/vo/TudouSwitchesBean;->getWatchAndChat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatManager;->quitChatRoom()V

    .line 736
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatManager;->disConnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tudou/service/chat/ListenClipboardService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/HomePageActivity;->stopService(Landroid/content/Intent;)Z

    .line 742
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_2

    .line 744
    invoke-virtual {p0}, Lcom/tudou/ui/activity/HomePageActivity;->finish()V

    .line 745
    invoke-static {}, Lcom/tudou/android/Youku;->exit()V

    .line 769
    :cond_1
    :goto_1
    return v5

    .line 738
    :catch_0
    move-exception v7

    .line 739
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 746
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    sget-boolean v0, Lcom/tudou/ui/fragment/MoreFragment;->isDownloading:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/tudou/ui/fragment/MoreFragment;->mIsShowNotification:Z

    if-eqz v0, :cond_3

    .line 748
    const v0, 0x7f0d0123

    invoke-static {p0, v0, p0, v6}, Lcom/youku/util/Util;->alertDelete(Lcom/tudou/ui/activity/BaseActivity;ILcom/youku/util/IAlert;I)V

    goto :goto_1

    .line 750
    :cond_3
    invoke-direct {p0}, Lcom/tudou/ui/activity/HomePageActivity;->isExistUploadingAndDownload()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 754
    const-string/jumbo v1, "\u6709\u89c6\u9891\u6b63\u5728\u7f13\u5b58/\u4e0a\u4f20\uff0c\u662f\u5426\u786e\u5b9a\u9000\u51fa\uff1f"

    const-string/jumbo v2, "\u540e\u53f0\u7f13\u5b58/\u4e0a\u4f20"

    const-string/jumbo v3, "\u9000\u51fa"

    move-object v0, p0

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Lcom/youku/util/Util;->alertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/IAlert;II)Lcom/youku/widget/TudouDialog;

    goto :goto_1

    .line 758
    :cond_4
    invoke-virtual {p0}, Lcom/tudou/ui/activity/HomePageActivity;->finish()V

    .line 759
    invoke-static {}, Lcom/tudou/android/Youku;->exit()V

    goto :goto_1

    .line 764
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/tudou/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_1

    .line 766
    :cond_6
    const/16 v0, 0x54

    if-eq p1, v0, :cond_1

    .line 769
    invoke-super {p0, p1, p2}, Lcom/tudou/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1203
    const-string v1, "HomePageActivity"

    const-string v2, "onNewIntent"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    if-eqz p1, :cond_0

    .line 1206
    const-string v1, "onNewIntent"

    const-wide/16 v2, 0x12c

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1207
    const-string v1, "home_way"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1209
    .local v0, "goWay":I
    invoke-virtual {p0, v0, p1}, Lcom/tudou/ui/activity/HomePageActivity;->goWay(ILandroid/content/Intent;)V

    .line 1212
    .end local v0    # "goWay":I
    :cond_0
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1213
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0x4d2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 704
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onPause()V

    .line 705
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 683
    invoke-virtual {p0}, Lcom/tudou/ui/activity/HomePageActivity;->registerReceiver()V

    .line 684
    sget-boolean v0, Lcom/tudou/ui/activity/HomePageActivity;->mIsFistInAppKeySub:Z

    if-eqz v0, :cond_0

    .line 685
    sput-boolean v1, Lcom/tudou/ui/activity/HomePageActivity;->mIsFistInAppKeySub:Z

    .line 686
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    invoke-static {}, Lcom/tudou/ui/fragment/SubscribeFragment;->getSubscribeCount()V

    .line 690
    :cond_0
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadManager;->setAppExit(Z)V

    .line 692
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadManager;->startNewTask()V

    .line 693
    invoke-direct {p0}, Lcom/tudou/ui/activity/HomePageActivity;->setMyTudouIcon()V

    .line 695
    sget-boolean v0, Lcom/tudou/ui/activity/HomePageActivity;->isNeedRefreshMyIcon:Z

    if-eqz v0, :cond_1

    .line 696
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0x4d2

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 698
    :cond_1
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onResume()V

    .line 699
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1280
    const-string v0, "home_way"

    iget-object v1, p0, Lcom/tudou/ui/activity/HomePageActivity;->mTudouTab:Lcom/youku/widget/TudouTab;

    invoke-virtual {v1}, Lcom/youku/widget/TudouTab;->getCurrentTab()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1281
    const-string v0, "isGame_Show"

    sget-boolean v1, Lcom/tudou/android/Youku;->isGame_Show:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1282
    const-class v0, Lcom/tudou/ui/activity/HomePageActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1283
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1284
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 678
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onStart()V

    .line 679
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 709
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onStop()V

    .line 710
    return-void
.end method

.method public registerReceiver()V
    .locals 2

    .prologue
    .line 625
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 626
    .local v0, "i":Landroid/content/IntentFilter;
    const-string v1, "com.tudou.download.CACHE_ICON_GONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 627
    const-string v1, "com.tudou.download.CACHE_ICON_VISIBLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 628
    const-string v1, "com.tudou.service.download.ACTION_DOWNLOAD_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 629
    const-string v1, "com.tudou.subscribe.UPDATE_COUNT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 630
    iget-object v1, p0, Lcom/tudou/ui/activity/HomePageActivity;->cacheIconReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/tudou/ui/activity/HomePageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 631
    return-void
.end method

.method public showDiscoveryIcon()V
    .locals 2

    .prologue
    .line 918
    iget-object v0, p0, Lcom/tudou/ui/activity/HomePageActivity;->mTudouTab:Lcom/youku/widget/TudouTab;

    iget-object v0, v0, Lcom/youku/widget/TudouTab;->mDiscoveryIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 919
    return-void
.end method

.method public startSoService()V
    .locals 4

    .prologue
    .line 525
    sget-boolean v1, Lcom/tudou/ui/activity/HomePageActivity;->isStartSoService:Z

    if-nez v1, :cond_0

    .line 526
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tudou/ui/activity/HomePageActivity;->isStartSoService:Z

    .line 527
    invoke-static {}, Lcom/youku/config/Profile;->getPid()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/youku/libmanager/SoUpgradeService;->savePid(Landroid/content/Context;Ljava/lang/String;)V

    .line 529
    const-string v1, "6b72db72a6639e1d5a2488ed485192f6"

    invoke-static {p0, v1}, Lcom/youku/libmanager/SoUpgradeService;->saveSecret(Landroid/content/Context;Ljava/lang/String;)V

    .line 530
    sget-wide v2, Lcom/youku/http/TudouURLContainer;->TIMESTAMP:J

    invoke-static {p0, v2, v3}, Lcom/youku/libmanager/SoUpgradeService;->saveTimeStamp(Landroid/content/Context;J)V

    .line 531
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/libmanager/SoUpgradeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 532
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/HomePageActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 534
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public unregisterReceiver()V
    .locals 3

    .prologue
    .line 635
    :try_start_0
    iget-object v1, p0, Lcom/tudou/ui/activity/HomePageActivity;->cacheIconReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 636
    iget-object v1, p0, Lcom/tudou/ui/activity/HomePageActivity;->cacheIconReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/tudou/ui/activity/HomePageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TudouTab"

    const-string/jumbo v2, "unregisterReceiver()"

    invoke-static {v1, v2, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
