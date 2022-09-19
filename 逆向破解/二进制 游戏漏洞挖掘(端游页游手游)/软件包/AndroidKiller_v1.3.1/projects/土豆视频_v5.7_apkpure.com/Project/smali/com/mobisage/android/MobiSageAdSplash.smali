.class public final Lcom/mobisage/android/MobiSageAdSplash;
.super Lcom/mobisage/android/MobiSageAdView;
.source "MobiSageAdSplash.java"


# static fields
.field private static final ACTION_TYPE:I = 0xf

.field private static final CONTENT_TYPE:J = 0x166L

.field public static final MSG_CLICK:I = 0x2

.field public static final MSG_CLOSE:I = 0x3

.field public static final MSG_ERROR:I = 0x1

.field public static final MSG_SHOW:I = 0x0

.field private static final STATE_CLOSED:I = 0x3

.field private static final STATE_ERROR:I = 0x1

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_OK:I = 0x2


# instance fields
.field private mActivity:Landroid/app/Activity;

.field mDevListener:Lcom/mobisage/android/MobiSageAdSplashListener;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutView:Landroid/view/View;

.field private mLockObject:Ljava/lang/Object;

.field mMyListener:Lcom/mobisage/android/IMobiSageAdViewListener;

.field private mRequestedOrientation:I

.field private mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private mSplashRequestState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;B)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutView"    # Landroid/view/View;
    .param p3, "orientation"    # B

    .prologue
    const/4 v4, 0x1

    .line 196
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/mobisage/android/MobiSageAdSplash;-><init>(Landroid/content/Context;Landroid/view/View;BII)V

    .line 198
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/View;BII)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutView"    # Landroid/view/View;
    .param p3, "orientation"    # B
    .param p4, "affiliateId"    # I
    .param p5, "affiliateSourceType"    # I

    .prologue
    .line 177
    invoke-direct {p0, p1, p4, p5, p3}, Lcom/mobisage/android/MobiSageAdView;-><init>(Landroid/content/Context;IIB)V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageAdSplash;->mLockObject:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobisage/android/MobiSageAdSplash;->mSplashRequestState:I

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/mobisage/android/MobiSageAdSplash;->mRequestedOrientation:I

    .line 55
    new-instance v0, Lcom/mobisage/android/MobiSageAdSplash$1;

    invoke-direct {v0, p0}, Lcom/mobisage/android/MobiSageAdSplash$1;-><init>(Lcom/mobisage/android/MobiSageAdSplash;)V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageAdSplash;->mHandler:Landroid/os/Handler;

    move-object v0, p1

    .line 178
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/mobisage/android/MobiSageAdSplash;->mActivity:Landroid/app/Activity;

    .line 179
    iput-object p2, p0, Lcom/mobisage/android/MobiSageAdSplash;->mLayoutView:Landroid/view/View;

    .line 181
    invoke-static {}, Lcom/mobisage/android/MobiSageManager;->getInstance()Lcom/mobisage/android/MobiSageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mobisage/android/MobiSageManager;->initMobiSageManager(Landroid/content/Context;)V

    .line 182
    invoke-virtual {p0, p1}, Lcom/mobisage/android/MobiSageAdSplash;->initMobiSageAdView(Landroid/content/Context;)V

    .line 183
    return-void
.end method

.method static synthetic access$000(Lcom/mobisage/android/MobiSageAdSplash;)V
    .locals 0
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageAdSplash;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageAdSplash;->restoreActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/mobisage/android/MobiSageAdSplash;)V
    .locals 0
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageAdSplash;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageAdSplash;->initActivity()V

    return-void
.end method

.method static synthetic access$200(Lcom/mobisage/android/MobiSageAdSplash;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageAdSplash;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdSplash;->mLayoutView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mobisage/android/MobiSageAdSplash;)I
    .locals 1
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageAdSplash;

    .prologue
    .line 22
    iget v0, p0, Lcom/mobisage/android/MobiSageAdSplash;->mSplashRequestState:I

    return v0
.end method

.method static synthetic access$302(Lcom/mobisage/android/MobiSageAdSplash;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageAdSplash;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/mobisage/android/MobiSageAdSplash;->mSplashRequestState:I

    return p1
.end method

.method static synthetic access$400(Lcom/mobisage/android/MobiSageAdSplash;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageAdSplash;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdSplash;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mobisage/android/MobiSageAdSplash;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageAdSplash;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdSplash;->mLockObject:Ljava/lang/Object;

    return-object v0
.end method

.method private getStatusBarHeight()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-object v3, p0, Lcom/mobisage/android/MobiSageAdSplash;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 130
    .local v1, "isFullScreen":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 136
    :goto_1
    return v2

    .end local v1    # "isFullScreen":Z
    :cond_0
    move v1, v2

    .line 129
    goto :goto_0

    .line 133
    .restart local v1    # "isFullScreen":Z
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 134
    .local v0, "frame":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdSplash;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 136
    iget v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method private getTitleBarHeight()I
    .locals 4

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageAdSplash;->getStatusBarHeight()I

    move-result v1

    .line 142
    .local v1, "statusBarHeight":I
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdSplash;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 144
    .local v0, "contentTop":I
    sub-int v2, v0, v1

    return v2
.end method

.method private initActivity()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdSplash;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/mobisage/android/MobiSageAdSplash;->mRequestedOrientation:I

    .line 149
    iget-byte v0, p0, Lcom/mobisage/android/MobiSageAdSplash;->mScreenOrientation:B

    packed-switch v0, :pswitch_data_0

    .line 157
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdSplash;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 161
    :goto_0
    return-void

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdSplash;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private initTimer()V
    .locals 6

    .prologue
    .line 295
    invoke-static {}, Lcom/mobisage/android/MobiSageConfigureModule;->getInstance()Lcom/mobisage/android/MobiSageConfigureModule;

    move-result-object v1

    const-string/jumbo v4, "splash"

    invoke-virtual {v1, v4}, Lcom/mobisage/android/MobiSageConfigureModule;->getConfigureData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 297
    .local v0, "splash":Lorg/json/JSONObject;
    const-wide/16 v2, 0x3

    .line 298
    .local v2, "timeout":J
    if-eqz v0, :cond_0

    const-string/jumbo v1, "requesttimeout"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    const-string/jumbo v1, "requesttimeout"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 301
    :cond_0
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v1, p0, Lcom/mobisage/android/MobiSageAdSplash;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 302
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdSplash;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v4, Lcom/mobisage/android/MobiSageAdSplash$3;

    invoke-direct {v4, p0}, Lcom/mobisage/android/MobiSageAdSplash$3;-><init>(Lcom/mobisage/android/MobiSageAdSplash;)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v2, v3, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 312
    return-void
.end method

.method private restoreActivity()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdSplash;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/mobisage/android/MobiSageAdSplash;->mRequestedOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 104
    return-void
.end method


# virtual methods
.method public destoryAdView()V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

.method public bridge synthetic getCustomData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/mobisage/android/MobiSageAdView;->getCustomData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/mobisage/android/MobiSageAdView;->getKeyword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRealHeight()I
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdSplash;->getHeight()I

    move-result v0

    return v0
.end method

.method getRealWidth()I
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdSplash;->getWidth()I

    move-result v0

    return v0
.end method

.method protected initMobiSageAdView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    invoke-static {}, Lcom/mobisage/android/MobiSageManager;->getInstance()Lcom/mobisage/android/MobiSageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mobisage/android/MobiSageManager;->initMobiSageManager(Landroid/content/Context;)V

    .line 219
    invoke-static {}, Lcom/mobisage/android/MobiSageConfigureModule;->getInstance()Lcom/mobisage/android/MobiSageConfigureModule;

    move-result-object v2

    const-string/jumbo v3, "splash"

    invoke-virtual {v2, v3}, Lcom/mobisage/android/MobiSageConfigureModule;->getConfigureData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 221
    .local v1, "splash":Lorg/json/JSONObject;
    const/16 v0, 0xf

    .line 222
    .local v0, "actiontype":I
    if-eqz v1, :cond_0

    const-string v2, "actiontype"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    const-string v2, "actiontype"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 225
    :cond_0
    const/4 v2, 0x2

    iput v2, p0, Lcom/mobisage/android/MobiSageAdSplash;->mDisplayType:I

    .line 226
    const-wide/16 v2, 0x166

    iput-wide v2, p0, Lcom/mobisage/android/MobiSageAdSplash;->mContentType:J

    .line 227
    and-int/lit8 v2, v0, 0xf

    iput v2, p0, Lcom/mobisage/android/MobiSageAdSplash;->mActionType:I

    .line 229
    new-instance v2, Lcom/mobisage/android/MobiSageAdSplash$2;

    invoke-direct {v2, p0}, Lcom/mobisage/android/MobiSageAdSplash$2;-><init>(Lcom/mobisage/android/MobiSageAdSplash;)V

    iput-object v2, p0, Lcom/mobisage/android/MobiSageAdSplash;->mMyListener:Lcom/mobisage/android/IMobiSageAdViewListener;

    .line 280
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdSplash;->mMyListener:Lcom/mobisage/android/IMobiSageAdViewListener;

    invoke-super {p0, v2}, Lcom/mobisage/android/MobiSageAdView;->setMobiSageAdViewListener(Lcom/mobisage/android/IMobiSageAdViewListener;)V

    .line 282
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageAdSplash;->initTimer()V

    .line 284
    sget v2, Lcom/mobisage/android/MobiSageDeviceInfo;->screenWidth:I

    iput v2, p0, Lcom/mobisage/android/MobiSageAdSplash;->mAdWidth:I

    .line 285
    sget v2, Lcom/mobisage/android/MobiSageDeviceInfo;->screenHeight:I

    iput v2, p0, Lcom/mobisage/android/MobiSageAdSplash;->mAdHeight:I

    .line 286
    sget v2, Lcom/mobisage/android/MobiSageDeviceInfo;->screenWidth:I

    iput v2, p0, Lcom/mobisage/android/MobiSageAdSplash;->mRealWidth:I

    .line 287
    sget v2, Lcom/mobisage/android/MobiSageDeviceInfo;->screenHeight:I

    iput v2, p0, Lcom/mobisage/android/MobiSageAdSplash;->mRealHeight:I

    .line 289
    invoke-super {p0, p1}, Lcom/mobisage/android/MobiSageAdView;->initMobiSageAdView(Landroid/content/Context;)V

    .line 291
    invoke-super {p0}, Lcom/mobisage/android/MobiSageAdView;->sendADRequest()V

    .line 292
    return-void
.end method

.method onDestroy()V
    .locals 4

    .prologue
    .line 317
    :try_start_0
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdSplash;->mListener:Lcom/mobisage/android/IMobiSageAdViewListener;

    if-eqz v2, :cond_0

    .line 318
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdSplash;->mListener:Lcom/mobisage/android/IMobiSageAdViewListener;

    invoke-interface {v2, p0}, Lcom/mobisage/android/IMobiSageAdViewListener;->onMobiSageAdViewClose(Lcom/mobisage/android/MobiSageAdView;)V

    .line 320
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mobisage/android/MobiSageAdSplash;->lpgActionCallback:Lcom/mobisage/android/MobiSageAdView$ADViewLPGActionCallback;

    .line 321
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mobisage/android/MobiSageAdSplash;->actionCallback:Lcom/mobisage/android/MobiSageAdView$ADViewActionCallback;

    .line 322
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdSplash;->actionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v2, :cond_2

    .line 323
    :goto_0
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdSplash;->actionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 324
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdSplash;->actionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobisage/android/MobiSageAction;

    .line 325
    .local v0, "action":Lcom/mobisage/android/MobiSageAction;
    invoke-static {}, Lcom/mobisage/android/MobiSageAdModule;->getInstance()Lcom/mobisage/android/MobiSageAdModule;

    move-result-object v2

    const/16 v3, 0x3ef

    invoke-virtual {v2, v3, v0}, Lcom/mobisage/android/MobiSageAdModule;->pushMobiSageAction(ILcom/mobisage/android/MobiSageAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 342
    .end local v0    # "action":Lcom/mobisage/android/MobiSageAction;
    :catch_0
    move-exception v1

    .line 343
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 345
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 328
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdSplash;->actionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 329
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mobisage/android/MobiSageAdSplash;->actionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 331
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mobisage/android/MobiSageAdSplash;->mListener:Lcom/mobisage/android/IMobiSageAdViewListener;

    .line 332
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mobisage/android/MobiSageAdSplash;->webClient:Lcom/mobisage/android/MobiSageAdWebClient;

    .line 333
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdSplash;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 334
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdSplash;->viewSwitcher:Landroid/widget/ViewSwitcher;

    if-eqz v2, :cond_3

    .line 335
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdSplash;->viewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->clearAnimation()V

    .line 336
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mobisage/android/MobiSageAdSplash;->viewSwitcher:Landroid/widget/ViewSwitcher;

    .line 338
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mobisage/android/MobiSageAdSplash;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    .line 339
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mobisage/android/MobiSageAdSplash;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    .line 340
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mobisage/android/MobiSageAdSplash;->context:Landroid/content/Context;

    .line 341
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected replaceSDKParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageAdSplash;->getStatusBarHeight()I

    move-result v11

    .line 109
    .local v11, "statusBarHeight":I
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageAdSplash;->getTitleBarHeight()I

    move-result v12

    .line 110
    .local v12, "titleBarHeight":I
    sget v13, Lcom/mobisage/android/MobiSageDeviceInfo;->screenWidth:I

    .line 111
    .local v13, "width":I
    sget v10, Lcom/mobisage/android/MobiSageDeviceInfo;->screenHeight:I

    .line 112
    .local v10, "height":I
    iget-byte v0, p0, Lcom/mobisage/android/MobiSageAdSplash;->mScreenOrientation:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 113
    sub-int v0, v13, v11

    sub-int v13, v0, v12

    .line 118
    :goto_0
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdSplash;->getCustomData()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mobisage/android/MobiSageAppInfo;->publisherID:Ljava/lang/String;

    iget v0, p0, Lcom/mobisage/android/MobiSageAdSplash;->mDisplayType:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/mobisage/android/MobiSageAdSplash;->mSdkRequestTime:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iget-wide v6, p0, Lcom/mobisage/android/MobiSageAdSplash;->mImpressionTimeout:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iget-byte v0, p0, Lcom/mobisage/android/MobiSageAdSplash;->mScreenOrientation:B

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget-boolean v0, p0, Lcom/mobisage/android/MobiSageAdSplash;->mShowCloseBtn:Z

    if-eqz v0, :cond_1

    const-string v7, "0"

    :goto_1
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lcom/mobisage/android/MobiSageAdModuleHelper;->replaceSDKParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 125
    return-object p1

    .line 115
    :cond_0
    sub-int v0, v10, v11

    sub-int v10, v0, v12

    goto :goto_0

    .line 118
    :cond_1
    const-string v7, "1"

    goto :goto_1
.end method

.method protected requestADFinish(Lcom/mobisage/android/MobiSageAction;)V
    .locals 3
    .param p1, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    const/4 v2, 0x2

    .line 202
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdSplash;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_0
    iget v0, p0, Lcom/mobisage/android/MobiSageAdSplash;->mSplashRequestState:I

    if-nez v0, :cond_0

    .line 204
    const/4 v0, 0x2

    iput v0, p0, Lcom/mobisage/android/MobiSageAdSplash;->mSplashRequestState:I

    .line 206
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    iget v0, p0, Lcom/mobisage/android/MobiSageAdSplash;->mSplashRequestState:I

    if-ne v0, v2, :cond_1

    .line 208
    invoke-super {p0, p1}, Lcom/mobisage/android/MobiSageAdView;->requestADFinish(Lcom/mobisage/android/MobiSageAction;)V

    .line 213
    :goto_0
    return-void

    .line 206
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 210
    :cond_1
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/mobisage/android/MobiSageAdView;->setMobiSageAdViewListener(Lcom/mobisage/android/IMobiSageAdViewListener;)V

    .line 211
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdSplash;->onDestroy()V

    goto :goto_0
.end method

.method public bridge synthetic runJavascript(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/mobisage/android/MobiSageAdView;->runJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setCustomData(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/mobisage/android/MobiSageAdView;->setCustomData(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setKeyword(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/mobisage/android/MobiSageAdView;->setKeyword(Ljava/lang/String;)V

    return-void
.end method

.method public setMobiSageAdSplashListener(Lcom/mobisage/android/MobiSageAdSplashListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mobisage/android/MobiSageAdSplashListener;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdSplash;->mDevListener:Lcom/mobisage/android/MobiSageAdSplashListener;

    .line 359
    return-void
.end method

.method public bridge synthetic setWindowColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/mobisage/android/MobiSageAdView;->setWindowColor(Ljava/lang/String;)V

    return-void
.end method
