.class public Lcom/youku/service/login/LoginManagerImpl;
.super Lcom/youku/service/login/LoginManager;
.source "LoginManagerImpl.java"


# static fields
.field public static final AUTO_LOGIN:Ljava/lang/String; = "auto_login"

.field public static final AUTO_LOGIN_FAILED:I = 0x3

.field private static final Autoorize_Fail:Ljava/lang/String;

.field public static final COOKIE:Ljava/lang/String; = "COOKIE"


# instance fields
.field private mCall:Lcom/youku/service/login/ILogin$ICallBack;

.field private mLoginHandler:Landroid/os/Handler;

.field private mMembershipCallBack:Lcom/youku/service/login/ILogin$IMembershipCallBack;

.field private mMembershipHandler:Landroid/os/Handler;

.field private mPwdSetHandler:Landroid/os/Handler;

.field private mRegistHandler:Landroid/os/Handler;

.field private mScanAuthorizeHandler:Landroid/os/Handler;

.field private mScanLoginHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 689
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v1, 0x7f0d03c4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/service/login/LoginManagerImpl;->Autoorize_Fail:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/youku/service/login/LoginManager;-><init>()V

    .line 137
    new-instance v0, Lcom/youku/service/login/LoginManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/youku/service/login/LoginManagerImpl$2;-><init>(Lcom/youku/service/login/LoginManagerImpl;)V

    iput-object v0, p0, Lcom/youku/service/login/LoginManagerImpl;->mLoginHandler:Landroid/os/Handler;

    .line 165
    new-instance v0, Lcom/youku/service/login/LoginManagerImpl$3;

    invoke-direct {v0, p0}, Lcom/youku/service/login/LoginManagerImpl$3;-><init>(Lcom/youku/service/login/LoginManagerImpl;)V

    iput-object v0, p0, Lcom/youku/service/login/LoginManagerImpl;->mRegistHandler:Landroid/os/Handler;

    .line 201
    new-instance v0, Lcom/youku/service/login/LoginManagerImpl$4;

    invoke-direct {v0, p0}, Lcom/youku/service/login/LoginManagerImpl$4;-><init>(Lcom/youku/service/login/LoginManagerImpl;)V

    iput-object v0, p0, Lcom/youku/service/login/LoginManagerImpl;->mPwdSetHandler:Landroid/os/Handler;

    .line 692
    new-instance v0, Lcom/youku/service/login/LoginManagerImpl$13;

    invoke-direct {v0, p0}, Lcom/youku/service/login/LoginManagerImpl$13;-><init>(Lcom/youku/service/login/LoginManagerImpl;)V

    iput-object v0, p0, Lcom/youku/service/login/LoginManagerImpl;->mScanAuthorizeHandler:Landroid/os/Handler;

    .line 750
    new-instance v0, Lcom/youku/service/login/LoginManagerImpl$14;

    invoke-direct {v0, p0}, Lcom/youku/service/login/LoginManagerImpl$14;-><init>(Lcom/youku/service/login/LoginManagerImpl;)V

    iput-object v0, p0, Lcom/youku/service/login/LoginManagerImpl;->mScanLoginHandler:Landroid/os/Handler;

    .line 864
    new-instance v0, Lcom/youku/service/login/LoginManagerImpl$16;

    invoke-direct {v0, p0}, Lcom/youku/service/login/LoginManagerImpl$16;-><init>(Lcom/youku/service/login/LoginManagerImpl;)V

    iput-object v0, p0, Lcom/youku/service/login/LoginManagerImpl;->mMembershipHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/youku/service/login/LoginManagerImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/service/login/LoginManagerImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/youku/service/login/LoginManagerImpl;->mLoginHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/service/login/LoginManagerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/service/login/LoginManagerImpl;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/youku/service/login/LoginManagerImpl;->loginFailedDefault()V

    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/youku/service/login/LoginManagerImpl;->Autoorize_Fail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/youku/service/login/LoginManagerImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/service/login/LoginManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/youku/service/login/LoginManagerImpl;->failedDefault(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/youku/service/login/LoginManagerImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/service/login/LoginManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/youku/service/login/LoginManagerImpl;->parseAuthorize(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/youku/service/login/LoginManagerImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/service/login/LoginManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/youku/service/login/LoginManagerImpl;->parseScanLogin(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/youku/service/login/LoginManagerImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/service/login/LoginManagerImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/youku/service/login/LoginManagerImpl;->mMembershipHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/youku/service/login/LoginManagerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/service/login/LoginManagerImpl;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/youku/service/login/LoginManagerImpl;->notChangeMembership()V

    return-void
.end method

.method static synthetic access$1600(Lcom/youku/service/login/LoginManagerImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/service/login/LoginManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/youku/service/login/LoginManagerImpl;->parseMembership(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/youku/service/login/LoginManagerImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/service/login/LoginManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/youku/service/login/LoginManagerImpl;->parseLogin(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/youku/service/login/LoginManagerImpl;)Lcom/youku/service/login/ILogin$ICallBack;
    .locals 1
    .param p0, "x0"    # Lcom/youku/service/login/LoginManagerImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    return-object v0
.end method

.method static synthetic access$302(Lcom/youku/service/login/LoginManagerImpl;Lcom/youku/service/login/ILogin$ICallBack;)Lcom/youku/service/login/ILogin$ICallBack;
    .locals 0
    .param p0, "x0"    # Lcom/youku/service/login/LoginManagerImpl;
    .param p1, "x1"    # Lcom/youku/service/login/ILogin$ICallBack;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    return-object p1
.end method

.method static synthetic access$400(Lcom/youku/service/login/LoginManagerImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/service/login/LoginManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/youku/service/login/LoginManagerImpl;->parseRegist(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/youku/service/login/LoginManagerImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/service/login/LoginManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/youku/service/login/LoginManagerImpl;->parsePwdSet(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/youku/service/login/LoginManagerImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/service/login/LoginManagerImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/youku/service/login/LoginManagerImpl;->mRegistHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/youku/service/login/LoginManagerImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/service/login/LoginManagerImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/youku/service/login/LoginManagerImpl;->mPwdSetHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/youku/service/login/LoginManagerImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/service/login/LoginManagerImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/youku/service/login/LoginManagerImpl;->mScanLoginHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/youku/service/login/LoginManagerImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/service/login/LoginManagerImpl;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/youku/service/login/LoginManagerImpl;->mScanAuthorizeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private failedDefault(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/youku/service/login/ILogin$ICallBack;->onFailed(Ljava/lang/String;I)V

    .line 320
    :cond_0
    return-void
.end method

.method private loginFailedDefault()V
    .locals 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    const-string v1, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/youku/service/login/ILogin$ICallBack;->onFailed(Ljava/lang/String;I)V

    .line 314
    :cond_0
    return-void
.end method

.method public static logoutS()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 70
    invoke-static {}, Lcom/youku/vo/MembershipBean;->clearEndTime()V

    .line 71
    invoke-static {}, Lcom/tudou/ui/fragment/UploadingFragment;->setUploadingWait()V

    .line 76
    const/4 v1, 0x0

    sput-object v1, Lcom/tudou/android/Youku;->COOKIE:Ljava/lang/String;

    .line 77
    const-string v1, "COOKIE"

    sget-object v2, Lcom/tudou/android/Youku;->COOKIE:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v1, "auto_login"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 81
    const-string v1, "isLogined"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 83
    const-string v1, "uploadAccessToken"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "uploadRefreshToken"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "uid"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    .line 88
    .local v0, "userbean":Lcom/youku/vo/UserBean;
    invoke-virtual {v0, v3}, Lcom/youku/vo/UserBean;->setLogin(Z)V

    .line 90
    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->cancelLocal()V

    .line 91
    sput-boolean v4, Lcom/tudou/ui/fragment/MyTudouFragment;->mNeedToRefresh:Z

    .line 92
    sput-boolean v4, Lcom/tudou/ui/fragment/AccountFragment;->isNeedRefresh:Z

    .line 93
    invoke-static {}, Lcom/tudou/ui/fragment/LoginFragment;->clearThreeLogin()V

    .line 94
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/tudou/push/PushReceiver;->pushAction(I)V

    .line 95
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 98
    return-void
.end method

.method private notChangeMembership()V
    .locals 2

    .prologue
    .line 933
    iget-object v0, p0, Lcom/youku/service/login/LoginManagerImpl;->mMembershipCallBack:Lcom/youku/service/login/ILogin$IMembershipCallBack;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/youku/service/login/LoginManagerImpl;->mMembershipCallBack:Lcom/youku/service/login/ILogin$IMembershipCallBack;

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/youku/service/login/ILogin$IMembershipCallBack;->onResult(Lcom/youku/vo/UserBean;)V

    .line 936
    :cond_0
    return-void
.end method

.method private parseAuthorize(Ljava/lang/String;)V
    .locals 5
    .param p1, "sObj"    # Ljava/lang/String;

    .prologue
    .line 723
    invoke-static {p1}, Lcom/youku/util/JsonUtils;->loadJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 724
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_2

    .line 725
    const-string v3, "msg"

    invoke-static {v1, v3}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 726
    .local v2, "msg":Ljava/lang/String;
    const-string v3, "code"

    invoke-static {v1, v3}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 727
    .local v0, "code":I
    const-string v3, "success"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 728
    iget-object v3, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    if-eqz v3, :cond_0

    .line 729
    iget-object v3, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    invoke-interface {v3}, Lcom/youku/service/login/ILogin$ICallBack;->onSuccess()V

    .line 748
    .end local v0    # "code":I
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 731
    .restart local v0    # "code":I
    .restart local v2    # "msg":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    if-eqz v3, :cond_0

    .line 732
    packed-switch v0, :pswitch_data_0

    .line 738
    sget-object v2, Lcom/youku/service/login/LoginManagerImpl;->Autoorize_Fail:Ljava/lang/String;

    .line 741
    :goto_1
    iget-object v3, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    invoke-interface {v3, v2, v0}, Lcom/youku/service/login/ILogin$ICallBack;->onFailed(Ljava/lang/String;I)V

    goto :goto_0

    .line 734
    :pswitch_0
    sget-object v3, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v4, 0x7f0d03c2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 736
    goto :goto_1

    .line 745
    .end local v0    # "code":I
    .end local v2    # "msg":Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/youku/service/login/LoginManagerImpl;->Autoorize_Fail:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/youku/service/login/LoginManagerImpl;->failedDefault(Ljava/lang/String;)V

    goto :goto_0

    .line 732
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private parseLogin(Ljava/lang/String;)V
    .locals 5
    .param p1, "sObj"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-static {p1}, Lcom/youku/util/JsonUtils;->loadJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 256
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_4

    .line 257
    const-string v4, "msg"

    invoke-static {v1, v4}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, "msg":Ljava/lang/String;
    const-string v4, "code"

    invoke-static {v1, v4}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 260
    .local v0, "code":I
    const-string v4, "success"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 261
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    .line 262
    .local v3, "userBean":Lcom/youku/vo/UserBean;
    invoke-virtual {v3, v1}, Lcom/youku/vo/UserBean;->parseUserJson(Lorg/json/JSONObject;)V

    .line 263
    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->getNickName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 265
    :cond_0
    invoke-direct {p0}, Lcom/youku/service/login/LoginManagerImpl;->loginFailedDefault()V

    .line 290
    .end local v0    # "code":I
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "userBean":Lcom/youku/vo/UserBean;
    :cond_1
    :goto_0
    return-void

    .line 267
    .restart local v0    # "code":I
    .restart local v2    # "msg":Ljava/lang/String;
    .restart local v3    # "userBean":Lcom/youku/vo/UserBean;
    :cond_2
    invoke-static {}, Lcom/youku/service/login/LoginManagerImpl;->setYoukuStatus()V

    .line 268
    iget-object v4, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    if-eqz v4, :cond_1

    .line 269
    iget-object v4, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    invoke-interface {v4}, Lcom/youku/service/login/ILogin$ICallBack;->onSuccess()V

    .line 270
    invoke-static {}, Lcom/youku/service/login/LoginManagerImpl;->setSyn()V

    goto :goto_0

    .line 273
    .end local v3    # "userBean":Lcom/youku/vo/UserBean;
    :cond_3
    iget-object v4, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    if-eqz v4, :cond_1

    .line 274
    iget-object v4, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    invoke-interface {v4, v2, v0}, Lcom/youku/service/login/ILogin$ICallBack;->onFailed(Ljava/lang/String;I)V

    goto :goto_0

    .line 287
    .end local v0    # "code":I
    .end local v2    # "msg":Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Lcom/youku/service/login/LoginManagerImpl;->loginFailedDefault()V

    goto :goto_0
.end method

.method private parseMembership(Ljava/lang/String;)V
    .locals 14
    .param p1, "sObj"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 896
    :try_start_0
    invoke-static {p1}, Lcom/youku/util/JsonUtils;->loadJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 897
    .local v2, "jsonObject":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 898
    const-string v7, "results"

    invoke-static {v2, v7}, Lcom/youku/util/JsonUtils;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 899
    .local v4, "results":Lorg/json/JSONArray;
    const-string v7, "vip_member"

    invoke-static {v2, v7}, Lcom/youku/util/JsonUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v6

    .line 900
    .local v6, "vip_member":Z
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_3

    if-eqz v6, :cond_3

    .line 901
    const/4 v7, 0x0

    invoke-static {v4, v7}, Lcom/youku/util/JsonUtils;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v3

    .line 902
    .local v3, "membership":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/youku/vo/MembershipBean;->getMembershipBean(Ljava/lang/String;)Lcom/youku/vo/MembershipBean;

    move-result-object v0

    .line 903
    .local v0, "bean":Lcom/youku/vo/MembershipBean;
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/youku/vo/MembershipBean;->isMembership:Z

    .line 904
    invoke-direct {p0, v6}, Lcom/youku/service/login/LoginManagerImpl;->updateVip(Z)Lcom/youku/vo/UserBean;

    move-result-object v5

    .line 905
    .local v5, "userBean":Lcom/youku/vo/UserBean;
    iget-object v7, v0, Lcom/youku/vo/MembershipBean;->endtime:Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0xb

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/youku/vo/UserBean;->endTime:Ljava/lang/String;

    .line 906
    iget-object v7, v0, Lcom/youku/vo/MembershipBean;->remain_days:Ljava/lang/String;

    iput-object v7, v5, Lcom/youku/vo/UserBean;->remain_days:Ljava/lang/String;

    .line 907
    iget-object v7, v0, Lcom/youku/vo/MembershipBean;->mmid:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v5, Lcom/youku/vo/UserBean;->mmid:J

    .line 908
    iget-object v7, v0, Lcom/youku/vo/MembershipBean;->vip_grade:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/youku/vo/UserBean;->vip_grade:I

    .line 909
    iget-object v7, v0, Lcom/youku/vo/MembershipBean;->vip_year:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/youku/vo/UserBean;->vip_year:I

    .line 910
    iget-object v7, v0, Lcom/youku/vo/MembershipBean;->name:Ljava/lang/String;

    iput-object v7, v5, Lcom/youku/vo/UserBean;->vipName:Ljava/lang/String;

    .line 911
    iget-wide v10, v5, Lcom/youku/vo/UserBean;->mmid:J

    const-wide/32 v12, 0x186a2

    cmp-long v7, v10, v12

    if-nez v7, :cond_2

    move v7, v8

    :goto_0
    iput-boolean v7, v5, Lcom/youku/vo/UserBean;->isVip:Z

    .line 915
    .end local v0    # "bean":Lcom/youku/vo/MembershipBean;
    .end local v3    # "membership":Lorg/json/JSONObject;
    .end local v5    # "userBean":Lcom/youku/vo/UserBean;
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/youku/service/login/LoginManagerImpl;->mMembershipCallBack:Lcom/youku/service/login/ILogin$IMembershipCallBack;

    if-eqz v7, :cond_1

    .line 916
    iget-object v7, p0, Lcom/youku/service/login/LoginManagerImpl;->mMembershipCallBack:Lcom/youku/service/login/ILogin$IMembershipCallBack;

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v10

    invoke-interface {v7, v10}, Lcom/youku/service/login/ILogin$IMembershipCallBack;->onResult(Lcom/youku/vo/UserBean;)V

    .line 930
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "results":Lorg/json/JSONArray;
    .end local v6    # "vip_member":Z
    :cond_1
    :goto_2
    return-void

    .restart local v0    # "bean":Lcom/youku/vo/MembershipBean;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "membership":Lorg/json/JSONObject;
    .restart local v4    # "results":Lorg/json/JSONArray;
    .restart local v5    # "userBean":Lcom/youku/vo/UserBean;
    .restart local v6    # "vip_member":Z
    :cond_2
    move v7, v9

    .line 911
    goto :goto_0

    .line 912
    .end local v0    # "bean":Lcom/youku/vo/MembershipBean;
    .end local v3    # "membership":Lorg/json/JSONObject;
    .end local v5    # "userBean":Lcom/youku/vo/UserBean;
    :cond_3
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-nez v7, :cond_0

    if-nez v6, :cond_0

    .line 913
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/youku/service/login/LoginManagerImpl;->updateVip(Z)Lcom/youku/vo/UserBean;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 919
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "results":Lorg/json/JSONArray;
    .end local v6    # "vip_member":Z
    :catch_0
    move-exception v1

    .line 920
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v5

    .line 921
    .restart local v5    # "userBean":Lcom/youku/vo/UserBean;
    const-wide/16 v10, -0x1

    iput-wide v10, v5, Lcom/youku/vo/UserBean;->mmid:J

    .line 922
    iput v9, v5, Lcom/youku/vo/UserBean;->vip_year:I

    .line 923
    iput v8, v5, Lcom/youku/vo/UserBean;->vip_grade:I

    .line 924
    const-string v7, ""

    iput-object v7, v5, Lcom/youku/vo/UserBean;->vipName:Ljava/lang/String;

    .line 925
    iget-object v7, p0, Lcom/youku/service/login/LoginManagerImpl;->mMembershipCallBack:Lcom/youku/service/login/ILogin$IMembershipCallBack;

    if-eqz v7, :cond_4

    .line 926
    iget-object v7, p0, Lcom/youku/service/login/LoginManagerImpl;->mMembershipCallBack:Lcom/youku/service/login/ILogin$IMembershipCallBack;

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/youku/service/login/ILogin$IMembershipCallBack;->onResult(Lcom/youku/vo/UserBean;)V

    .line 928
    :cond_4
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2
.end method

.method private parsePwdSet(Ljava/lang/String;)V
    .locals 8
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 225
    iget-object v5, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v7}, Lcom/youku/service/login/ILogin$ICallBack;->onFailed(Ljava/lang/String;I)V

    .line 247
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-static {p1}, Lcom/youku/util/JsonUtils;->loadJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 228
    .local v3, "object":Lorg/json/JSONObject;
    const-string v5, "msg"

    invoke-static {v3, v5}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "msg":Ljava/lang/String;
    const-string v5, "code"

    invoke-static {v3, v5}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 230
    .local v0, "code":I
    const-string v5, "success"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 231
    const-string v5, "data"

    invoke-static {v3, v5}, Lcom/youku/util/JsonUtils;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 232
    .local v1, "data":Lorg/json/JSONObject;
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    .line 233
    .local v4, "userBean":Lcom/youku/vo/UserBean;
    const-string v5, "yktk"

    invoke-static {v1, v5}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/youku/vo/UserBean;->setYktk(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v4, v7}, Lcom/youku/vo/UserBean;->setNeedSetPwd(Z)V

    .line 235
    iget-object v5, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    invoke-interface {v5}, Lcom/youku/service/login/ILogin$ICallBack;->onSuccess()V

    goto :goto_0

    .line 237
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v4    # "userBean":Lcom/youku/vo/UserBean;
    :cond_1
    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    .line 238
    iget-object v5, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    invoke-interface {v5}, Lcom/youku/service/login/ILogin$ICallBack;->onSuccess()V

    goto :goto_0

    .line 240
    :cond_2
    iget-object v5, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    invoke-interface {v5, v2, v7}, Lcom/youku/service/login/ILogin$ICallBack;->onFailed(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private parseRegist(Ljava/lang/String;)V
    .locals 7
    .param p1, "sObj"    # Ljava/lang/String;

    .prologue
    .line 328
    invoke-static {p1}, Lcom/youku/util/JsonUtils;->loadJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 329
    .local v0, "jsonObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_3

    .line 330
    const-string v4, "status"

    invoke-static {v0, v4}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 331
    .local v2, "resultCode":I
    const-string v4, "msg"

    invoke-static {v0, v4}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, "msg":Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 352
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 353
    const-string v1, "\u6ce8\u518c\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 355
    :cond_0
    iget-object v4, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    if-eqz v4, :cond_1

    .line 356
    iget-object v4, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    invoke-interface {v4, v1, v2}, Lcom/youku/service/login/ILogin$ICallBack;->onFailed(Ljava/lang/String;I)V

    .line 365
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "resultCode":I
    :cond_1
    :goto_0
    return-void

    .line 334
    .restart local v1    # "msg":Ljava/lang/String;
    .restart local v2    # "resultCode":I
    :pswitch_0
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    .line 335
    .local v3, "userBean":Lcom/youku/vo/UserBean;
    invoke-virtual {v3, v0}, Lcom/youku/vo/UserBean;->parseUserJson(Lorg/json/JSONObject;)V

    .line 336
    invoke-static {}, Lcom/youku/service/login/LoginManagerImpl;->setYoukuStatus()V

    .line 337
    iget-object v4, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    if-eqz v4, :cond_1

    .line 338
    iget-object v4, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    invoke-interface {v4}, Lcom/youku/service/login/ILogin$ICallBack;->onSuccess()V

    .line 339
    invoke-static {}, Lcom/youku/service/login/LoginManagerImpl;->setSyn()V

    .line 340
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/tudou/push/PushReceiver;->pushAction(I)V

    goto :goto_0

    .line 344
    .end local v3    # "userBean":Lcom/youku/vo/UserBean;
    :pswitch_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 345
    const-string v1, "\u571f\u8c46\u7f51\u7684\u6ce8\u518c\u529f\u80fd\u6682\u65f6\u4e0d\u80fd\u7528\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    .line 347
    :cond_2
    iget-object v4, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    if-eqz v4, :cond_1

    .line 348
    iget-object v4, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    invoke-interface {v4, v1, v2}, Lcom/youku/service/login/ILogin$ICallBack;->onFailed(Ljava/lang/String;I)V

    goto :goto_0

    .line 361
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "resultCode":I
    :cond_3
    iget-object v4, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    if-eqz v4, :cond_1

    .line 362
    iget-object v4, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    const-string v5, "\u6ce8\u518c\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/youku/service/login/ILogin$ICallBack;->onFailed(Ljava/lang/String;I)V

    goto :goto_0

    .line 332
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseScanLogin(Ljava/lang/String;)V
    .locals 6
    .param p1, "sObj"    # Ljava/lang/String;

    .prologue
    .line 784
    invoke-static {p1}, Lcom/youku/util/JsonUtils;->loadJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 785
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_4

    .line 786
    const-string v4, "msg"

    invoke-static {v1, v4}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 787
    .local v2, "msg":Ljava/lang/String;
    const-string v4, "code"

    invoke-static {v1, v4}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 788
    .local v0, "code":I
    const-string v4, "success"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 789
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    .line 790
    .local v3, "userBean":Lcom/youku/vo/UserBean;
    invoke-virtual {v3, v1}, Lcom/youku/vo/UserBean;->parseUserJson(Lorg/json/JSONObject;)V

    .line 791
    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->getNickName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 793
    :cond_0
    sget-object v4, Lcom/youku/service/login/LoginManagerImpl;->Autoorize_Fail:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/youku/service/login/LoginManagerImpl;->failedDefault(Ljava/lang/String;)V

    .line 820
    .end local v0    # "code":I
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "userBean":Lcom/youku/vo/UserBean;
    :cond_1
    :goto_0
    return-void

    .line 795
    .restart local v0    # "code":I
    .restart local v2    # "msg":Ljava/lang/String;
    .restart local v3    # "userBean":Lcom/youku/vo/UserBean;
    :cond_2
    invoke-static {}, Lcom/youku/service/login/LoginManagerImpl;->setYoukuStatus()V

    .line 796
    iget-object v4, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    if-eqz v4, :cond_1

    .line 797
    iget-object v4, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    invoke-interface {v4}, Lcom/youku/service/login/ILogin$ICallBack;->onSuccess()V

    .line 798
    invoke-static {}, Lcom/youku/service/login/LoginManagerImpl;->setSyn()V

    goto :goto_0

    .line 801
    .end local v3    # "userBean":Lcom/youku/vo/UserBean;
    :cond_3
    iget-object v4, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    if-eqz v4, :cond_1

    .line 802
    packed-switch v0, :pswitch_data_0

    .line 810
    sget-object v2, Lcom/youku/service/login/LoginManagerImpl;->Autoorize_Fail:Ljava/lang/String;

    .line 813
    :goto_1
    iget-object v4, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    invoke-interface {v4, v2, v0}, Lcom/youku/service/login/ILogin$ICallBack;->onFailed(Ljava/lang/String;I)V

    goto :goto_0

    .line 804
    :pswitch_0
    sget-object v4, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v5, 0x7f0d03c7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 805
    goto :goto_1

    .line 807
    :pswitch_1
    sget-object v4, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v5, 0x7f0d03c5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 808
    goto :goto_1

    .line 817
    .end local v0    # "code":I
    .end local v2    # "msg":Ljava/lang/String;
    :cond_4
    sget-object v4, Lcom/youku/service/login/LoginManagerImpl;->Autoorize_Fail:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/youku/service/login/LoginManagerImpl;->failedDefault(Ljava/lang/String;)V

    goto :goto_0

    .line 802
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setSyn()V
    .locals 5

    .prologue
    .line 297
    invoke-static {}, Lcom/tudou/service/favourite/FavouriteVedioManager;->getInstance()Lcom/tudou/service/favourite/IFavouriteVedio;

    move-result-object v0

    .line 298
    .local v0, "favourite":Lcom/tudou/service/favourite/IFavouriteVedio;
    invoke-interface {v0}, Lcom/tudou/service/favourite/IFavouriteVedio;->onUserLoginCallBack()V

    .line 299
    invoke-static {}, Lcom/tudou/service/favourite/FavouritePlaylistManager;->getInstance()Lcom/tudou/service/favourite/IFavouritePlaylist;

    move-result-object v1

    .line 301
    .local v1, "favouriteplaylist":Lcom/tudou/service/favourite/IFavouritePlaylist;
    invoke-interface {v1}, Lcom/tudou/service/favourite/IFavouritePlaylist;->onUserLoginCallBack()V

    .line 302
    invoke-static {}, Lcom/tudou/service/attention/AttentionManager;->getInstance()Lcom/tudou/service/attention/IAttention;

    move-result-object v2

    .line 303
    .local v2, "iattention":Lcom/tudou/service/attention/IAttention;
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-interface {v2, v4}, Lcom/tudou/service/attention/IAttention;->onUserLoginCallBack(Landroid/os/Handler;)V

    .line 304
    invoke-static {}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->getInstance()Lcom/tudou/service/playhistory/PlayhistoryManagerImp;

    move-result-object v3

    .line 305
    .local v3, "playhistory":Lcom/tudou/service/playhistory/PlayHistoryManager;
    invoke-interface {v3}, Lcom/tudou/service/playhistory/PlayHistoryManager;->onUserLoginCallBack()V

    .line 307
    invoke-static {}, Lcom/tudou/ui/fragment/SubscribeFragment;->getSubscribeCount()V

    .line 308
    return-void
.end method

.method private static setYoukuStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 371
    const-string v1, "auto_login"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 372
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    .line 373
    .local v0, "userBean":Lcom/youku/vo/UserBean;
    invoke-virtual {v0, v3}, Lcom/youku/vo/UserBean;->setLogin(Z)V

    .line 374
    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->saveLocal()V

    .line 376
    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tudou/android/Youku;->userName:Ljava/lang/String;

    .line 378
    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->getEmail()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tudou/android/Youku;->loginAccount:Ljava/lang/String;

    .line 381
    const-string v1, "userName"

    sget-object v2, Lcom/tudou/android/Youku;->userName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v1, "loginAccount"

    sget-object v2, Lcom/tudou/android/Youku;->loginAccount:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v1, "isLogined"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 389
    return-void
.end method

.method private updateVip(Z)Lcom/youku/vo/UserBean;
    .locals 2
    .param p1, "isVip"    # Z

    .prologue
    .line 939
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    .line 940
    .local v0, "userBean":Lcom/youku/vo/UserBean;
    iget-boolean v1, v0, Lcom/youku/vo/UserBean;->isVip:Z

    if-ne v1, p1, :cond_0

    .line 945
    :goto_0
    return-object v0

    .line 943
    :cond_0
    iput-boolean p1, v0, Lcom/youku/vo/UserBean;->isVip:Z

    .line 944
    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->saveLocal()V

    goto :goto_0
.end method


# virtual methods
.method public autoLogin(Lcom/youku/service/login/ILogin$ICallBack;)V
    .locals 5
    .param p1, "call"    # Lcom/youku/service/login/ILogin$ICallBack;

    .prologue
    const/4 v4, 0x1

    .line 584
    iput-object p1, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    .line 585
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 587
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {}, Lcom/youku/http/TudouURLContainer;->autoLoginUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GET"

    invoke-direct {v0, v2, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 590
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    const-string v2, "TAG_TUDOU"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8bf7\u6c42\u81ea\u52a8\u767b\u5f55\u63a5\u53e3======"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/youku/http/TudouURLContainer;->autoLoginUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    new-instance v2, Lcom/youku/service/login/LoginManagerImpl$10;

    invoke-direct {v2, p0, p1}, Lcom/youku/service/login/LoginManagerImpl$10;-><init>(Lcom/youku/service/login/LoginManagerImpl;Lcom/youku/service/login/ILogin$ICallBack;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 621
    return-void
.end method

.method public getVerificationCode(Ljava/lang/String;Ljava/lang/String;Lcom/youku/service/login/ILogin$ICallBack;)V
    .locals 5
    .param p1, "mobile"    # Ljava/lang/String;
    .param p2, "clazz"    # Ljava/lang/String;
    .param p3, "call"    # Lcom/youku/service/login/ILogin$ICallBack;

    .prologue
    .line 431
    iput-object p3, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    .line 432
    const/4 v2, 0x0

    .line 433
    .local v2, "targetUrl":Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 434
    invoke-static {p1}, Lcom/youku/http/TudouURLContainer;->getVerificationCodeExistUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 438
    :goto_0
    const-class v3, Lcom/youku/network/IHttpRequest;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 440
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v3, "GET"

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 442
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lcom/youku/service/login/LoginManagerImpl$6;

    invoke-direct {v3, p0, p3}, Lcom/youku/service/login/LoginManagerImpl$6;-><init>(Lcom/youku/service/login/LoginManagerImpl;Lcom/youku/service/login/ILogin$ICallBack;)V

    invoke-interface {v1, v0, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 479
    return-void

    .line 436
    .end local v0    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v1    # "httpRequest":Lcom/youku/network/IHttpRequest;
    :cond_0
    invoke-static {p1, p2}, Lcom/youku/http/TudouURLContainer;->getVerificationCodeUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public login(Lcom/youku/vo/UserBean;Lcom/youku/service/login/ILogin$ICallBack;)V
    .locals 6
    .param p1, "aUserBean"    # Lcom/youku/vo/UserBean;
    .param p2, "call"    # Lcom/youku/service/login/ILogin$ICallBack;

    .prologue
    .line 107
    iput-object p2, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    .line 109
    const-class v2, Lcom/youku/network/IHttpRequest;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 111
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getLoginUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/youku/http/TudouURLContainer;->getLoginMapStr(Lcom/youku/vo/UserBean;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 114
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/youku/service/login/LoginManagerImpl$1;

    invoke-direct {v2, p0}, Lcom/youku/service/login/LoginManagerImpl$1;-><init>(Lcom/youku/service/login/LoginManagerImpl;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 135
    return-void
.end method

.method public loginPhoneSpeed(Lcom/youku/vo/UserBean;Lcom/youku/service/login/ILogin$ICallBack;)V
    .locals 6
    .param p1, "userBean"    # Lcom/youku/vo/UserBean;
    .param p2, "call"    # Lcom/youku/service/login/ILogin$ICallBack;

    .prologue
    .line 483
    iput-object p2, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    .line 485
    const-class v2, Lcom/youku/network/IHttpRequest;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 487
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getSpeedLoginUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/youku/http/TudouURLContainer;->getSpeedLoginMapStr(Lcom/youku/vo/UserBean;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 491
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/youku/service/login/LoginManagerImpl$7;

    invoke-direct {v2, p0}, Lcom/youku/service/login/LoginManagerImpl$7;-><init>(Lcom/youku/service/login/LoginManagerImpl;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 511
    return-void
.end method

.method public logout()V
    .locals 0

    .prologue
    .line 102
    invoke-static {}, Lcom/youku/service/login/LoginManagerImpl;->logoutS()V

    .line 103
    return-void
.end method

.method public registPhone(Lcom/youku/vo/UserBean;Lcom/youku/service/login/ILogin$ICallBack;)V
    .locals 6
    .param p1, "userBean"    # Lcom/youku/vo/UserBean;
    .param p2, "call"    # Lcom/youku/service/login/ILogin$ICallBack;

    .prologue
    .line 515
    iput-object p2, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    .line 517
    const-class v2, Lcom/youku/network/IHttpRequest;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 519
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getPhoneRegistUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/youku/http/TudouURLContainer;->getPhoneRegistMapStr(Lcom/youku/vo/UserBean;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 523
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/youku/service/login/LoginManagerImpl$8;

    invoke-direct {v2, p0}, Lcom/youku/service/login/LoginManagerImpl$8;-><init>(Lcom/youku/service/login/LoginManagerImpl;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 546
    return-void
.end method

.method public register(Lcom/youku/vo/UserBean;Lcom/youku/service/login/ILogin$ICallBack;)V
    .locals 6
    .param p1, "aUserBean"    # Lcom/youku/vo/UserBean;
    .param p2, "call"    # Lcom/youku/service/login/ILogin$ICallBack;

    .prologue
    .line 393
    iput-object p2, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    .line 399
    const-class v2, Lcom/youku/network/IHttpRequest;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 401
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getRegistUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/youku/http/TudouURLContainer;->getRegistMapStr(Lcom/youku/vo/UserBean;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 405
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/youku/service/login/LoginManagerImpl$5;

    invoke-direct {v2, p0}, Lcom/youku/service/login/LoginManagerImpl$5;-><init>(Lcom/youku/service/login/LoginManagerImpl;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 426
    return-void
.end method

.method public reversePassword(Lcom/youku/vo/UserBean;Lcom/youku/service/login/ILogin$ICallBack;)V
    .locals 6
    .param p1, "userBean"    # Lcom/youku/vo/UserBean;
    .param p2, "call"    # Lcom/youku/service/login/ILogin$ICallBack;

    .prologue
    .line 550
    iput-object p2, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    .line 552
    const-class v2, Lcom/youku/network/IHttpRequest;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 554
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getPwdSetUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/youku/http/TudouURLContainer;->getPwdSetMapStr(Lcom/youku/vo/UserBean;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 558
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/youku/service/login/LoginManagerImpl$9;

    invoke-direct {v2, p0}, Lcom/youku/service/login/LoginManagerImpl$9;-><init>(Lcom/youku/service/login/LoginManagerImpl;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 580
    return-void
.end method

.method public scanAuthorize(Ljava/lang/String;Lcom/youku/service/login/ILogin$ICallBack;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "call"    # Lcom/youku/service/login/ILogin$ICallBack;

    .prologue
    const/4 v5, 0x1

    .line 658
    iput-object p2, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    .line 660
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v5}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 662
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getScanAuthorizeUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    invoke-static {p1}, Lcom/youku/http/TudouURLContainer;->getScanAuthorizeMapStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v5, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 666
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/youku/service/login/LoginManagerImpl$12;

    invoke-direct {v2, p0}, Lcom/youku/service/login/LoginManagerImpl$12;-><init>(Lcom/youku/service/login/LoginManagerImpl;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 687
    return-void
.end method

.method public scanLogin(Ljava/lang/String;Lcom/youku/service/login/ILogin$ICallBack;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "call"    # Lcom/youku/service/login/ILogin$ICallBack;

    .prologue
    .line 625
    iput-object p2, p0, Lcom/youku/service/login/LoginManagerImpl;->mCall:Lcom/youku/service/login/ILogin$ICallBack;

    .line 627
    const-class v2, Lcom/youku/network/IHttpRequest;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 629
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getScanLoginUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/youku/http/TudouURLContainer;->getScanLoginMapStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 633
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/youku/service/login/LoginManagerImpl$11;

    invoke-direct {v2, p0}, Lcom/youku/service/login/LoginManagerImpl$11;-><init>(Lcom/youku/service/login/LoginManagerImpl;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 654
    return-void
.end method

.method public updateMembership(Lcom/youku/service/login/ILogin$IMembershipCallBack;Z)V
    .locals 7
    .param p1, "call"    # Lcom/youku/service/login/ILogin$IMembershipCallBack;
    .param p2, "isLimit"    # Z

    .prologue
    const/4 v6, 0x1

    .line 824
    iput-object p1, p0, Lcom/youku/service/login/LoginManagerImpl;->mMembershipCallBack:Lcom/youku/service/login/ILogin$IMembershipCallBack;

    .line 825
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v2

    if-nez v2, :cond_0

    .line 826
    invoke-direct {p0}, Lcom/youku/service/login/LoginManagerImpl;->notChangeMembership()V

    .line 862
    :goto_0
    return-void

    .line 829
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/youku/util/Util;->getRemainHours()J

    move-result-wide v2

    const-wide/16 v4, 0x18

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 830
    invoke-direct {p0}, Lcom/youku/service/login/LoginManagerImpl;->notChangeMembership()V

    goto :goto_0

    .line 837
    :cond_1
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v6}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 839
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getVipMemberUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GET"

    invoke-direct {v0, v2, v3, v6}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 842
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/youku/service/login/LoginManagerImpl$15;

    invoke-direct {v2, p0}, Lcom/youku/service/login/LoginManagerImpl$15;-><init>(Lcom/youku/service/login/LoginManagerImpl;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method
