.class Lcom/tudou/ui/activity/WelcomeActivity$6;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/WelcomeActivity;->showDataflowTipsDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/WelcomeActivity;

.field final synthetic val$dialog:Lcom/youku/widget/YoukuDialog;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/WelcomeActivity;Lcom/youku/widget/YoukuDialog;)V
    .locals 0

    .prologue
    .line 1305
    iput-object p1, p0, Lcom/tudou/ui/activity/WelcomeActivity$6;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    iput-object p2, p0, Lcom/tudou/ui/activity/WelcomeActivity$6;->val$dialog:Lcom/youku/widget/YoukuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 1308
    iget-object v1, p0, Lcom/tudou/ui/activity/WelcomeActivity$6;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-virtual {v1, v4}, Lcom/tudou/ui/activity/WelcomeActivity;->dismissDialog(I)V

    .line 1309
    iget-object v1, p0, Lcom/tudou/ui/activity/WelcomeActivity$6;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-static {v1}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1500(Lcom/tudou/ui/activity/WelcomeActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/ui/activity/WelcomeActivity$6;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-static {v1}, Lcom/youku/util/Util;->issave(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1310
    iget-object v1, p0, Lcom/tudou/ui/activity/WelcomeActivity$6;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-static {v1}, Lcom/tudou/ui/activity/WelcomeActivity;->access$1600(Lcom/tudou/ui/activity/WelcomeActivity;)V

    .line 1312
    :cond_0
    invoke-static {}, Lcom/tudou/android/Youku;->getIsNotShowTips()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1313
    invoke-static {}, Lcom/tudou/ui/fragment/LoginFragment;->updateCookie()V

    .line 1314
    iget-object v1, p0, Lcom/tudou/ui/activity/WelcomeActivity$6;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/WelcomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/youku/gamecenter/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/download/DownloadManager;

    .line 1316
    const-class v1, Lcom/youku/service/device/IDevice;

    invoke-static {v1}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/service/device/IDevice;

    invoke-interface {v1}, Lcom/youku/service/device/IDevice;->init()V

    .line 1317
    invoke-static {}, Lcom/youku/util/Util;->getGUID()Ljava/lang/String;

    move-result-object v0

    .line 1318
    .local v0, "guid":Ljava/lang/String;
    const-string v1, "guid"

    invoke-static {v1, v0}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    sput-object v0, Lcom/tudou/android/Youku;->GUID:Ljava/lang/String;

    .line 1320
    invoke-static {}, Lcom/youku/http/URLContainer;->getStatisticsParameter()V

    .line 1322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/youku/vo/DeviceInfo;->ACTIVE_TIME:Ljava/lang/String;

    .line 1324
    const-string v1, "active_time"

    sget-object v2, Lcom/youku/vo/DeviceInfo;->ACTIVE_TIME:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/youku/service/tracker/TrackerImpl;->startNewSession(Landroid/content/Context;)V

    .line 1327
    iget-object v1, p0, Lcom/tudou/ui/activity/WelcomeActivity$6;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-static {v1}, Lcom/youku/util/Util;->init(Landroid/app/Activity;)V

    .line 1332
    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/mma/mobile/tracking/api/Countly;->getSdk()Lcn/com/mma/mobile/tracking/domain/SDK;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1334
    sput-boolean v4, Lcn/com/mma/mobile/tracking/api/Countly;->LOG:Z

    .line 1335
    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/activity/WelcomeActivity$6;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/WelcomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/youku/http/URLContainer;->MMA_CONFIG_HOST:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/com/mma/mobile/tracking/api/Countly;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 1338
    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/tudou/ui/activity/WelcomeActivity$6;->this$0:Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/WelcomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/com/mma/mobile/tracking/api/Countly;->setTrackLocation(ZLandroid/content/Context;)V

    .line 1341
    :cond_1
    invoke-static {}, Lcom/tudou/android/Youku;->registerNetReceiver()V

    .line 1343
    invoke-static {v4}, Lcom/youku/analytics/AnalyticsAgent;->setDebugMode(Z)V

    .line 1344
    invoke-static {v4}, Lcom/youku/analytics/AnalyticsAgent;->setTestHost(Z)V

    .line 1345
    invoke-static {v4}, Lcom/youku/analytics/AnalyticsAgent;->setTest(Z)V

    .line 1346
    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    sget-object v2, Lcom/tudou/android/Youku;->User_Agent:Ljava/lang/String;

    invoke-static {}, Lcom/youku/config/Profile;->getPid()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/tudou/android/Youku;->appName:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/youku/analytics/AnalyticsAgent;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    const-wide/32 v2, 0x493e0

    invoke-static {v2, v3}, Lcom/youku/analytics/AnalyticsAgent;->setContinueSessionMillis(J)V

    .line 1350
    invoke-static {}, Lcom/tudou/ui/fragment/LoginFragment;->autoLogin()V

    .line 1353
    .end local v0    # "guid":Ljava/lang/String;
    :cond_2
    const-string v1, "not_show_tips"

    iget-object v2, p0, Lcom/tudou/ui/activity/WelcomeActivity$6;->val$dialog:Lcom/youku/widget/YoukuDialog;

    invoke-virtual {v2}, Lcom/youku/widget/YoukuDialog;->isCheckBoxChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1356
    return-void
.end method
