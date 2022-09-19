.class public Lcom/tudou/videoshare/SinaShare;
.super Ljava/lang/Object;
.source "SinaShare.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/videoshare/SinaShare$AuthListener;,
        Lcom/tudou/videoshare/SinaShare$IAuthCallBack;
    }
.end annotation


# static fields
.field public static final APP_KEY:Ljava/lang/String; = "3938609172"

.field private static final REDIRECT_URL:Ljava/lang/String; = "http://mobile.tudou.com"

.field public static final SCOPE:Ljava/lang/String; = "email,direct_messages_read,direct_messages_write,friendships_groups_read,friendships_groups_write,statuses_to_me_read,follow_app_official_microblog,invitation_write"

.field private static mSinaShare:Lcom/tudou/videoshare/SinaShare;


# instance fields
.field private mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

.field private mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

.field private mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/videoshare/SinaShare;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/videoshare/SinaShare;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tudou/videoshare/SinaShare;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    return-object v0
.end method

.method static synthetic access$002(Lcom/tudou/videoshare/SinaShare;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/videoshare/SinaShare;
    .param p1, "x1"    # Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/tudou/videoshare/SinaShare;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/tudou/videoshare/SinaShare;
    .locals 2

    .prologue
    .line 46
    const-class v1, Lcom/tudou/videoshare/SinaShare;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tudou/videoshare/SinaShare;->mSinaShare:Lcom/tudou/videoshare/SinaShare;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/tudou/videoshare/SinaShare;

    invoke-direct {v0}, Lcom/tudou/videoshare/SinaShare;-><init>()V

    sput-object v0, Lcom/tudou/videoshare/SinaShare;->mSinaShare:Lcom/tudou/videoshare/SinaShare;

    .line 49
    :cond_0
    sget-object v0, Lcom/tudou/videoshare/SinaShare;->mSinaShare:Lcom/tudou/videoshare/SinaShare;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public authorize(Landroid/app/Activity;Lcom/tudou/videoshare/SinaShare$IAuthCallBack;)V
    .locals 2
    .param p1, "aActivity"    # Landroid/app/Activity;
    .param p2, "iAuthCallBack"    # Lcom/tudou/videoshare/SinaShare$IAuthCallBack;

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/tudou/videoshare/SinaShare;->getSsoHandler(Landroid/app/Activity;)Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    move-result-object v0

    new-instance v1, Lcom/tudou/videoshare/SinaShare$AuthListener;

    invoke-direct {v1, p0, p2}, Lcom/tudou/videoshare/SinaShare$AuthListener;-><init>(Lcom/tudou/videoshare/SinaShare;Lcom/tudou/videoshare/SinaShare$IAuthCallBack;)V

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    .line 142
    return-void
.end method

.method public authorizeCallBack(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/tudou/videoshare/SinaShare;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/tudou/videoshare/SinaShare;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorizeCallBack(IILandroid/content/Intent;)V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/videoshare/SinaShare;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    .line 150
    :cond_0
    return-void
.end method

.method public getAuthInfo()Lcom/sina/weibo/sdk/auth/AuthInfo;
    .locals 5

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tudou/videoshare/SinaShare;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/sina/weibo/sdk/auth/AuthInfo;

    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-string v2, "3938609172"

    const-string v3, "http://mobile.tudou.com"

    const-string v4, "email,direct_messages_read,direct_messages_write,friendships_groups_read,friendships_groups_write,statuses_to_me_read,follow_app_official_microblog,invitation_write"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sina/weibo/sdk/auth/AuthInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tudou/videoshare/SinaShare;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/tudou/videoshare/SinaShare;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    return-object v0
.end method

.method public getSsoHandler(Landroid/app/Activity;)Lcom/sina/weibo/sdk/auth/sso/SsoHandler;
    .locals 2
    .param p1, "aActivity"    # Landroid/app/Activity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/videoshare/SinaShare;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {p0}, Lcom/tudou/videoshare/SinaShare;->getAuthInfo()Lcom/sina/weibo/sdk/auth/AuthInfo;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;-><init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/AuthInfo;)V

    iput-object v0, p0, Lcom/tudou/videoshare/SinaShare;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/tudou/videoshare/SinaShare;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    return-object v0
.end method
