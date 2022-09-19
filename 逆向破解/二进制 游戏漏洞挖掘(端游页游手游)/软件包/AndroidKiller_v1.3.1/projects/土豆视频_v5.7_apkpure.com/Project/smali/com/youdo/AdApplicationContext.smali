.class public Lcom/youdo/AdApplicationContext;
.super Lorg/openad/events/XYDEventDispatcher;

# interfaces
.implements Lorg/openad/events/IXYDEventDispatcher;
.implements Lcom/youdo/ad/interfaces/IAdApplicationContext;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field public static jsQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected dataVO:Lcom/youdo/ad/interfaces/IAdDataVO;

.field private hostActivity:Landroid/app/Activity;

.field private isRestart:Ljava/lang/Boolean;

.field private mAdManager:Lcom/youdo/ad/interfaces/IAdManager;

.field private mAppProfile:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMraidAdDisplay:Landroid/widget/RelativeLayout;

.field public mMraidViewRenderer:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

.field private mTimeout:I

.field private mVideoState:Lorg/openad/constants/IOpenAdContants$VideoState;

.field mWMraidAdRendererEventHandler:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$EventHandler;

.field private mXAdSDKResource:Lcom/youdo/XAdSDKResource;

.field private userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/youdo/AdApplicationContext;->jsQueue:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/youdo/ad/interfaces/IAdManager;)V
    .locals 1

    invoke-direct {p0}, Lorg/openad/events/XYDEventDispatcher;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youdo/AdApplicationContext;->mAppProfile:Ljava/util/Map;

    const/4 v0, 0x5

    iput v0, p0, Lcom/youdo/AdApplicationContext;->mTimeout:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youdo/AdApplicationContext;->mMraidViewRenderer:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    sget-object v0, Lorg/openad/constants/IOpenAdContants$VideoState;->IDLE:Lorg/openad/constants/IOpenAdContants$VideoState;

    iput-object v0, p0, Lcom/youdo/AdApplicationContext;->mVideoState:Lorg/openad/constants/IOpenAdContants$VideoState;

    new-instance v0, Lcom/youdo/AdApplicationContext$1;

    invoke-direct {v0, p0}, Lcom/youdo/AdApplicationContext$1;-><init>(Lcom/youdo/AdApplicationContext;)V

    iput-object v0, p0, Lcom/youdo/AdApplicationContext;->mWMraidAdRendererEventHandler:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$EventHandler;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/AdApplicationContext;->isRestart:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/youdo/AdApplicationContext;->mAdManager:Lcom/youdo/ad/interfaces/IAdManager;

    return-void
.end method

.method public static support(Lorg/openad/constants/IOpenAdContants$AdUnitType;)Ljava/lang/Boolean;
    .locals 3

    const/4 v1, 0x1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "4.4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "4.4.0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "4.4.2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "4.4.3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "4.4.4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    invoke-super {p0}, Lorg/openad/events/XYDEventDispatcher;->dispose()V

    invoke-virtual {p0}, Lcom/youdo/AdApplicationContext;->getWebView()Lcom/youdo/view/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youdo/view/MraidView;->dispose()V

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/youdo/AdApplicationContext;->hostActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getAdData()Lcom/youdo/ad/interfaces/IAdDataVO;
    .locals 1

    iget-object v0, p0, Lcom/youdo/AdApplicationContext;->dataVO:Lcom/youdo/ad/interfaces/IAdDataVO;

    return-object v0
.end method

.method public getAdManager()Lcom/youdo/ad/interfaces/IAdManager;
    .locals 1

    iget-object v0, p0, Lcom/youdo/AdApplicationContext;->mAdManager:Lcom/youdo/ad/interfaces/IAdManager;

    return-object v0
.end method

.method public getAppProfile()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/youdo/AdApplicationContext;->mAppProfile:Ljava/util/Map;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/youdo/AdApplicationContext;->mAdManager:Lcom/youdo/ad/interfaces/IAdManager;

    invoke-interface {v0}, Lcom/youdo/ad/interfaces/IAdManager;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    iget v0, p0, Lcom/youdo/AdApplicationContext;->mTimeout:I

    return v0
.end method

.method public getVerion()Ljava/lang/String;
    .locals 1

    const-string v0, "YouDoAdSDK Runtime --- 2015-09-08 16:59:42 -- 1412 -- master -- 42e1aa3b49846925d8865dd6937033beb218ee3a"

    return-object v0
.end method

.method public getVideoState()Lorg/openad/constants/IOpenAdContants$VideoState;
    .locals 1

    iget-object v0, p0, Lcom/youdo/AdApplicationContext;->mVideoState:Lorg/openad/constants/IOpenAdContants$VideoState;

    return-object v0
.end method

.method public getWMHtml5AdViewContainer()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/youdo/AdApplicationContext;->mMraidAdDisplay:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getWebView()Lcom/youdo/view/MraidView;
    .locals 1

    iget-object v0, p0, Lcom/youdo/AdApplicationContext;->mMraidViewRenderer:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    invoke-virtual {v0}, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->getWebView()Lcom/youdo/view/MraidView;

    move-result-object v0

    return-object v0
.end method

.method public getXAdSDKResource()Lcom/youdo/XAdSDKResource;
    .locals 1

    iget-object v0, p0, Lcom/youdo/AdApplicationContext;->mXAdSDKResource:Lcom/youdo/XAdSDKResource;

    return-object v0
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/youdo/AdApplicationContext;->mMraidViewRenderer:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/AdApplicationContext;->mMraidViewRenderer:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$MessageSender;->APP:Lorg/openad/constants/IOpenAdContants$MessageSender;

    invoke-virtual {v0, v1}, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->hide(Lorg/openad/constants/IOpenAdContants$MessageSender;)V

    :cond_0
    return-void
.end method

.method public load()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/youdo/AdApplicationContext;->mMraidAdDisplay:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "please set html5 ad container via setWMHTML5AdViewContainer"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/youdo/AdApplicationContext;->hostActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "please set the current Activity via setActivity"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/youdo/AdApplicationContext;->dataVO:Lcom/youdo/ad/interfaces/IAdDataVO;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "please set the current ad-data via setAdData"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v0, "ad_prepared"

    invoke-virtual {p0, v0}, Lcom/youdo/AdApplicationContext;->hasEventListener(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "please add listener for AD_PREPARED"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v0, "ad_stop"

    invoke-virtual {p0, v0}, Lcom/youdo/AdApplicationContext;->hasEventListener(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "please add listener for AD_STOPED"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v0, "ad_error"

    invoke-virtual {p0, v0}, Lcom/youdo/AdApplicationContext;->hasEventListener(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "please add listener for AD_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/youdo/AdApplicationContext;->mXAdSDKResource:Lcom/youdo/XAdSDKResource;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "please invoke setXAdSDKResource correctly"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    iget-object v1, p0, Lcom/youdo/AdApplicationContext;->hostActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/youdo/AdApplicationContext;->mMraidAdDisplay:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/youdo/AdApplicationContext;->dataVO:Lcom/youdo/ad/interfaces/IAdDataVO;

    iget-object v5, p0, Lcom/youdo/AdApplicationContext;->mWMraidAdRendererEventHandler:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$EventHandler;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;-><init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;Lcom/youdo/ad/interfaces/IAdDataVO;Lcom/youdo/ad/interfaces/IAdApplicationContext;Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$EventHandler;)V

    iput-object v0, p0, Lcom/youdo/AdApplicationContext;->mMraidViewRenderer:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    iget-object v0, p0, Lcom/youdo/AdApplicationContext;->mMraidViewRenderer:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    invoke-virtual {v0}, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->load()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/youdo/AdApplicationContext;->mMraidViewRenderer:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/AdApplicationContext;->mMraidViewRenderer:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    invoke-virtual {v0}, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->getWebView()Lcom/youdo/view/MraidView;

    move-result-object v0

    sget-object v1, Lorg/openad/constants/IOpenAdContants$MessageSender;->APP:Lorg/openad/constants/IOpenAdContants$MessageSender;

    invoke-virtual {v0, v1}, Lcom/youdo/view/MraidView;->hide(Lorg/openad/constants/IOpenAdContants$MessageSender;)V

    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/AdApplicationContext;->isRestart:Ljava/lang/Boolean;

    return-void
.end method

.method public onResume()V
    .locals 5

    const/4 v2, 0x0

    sget-object v0, Lcom/youdo/AdApplicationContext;->jsQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/youdo/AdApplicationContext;->getWebView()Lcom/youdo/view/MraidView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youdo/AdApplicationContext;->isRestart:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v3, Lcom/youdo/AdApplicationContext;->jsQueue:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-object v0, Lcom/youdo/AdApplicationContext;->jsQueue:Ljava/util/ArrayList;

    move v1, v2

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/youdo/AdApplicationContext;->getWebView()Lcom/youdo/view/MraidView;

    move-result-object v4

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/youdo/view/MraidView;->injectJavaScript(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/youdo/AdApplicationContext;->isRestart:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/AdApplicationContext;->isRestart:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/youdo/AdApplicationContext;->mMraidViewRenderer:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/youdo/AdApplicationContext;->mMraidViewRenderer:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    invoke-virtual {v0}, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->getWebView()Lcom/youdo/view/MraidView;

    move-result-object v0

    sget-object v1, Lorg/openad/constants/IOpenAdContants$MessageSender;->APP:Lorg/openad/constants/IOpenAdContants$MessageSender;

    invoke-virtual {v0, v1}, Lcom/youdo/view/MraidView;->show(Lorg/openad/constants/IOpenAdContants$MessageSender;)V

    :cond_3
    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public play()V
    .locals 0

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 3

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/youdo/AdApplicationContext;->hostActivity:Landroid/app/Activity;

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/youdo/AdApplicationContext;->userAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/AdApplicationContext;->userAgent:Ljava/lang/String;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "unknown"

    goto :goto_0
.end method

.method public setAdData(Lorg/json/JSONObject;)V
    .locals 1

    new-instance v0, Lcom/youdo/vo/AdDataVO;

    invoke-direct {v0, p1}, Lcom/youdo/vo/AdDataVO;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/youdo/AdApplicationContext;->dataVO:Lcom/youdo/ad/interfaces/IAdDataVO;

    return-void
.end method

.method public setAppProfile(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/youdo/AdApplicationContext;->mAppProfile:Ljava/util/Map;

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/youdo/AdApplicationContext;->mTimeout:I

    return-void
.end method

.method public setVideoAdDuration(D)V
    .locals 1

    iget-object v0, p0, Lcom/youdo/AdApplicationContext;->mMraidViewRenderer:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/AdApplicationContext;->mMraidViewRenderer:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->setVideoAdDuration(D)V

    :cond_0
    return-void
.end method

.method public setVideoAdPlayheadTime(D)V
    .locals 1

    iget-object v0, p0, Lcom/youdo/AdApplicationContext;->mMraidViewRenderer:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/AdApplicationContext;->mMraidViewRenderer:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->setVideoAdPlayheadTime(D)V

    :cond_0
    return-void
.end method

.method public setVideoState(Lorg/openad/constants/IOpenAdContants$VideoState;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/AdApplicationContext;->mVideoState:Lorg/openad/constants/IOpenAdContants$VideoState;

    return-void
.end method

.method public setWMHtml5AdViewContainer(Landroid/widget/RelativeLayout;)V
    .locals 2

    iput-object p1, p0, Lcom/youdo/AdApplicationContext;->mMraidAdDisplay:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/youdo/AdApplicationContext;->mMraidAdDisplay:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public setXAdSDKResource(Lcom/youdo/XAdSDKResource;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/AdApplicationContext;->mXAdSDKResource:Lcom/youdo/XAdSDKResource;

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/youdo/AdApplicationContext;->mMraidViewRenderer:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/AdApplicationContext;->mMraidViewRenderer:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$MessageSender;->APP:Lorg/openad/constants/IOpenAdContants$MessageSender;

    invoke-virtual {v0, v1}, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->show(Lorg/openad/constants/IOpenAdContants$MessageSender;)V

    :cond_0
    return-void
.end method
