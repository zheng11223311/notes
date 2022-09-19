.class abstract Lcom/mobisage/android/MobiSageAdView;
.super Landroid/widget/FrameLayout;
.source "MobiSageAdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobisage/android/MobiSageAdView$MobiSaegAdViewCallback;,
        Lcom/mobisage/android/MobiSageAdView$ADViewLPGActionCallback;,
        Lcom/mobisage/android/MobiSageAdView$ADViewActionCallback;,
        Lcom/mobisage/android/MobiSageAdView$ADViewHandlerCallback;
    }
.end annotation


# static fields
.field static final AFFILIATE_ID_DEFAULT:I = 0x1

.field static final AFFILIATE_SOURCE_TYPE_DEFAULT:I = 0x1

.field static final AdView_Hiden:I = 0x0

.field static final AdView_Invalid:I = -0x1

.field static final AdView_Visable:I = 0x1

.field static final DISPLAY_TYPE_BANNER:I = 0x0

.field static final DISPLAY_TYPE_FLOT_WINDOW:I = 0x1

.field static final DISPLAY_TYPE_NOTIFICATION:I = 0x3

.field static final DISPLAY_TYPE_POPUP:I = 0x4

.field static final DISPLAY_TYPE_SPLASH_SCREEN:I = 0x2

.field static final Default_State:I = 0x0

.field public static final ORIENTATION_LANDSCAPE:B = 0x2t

.field static final ORIENTATION_NONE:B = 0x0t

.field public static final ORIENTATION_PORTRAIT:B = 0x1t

.field static final Request_State:I = 0x1

.field static final Stop_State:I = -0x1


# instance fields
.field protected actionCallback:Lcom/mobisage/android/MobiSageAdView$ADViewActionCallback;

.field protected actionQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/mobisage/android/MobiSageAction;",
            ">;"
        }
    .end annotation
.end field

.field protected adViewState:I

.field protected backWebView:Lcom/mobisage/android/MobiSageAdWebView;

.field protected backgroundColor:Ljava/lang/String;

.field protected configError:Z

.field protected context:Landroid/content/Context;

.field protected fontColor:Ljava/lang/String;

.field protected fontSize:Ljava/lang/String;

.field protected frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

.field protected height:I

.field protected lpgActionCallback:Lcom/mobisage/android/MobiSageAdView$ADViewLPGActionCallback;

.field protected mActionType:I

.field protected mAdHeight:I

.field protected mAdWidth:I

.field protected mAffiliateId:I

.field protected mAffiliateSourceType:I

.field protected mContentType:J

.field private mCustomData:Ljava/lang/String;

.field protected mDisplayType:I

.field protected mImpressionTimeout:J

.field private mKeyword:Ljava/lang/String;

.field protected mListener:Lcom/mobisage/android/IMobiSageAdViewListener;

.field protected mRealHeight:I

.field protected mRealWidth:I

.field protected mRequestStartTime:J

.field protected mScreenOrientation:B

.field protected mSdkRequestTime:J

.field protected mShowCloseBtn:Z

.field protected mWindowColor:Ljava/lang/String;

.field protected mainHandler:Landroid/os/Handler;

.field sendHandler:Landroid/os/Handler;

.field protected viewSwitcher:Landroid/widget/ViewSwitcher;

.field protected webClient:Lcom/mobisage/android/MobiSageAdWebClient;

.field protected width:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "affiliateId"    # I
    .param p3, "affiliateSourceType"    # I

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mobisage/android/MobiSageAdView;-><init>(Landroid/content/Context;IIB)V

    .line 65
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;IIB)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "affiliateId"    # I
    .param p3, "affiliateSourceType"    # I
    .param p4, "orientation"    # B

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    iput v1, p0, Lcom/mobisage/android/MobiSageAdView;->mAffiliateId:I

    .line 54
    iput v1, p0, Lcom/mobisage/android/MobiSageAdView;->mAffiliateSourceType:I

    .line 55
    iput-byte v2, p0, Lcom/mobisage/android/MobiSageAdView;->mScreenOrientation:B

    .line 57
    iput v0, p0, Lcom/mobisage/android/MobiSageAdView;->mAdWidth:I

    .line 58
    iput v0, p0, Lcom/mobisage/android/MobiSageAdView;->mAdHeight:I

    .line 59
    iput v0, p0, Lcom/mobisage/android/MobiSageAdView;->mRealWidth:I

    .line 60
    iput v0, p0, Lcom/mobisage/android/MobiSageAdView;->mRealHeight:I

    .line 119
    const-string v0, "#00000000"

    iput-object v0, p0, Lcom/mobisage/android/MobiSageAdView;->mWindowColor:Ljava/lang/String;

    .line 132
    iput-boolean v2, p0, Lcom/mobisage/android/MobiSageAdView;->configError:Z

    .line 187
    new-instance v0, Lcom/mobisage/android/MobiSageAdView$1;

    invoke-direct {v0, p0}, Lcom/mobisage/android/MobiSageAdView$1;-><init>(Lcom/mobisage/android/MobiSageAdView;)V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageAdView;->sendHandler:Landroid/os/Handler;

    .line 70
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdView;->context:Landroid/content/Context;

    .line 71
    iput p2, p0, Lcom/mobisage/android/MobiSageAdView;->mAffiliateId:I

    .line 72
    iput p3, p0, Lcom/mobisage/android/MobiSageAdView;->mAffiliateSourceType:I

    .line 73
    iput-byte p4, p0, Lcom/mobisage/android/MobiSageAdView;->mScreenOrientation:B

    .line 74
    iput-boolean v1, p0, Lcom/mobisage/android/MobiSageAdView;->mShowCloseBtn:Z

    .line 75
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x1

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput v2, p0, Lcom/mobisage/android/MobiSageAdView;->mAffiliateId:I

    .line 54
    iput v2, p0, Lcom/mobisage/android/MobiSageAdView;->mAffiliateSourceType:I

    .line 55
    iput-byte v3, p0, Lcom/mobisage/android/MobiSageAdView;->mScreenOrientation:B

    .line 57
    iput v0, p0, Lcom/mobisage/android/MobiSageAdView;->mAdWidth:I

    .line 58
    iput v0, p0, Lcom/mobisage/android/MobiSageAdView;->mAdHeight:I

    .line 59
    iput v0, p0, Lcom/mobisage/android/MobiSageAdView;->mRealWidth:I

    .line 60
    iput v0, p0, Lcom/mobisage/android/MobiSageAdView;->mRealHeight:I

    .line 119
    const-string v0, "#00000000"

    iput-object v0, p0, Lcom/mobisage/android/MobiSageAdView;->mWindowColor:Ljava/lang/String;

    .line 132
    iput-boolean v3, p0, Lcom/mobisage/android/MobiSageAdView;->configError:Z

    .line 187
    new-instance v0, Lcom/mobisage/android/MobiSageAdView$1;

    invoke-direct {v0, p0}, Lcom/mobisage/android/MobiSageAdView$1;-><init>(Lcom/mobisage/android/MobiSageAdView;)V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageAdView;->sendHandler:Landroid/os/Handler;

    .line 79
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdView;->context:Landroid/content/Context;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://schemas.android.com/apk/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "customdata"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobisage/android/MobiSageAdView;->mCustomData:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://schemas.android.com/apk/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "keyword"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobisage/android/MobiSageAdView;->mKeyword:Ljava/lang/String;

    .line 87
    iput v2, p0, Lcom/mobisage/android/MobiSageAdView;->mAffiliateId:I

    .line 88
    iput v2, p0, Lcom/mobisage/android/MobiSageAdView;->mAffiliateSourceType:I

    .line 89
    iput-byte v3, p0, Lcom/mobisage/android/MobiSageAdView;->mScreenOrientation:B

    .line 90
    iput-boolean v2, p0, Lcom/mobisage/android/MobiSageAdView;->mShowCloseBtn:Z

    .line 91
    return-void
.end method

.method static synthetic access$400(Lcom/mobisage/android/MobiSageAdView;Lcom/mobisage/android/MobiSageAction;)V
    .locals 0
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageAdView;
    .param p1, "x1"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageAdView;->requestADError(Lcom/mobisage/android/MobiSageAction;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mobisage/android/MobiSageAdView;Lcom/mobisage/android/MobiSageAction;)V
    .locals 0
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageAdView;
    .param p1, "x1"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageAdView;->requestLPGFinish(Lcom/mobisage/android/MobiSageAction;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mobisage/android/MobiSageAdView;Lcom/mobisage/android/MobiSageAction;)V
    .locals 0
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageAdView;
    .param p1, "x1"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageAdView;->requestLPGError(Lcom/mobisage/android/MobiSageAction;)V

    return-void
.end method

.method private cancelOldAction()V
    .locals 3

    .prologue
    .line 503
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdView;->actionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v1, :cond_0

    .line 504
    :goto_0
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdView;->actionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdView;->actionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobisage/android/MobiSageAction;

    .line 506
    .local v0, "action":Lcom/mobisage/android/MobiSageAction;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    .line 507
    invoke-static {}, Lcom/mobisage/android/MobiSageAdModule;->getInstance()Lcom/mobisage/android/MobiSageAdModule;

    move-result-object v1

    const/16 v2, 0x3ef

    invoke-virtual {v1, v2, v0}, Lcom/mobisage/android/MobiSageAdModule;->pushMobiSageAction(ILcom/mobisage/android/MobiSageAction;)V

    goto :goto_0

    .line 510
    .end local v0    # "action":Lcom/mobisage/android/MobiSageAction;
    :cond_0
    return-void
.end method

.method private checkAdViewValid()I
    .locals 12

    .prologue
    const/4 v6, -0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 424
    iget-object v9, p0, Lcom/mobisage/android/MobiSageAdView;->context:Landroid/content/Context;

    if-nez v9, :cond_1

    .line 498
    :cond_0
    :goto_0
    return v6

    .line 426
    :cond_1
    iget v9, p0, Lcom/mobisage/android/MobiSageAdView;->mDisplayType:I

    if-eq v9, v8, :cond_2

    iget v9, p0, Lcom/mobisage/android/MobiSageAdView;->mDisplayType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    :cond_2
    move v6, v8

    .line 428
    goto :goto_0

    .line 430
    :cond_3
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdView;->getChildCount()I

    move-result v2

    .line 431
    .local v2, "i1":I
    if-eqz v2, :cond_0

    .line 433
    const/4 v4, 0x0

    .line 434
    .local v4, "isResumed":Z
    const/4 v3, 0x0

    .line 436
    .local v3, "isDestroyed":Z
    :try_start_0
    iget-object v9, p0, Lcom/mobisage/android/MobiSageAdView;->context:Landroid/content/Context;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 438
    .local v0, "classInfo":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.app.Activity"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 444
    :goto_1
    const-string v9, "mResumed"

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 445
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 446
    iget-object v9, p0, Lcom/mobisage/android/MobiSageAdView;->context:Landroid/content/Context;

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v4

    .line 447
    const-string v9, "mDestroyed"

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 448
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 449
    iget-object v9, p0, Lcom/mobisage/android/MobiSageAdView;->context:Landroid/content/Context;

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    .line 453
    .end local v0    # "classInfo":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_2
    if-nez v3, :cond_0

    .line 456
    if-nez v4, :cond_6

    move v6, v7

    .line 457
    goto :goto_0

    .line 440
    .restart local v0    # "classInfo":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 441
    if-nez v0, :cond_4

    goto :goto_1

    .line 459
    .end local v0    # "classInfo":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAdView;->context:Landroid/content/Context;

    const-string v9, "power"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 461
    .local v5, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-nez v6, :cond_7

    move v6, v7

    .line 462
    goto :goto_0

    .line 465
    :cond_7
    invoke-static {}, Lcom/mobisage/android/MobiSageConfigureModule;->getInstance()Lcom/mobisage/android/MobiSageConfigureModule;

    move-result-object v6

    const-string v9, "adswitch"

    invoke-virtual {v6, v9}, Lcom/mobisage/android/MobiSageConfigureModule;->getConfigureData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_a

    .line 468
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAdView;->mListener:Lcom/mobisage/android/IMobiSageAdViewListener;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/mobisage/android/MobiSageAdView;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    if-eqz v6, :cond_9

    .line 469
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAdView;->viewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v8, p0, Lcom/mobisage/android/MobiSageAdView;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    invoke-virtual {v6, v8}, Landroid/widget/ViewSwitcher;->removeView(Landroid/view/View;)V

    .line 470
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAdView;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    invoke-virtual {v6}, Lcom/mobisage/android/MobiSageAdWebView;->destroy()V

    .line 471
    iput-object v11, p0, Lcom/mobisage/android/MobiSageAdView;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    .line 472
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAdView;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    if-eqz v6, :cond_8

    .line 473
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAdView;->viewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v8, p0, Lcom/mobisage/android/MobiSageAdView;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    invoke-virtual {v6, v8}, Landroid/widget/ViewSwitcher;->removeView(Landroid/view/View;)V

    .line 474
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAdView;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    invoke-virtual {v6}, Lcom/mobisage/android/MobiSageAdWebView;->destroy()V

    .line 475
    iput-object v11, p0, Lcom/mobisage/android/MobiSageAdView;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    .line 477
    :cond_8
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAdView;->mListener:Lcom/mobisage/android/IMobiSageAdViewListener;

    invoke-interface {v6, p0}, Lcom/mobisage/android/IMobiSageAdViewListener;->onMobiSageAdViewHide(Lcom/mobisage/android/MobiSageAdView;)V

    :cond_9
    move v6, v7

    .line 479
    goto/16 :goto_0

    .line 482
    :cond_a
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdView;->getVisibility()I

    move-result v6

    const/4 v9, 0x4

    if-eq v6, v9, :cond_b

    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdView;->getVisibility()I

    move-result v6

    const/16 v9, 0x8

    if-ne v6, v9, :cond_e

    .line 483
    :cond_b
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAdView;->mListener:Lcom/mobisage/android/IMobiSageAdViewListener;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/mobisage/android/MobiSageAdView;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/mobisage/android/MobiSageAdView;->viewSwitcher:Landroid/widget/ViewSwitcher;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/mobisage/android/MobiSageAdView;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    if-eqz v6, :cond_d

    .line 485
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAdView;->viewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v8, p0, Lcom/mobisage/android/MobiSageAdView;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    invoke-virtual {v6, v8}, Landroid/widget/ViewSwitcher;->removeView(Landroid/view/View;)V

    .line 486
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAdView;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    invoke-virtual {v6}, Lcom/mobisage/android/MobiSageAdWebView;->destroy()V

    .line 487
    iput-object v11, p0, Lcom/mobisage/android/MobiSageAdView;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    .line 488
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAdView;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    if-eqz v6, :cond_c

    .line 489
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAdView;->viewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v8, p0, Lcom/mobisage/android/MobiSageAdView;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    invoke-virtual {v6, v8}, Landroid/widget/ViewSwitcher;->removeView(Landroid/view/View;)V

    .line 490
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAdView;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    invoke-virtual {v6}, Lcom/mobisage/android/MobiSageAdWebView;->destroy()V

    .line 491
    iput-object v11, p0, Lcom/mobisage/android/MobiSageAdView;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    .line 493
    :cond_c
    iget-object v6, p0, Lcom/mobisage/android/MobiSageAdView;->mListener:Lcom/mobisage/android/IMobiSageAdViewListener;

    invoke-interface {v6, p0}, Lcom/mobisage/android/IMobiSageAdViewListener;->onMobiSageAdViewHide(Lcom/mobisage/android/MobiSageAdView;)V

    :cond_d
    move v6, v7

    .line 495
    goto/16 :goto_0

    :cond_e
    move v6, v8

    .line 498
    goto/16 :goto_0

    .line 450
    .end local v5    # "powerManager":Landroid/os/PowerManager;
    :catch_0
    move-exception v9

    goto/16 :goto_2
.end method

.method private initPid(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 800
    sget-object v0, Lcom/mobisage/android/MobiSageAppInfo;->publisherID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    const-string v0, "MobiSage"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mobisage/android/MobiSageAppInfo;->publisherID:Ljava/lang/String;

    .line 804
    :cond_0
    return-void
.end method

.method protected static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "strSource"    # Ljava/lang/String;
    .param p1, "strFrom"    # Ljava/lang/String;
    .param p2, "strTo"    # Ljava/lang/String;

    .prologue
    .line 617
    if-nez p0, :cond_1

    .line 618
    const/4 p0, 0x0

    .line 637
    .end local p0    # "strSource":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 620
    .restart local p0    # "strSource":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .line 621
    .local v3, "i":I
    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_0

    .line 622
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 623
    .local v1, "cSrc":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 624
    .local v2, "cTo":[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 625
    .local v5, "len":I
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v6, v1

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 626
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 627
    add-int/2addr v3, v5

    .line 628
    move v4, v3

    .line 629
    .local v4, "j":I
    :goto_1
    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_2

    .line 630
    sub-int v6, v3, v4

    invoke-virtual {v0, v1, v4, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 631
    add-int/2addr v3, v5

    .line 632
    move v4, v3

    goto :goto_1

    .line 634
    :cond_2
    array-length v6, v1

    sub-int/2addr v6, v4

    invoke-virtual {v0, v1, v4, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 635
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private requestADError(Lcom/mobisage/android/MobiSageAction;)V
    .locals 1
    .param p1, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 641
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdView;->actionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 642
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobisage/android/MobiSageAdView;->adViewState:I

    .line 643
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdView;->mListener:Lcom/mobisage/android/IMobiSageAdViewListener;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdView;->mListener:Lcom/mobisage/android/IMobiSageAdViewListener;

    invoke-interface {v0, p0}, Lcom/mobisage/android/IMobiSageAdViewListener;->onMobiSageAdViewError(Lcom/mobisage/android/MobiSageAdView;)V

    .line 646
    :cond_0
    return-void
.end method

.method private requestLPGError(Lcom/mobisage/android/MobiSageAction;)V
    .locals 1
    .param p1, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 653
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdView;->actionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 654
    return-void
.end method

.method private requestLPGFinish(Lcom/mobisage/android/MobiSageAction;)V
    .locals 1
    .param p1, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 649
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdView;->actionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 650
    return-void
.end method

.method private showErrorForDev(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 310
    iput-boolean v1, p0, Lcom/mobisage/android/MobiSageAdView;->configError:Z

    .line 311
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdView;->context:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 312
    const-string v0, "MobiSage SDK"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void
.end method


# virtual methods
.method public destoryAdView()V
    .locals 0

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdView;->onDestroy()V

    .line 421
    return-void
.end method

.method public getCustomData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdView;->mCustomData:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdView;->mKeyword:Ljava/lang/String;

    return-object v0
.end method

.method getRealHeight()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/mobisage/android/MobiSageAdView;->mRealHeight:I

    return v0
.end method

.method getRealWidth()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/mobisage/android/MobiSageAdView;->mRealWidth:I

    return v0
.end method

.method protected getViewHeight(I)I
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 302
    iget v0, p0, Lcom/mobisage/android/MobiSageAdView;->mDisplayType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/mobisage/android/MobiSageAdView;->mDisplayType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 304
    :cond_0
    const/4 p1, -0x1

    .line 306
    .end local p1    # "height":I
    :cond_1
    return p1
.end method

.method protected getViewWidth(I)I
    .locals 2
    .param p1, "width"    # I

    .prologue
    .line 288
    iget v0, p0, Lcom/mobisage/android/MobiSageAdView;->mDisplayType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/mobisage/android/MobiSageAdView;->mDisplayType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 290
    :cond_0
    const/4 p1, -0x1

    .line 292
    .end local p1    # "width":I
    :cond_1
    return p1
.end method

.method protected initMobiSageAdView(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 211
    invoke-virtual {p0, v4}, Lcom/mobisage/android/MobiSageAdView;->setBackgroundColor(I)V

    .line 212
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/mobisage/android/MobiSageAdView;->setAnimationCacheEnabled(Z)V

    .line 214
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageAdView;->initPid(Landroid/content/Context;)V

    .line 216
    new-instance v2, Lcom/mobisage/android/MobiSageAdWebClient;

    invoke-direct {v2}, Lcom/mobisage/android/MobiSageAdWebClient;-><init>()V

    iput-object v2, p0, Lcom/mobisage/android/MobiSageAdView;->webClient:Lcom/mobisage/android/MobiSageAdWebClient;

    .line 217
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdView;->webClient:Lcom/mobisage/android/MobiSageAdWebClient;

    new-instance v3, Lcom/mobisage/android/MobiSageAdView$MobiSaegAdViewCallback;

    invoke-direct {v3, p0, v5}, Lcom/mobisage/android/MobiSageAdView$MobiSaegAdViewCallback;-><init>(Lcom/mobisage/android/MobiSageAdView;Lcom/mobisage/android/MobiSageAdView$1;)V

    iput-object v3, v2, Lcom/mobisage/android/MobiSageAdWebClient;->callback:Lcom/mobisage/android/IMobiSageAdWebViewCallback;

    .line 219
    iput v4, p0, Lcom/mobisage/android/MobiSageAdView;->adViewState:I

    .line 221
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v2, p0, Lcom/mobisage/android/MobiSageAdView;->actionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 223
    new-instance v2, Lcom/mobisage/android/MobiSageAdView$ADViewActionCallback;

    invoke-direct {v2, p0, v5}, Lcom/mobisage/android/MobiSageAdView$ADViewActionCallback;-><init>(Lcom/mobisage/android/MobiSageAdView;Lcom/mobisage/android/MobiSageAdView$1;)V

    iput-object v2, p0, Lcom/mobisage/android/MobiSageAdView;->actionCallback:Lcom/mobisage/android/MobiSageAdView$ADViewActionCallback;

    .line 224
    new-instance v2, Lcom/mobisage/android/MobiSageAdView$ADViewLPGActionCallback;

    invoke-direct {v2, p0, v5}, Lcom/mobisage/android/MobiSageAdView$ADViewLPGActionCallback;-><init>(Lcom/mobisage/android/MobiSageAdView;Lcom/mobisage/android/MobiSageAdView$1;)V

    iput-object v2, p0, Lcom/mobisage/android/MobiSageAdView;->lpgActionCallback:Lcom/mobisage/android/MobiSageAdView$ADViewLPGActionCallback;

    .line 225
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v4, Lcom/mobisage/android/MobiSageAdView$ADViewHandlerCallback;

    invoke-direct {v4, p0, v5}, Lcom/mobisage/android/MobiSageAdView$ADViewHandlerCallback;-><init>(Lcom/mobisage/android/MobiSageAdView;Lcom/mobisage/android/MobiSageAdView$1;)V

    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/mobisage/android/MobiSageAdView;->mainHandler:Landroid/os/Handler;

    .line 228
    new-instance v2, Landroid/widget/ViewSwitcher;

    invoke-direct {v2, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mobisage/android/MobiSageAdView;->viewSwitcher:Landroid/widget/ViewSwitcher;

    .line 229
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/mobisage/android/MobiSageAdView;->mRealWidth:I

    invoke-virtual {p0, v2}, Lcom/mobisage/android/MobiSageAdView;->getViewWidth(I)I

    move-result v2

    iget v3, p0, Lcom/mobisage/android/MobiSageAdView;->mRealHeight:I

    invoke-virtual {p0, v3}, Lcom/mobisage/android/MobiSageAdView;->getViewHeight(I)I

    move-result v3

    const/16 v4, 0x99

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 233
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdView;->viewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/ViewSwitcher;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdView;->viewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {p0, v2}, Lcom/mobisage/android/MobiSageAdView;->addView(Landroid/view/View;)V

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "isMatch":Z
    :try_start_0
    sget-object v2, Lcom/mobisage/android/MobiSageAppInfo;->publisherID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    const/4 v0, 0x0

    .line 246
    :goto_0
    if-nez v0, :cond_1

    .line 248
    const-string/jumbo v2, "\u60a8\u7684MobiSage\'s Publish_ID\u683c\u5f0f\u4e0d\u5408\u6cd5\uff0c\u8bf7\u68c0\u67e5!"

    invoke-direct {p0, v2}, Lcom/mobisage/android/MobiSageAdView;->showErrorForDev(Ljava/lang/String;)V

    .line 279
    :goto_1
    return-void

    .line 244
    :cond_0
    sget-object v2, Lcom/mobisage/android/MobiSageAppInfo;->publisherID:Ljava/lang/String;

    const-string v3, "[a-z0-9]{32}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 251
    :cond_1
    invoke-static {p1}, Lcom/mobisage/android/MobiSageAppInfo;->mobiSageActivityNotFound(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 253
    const-string/jumbo v2, "\u8bf7\u5728AndroidManifest\u6ce8\u518ccom.mobisage.android.MobiSageActivity!"

    invoke-direct {p0, v2}, Lcom/mobisage/android/MobiSageAdView;->showErrorForDev(Ljava/lang/String;)V

    goto :goto_1

    .line 276
    :catch_0
    move-exception v2

    goto :goto_1

    .line 255
    :cond_2
    invoke-static {p1}, Lcom/mobisage/android/MobiSageAppInfo;->mobiSageServiceNotFound(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 257
    const-string/jumbo v2, "\u8bf7\u5728AndroidManifest\u6ce8\u518ccom.mobisage.android.MobiSageApkService!"

    invoke-direct {p0, v2}, Lcom/mobisage/android/MobiSageAdView;->showErrorForDev(Ljava/lang/String;)V

    goto :goto_1

    .line 261
    :cond_3
    const-string v2, "MobiSage SDK"

    const-string v3, "SDK Version 5.5.5d5dc86586c75c24f82b119bb7c70ae1ada439448"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string v2, "MobiSage SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Your MobiSage\'s Publish_ID is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mobisage/android/MobiSageAppInfo;->publisherID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method onDestroy()V
    .locals 5

    .prologue
    .line 377
    :try_start_0
    iget-object v3, p0, Lcom/mobisage/android/MobiSageAdView;->mListener:Lcom/mobisage/android/IMobiSageAdViewListener;

    if-eqz v3, :cond_0

    .line 378
    iget-object v3, p0, Lcom/mobisage/android/MobiSageAdView;->mListener:Lcom/mobisage/android/IMobiSageAdViewListener;

    invoke-interface {v3, p0}, Lcom/mobisage/android/IMobiSageAdViewListener;->onMobiSageAdViewClose(Lcom/mobisage/android/MobiSageAdView;)V

    .line 380
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mobisage/android/MobiSageAdView;->lpgActionCallback:Lcom/mobisage/android/MobiSageAdView$ADViewLPGActionCallback;

    .line 381
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mobisage/android/MobiSageAdView;->actionCallback:Lcom/mobisage/android/MobiSageAdView$ADViewActionCallback;

    .line 382
    iget-object v3, p0, Lcom/mobisage/android/MobiSageAdView;->actionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v3, :cond_2

    .line 383
    :goto_0
    iget-object v3, p0, Lcom/mobisage/android/MobiSageAdView;->actionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 384
    iget-object v3, p0, Lcom/mobisage/android/MobiSageAdView;->actionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobisage/android/MobiSageAction;

    .line 385
    .local v0, "action":Lcom/mobisage/android/MobiSageAction;
    invoke-static {}, Lcom/mobisage/android/MobiSageAdModule;->getInstance()Lcom/mobisage/android/MobiSageAdModule;

    move-result-object v3

    const/16 v4, 0x3ef

    invoke-virtual {v3, v4, v0}, Lcom/mobisage/android/MobiSageAdModule;->pushMobiSageAction(ILcom/mobisage/android/MobiSageAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 413
    .end local v0    # "action":Lcom/mobisage/android/MobiSageAction;
    :catch_0
    move-exception v1

    .line 414
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 416
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 388
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/mobisage/android/MobiSageAdView;->actionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 389
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mobisage/android/MobiSageAdView;->actionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 391
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mobisage/android/MobiSageAdView;->mListener:Lcom/mobisage/android/IMobiSageAdViewListener;

    .line 392
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mobisage/android/MobiSageAdView;->webClient:Lcom/mobisage/android/MobiSageAdWebClient;

    .line 393
    iget-object v3, p0, Lcom/mobisage/android/MobiSageAdView;->viewSwitcher:Landroid/widget/ViewSwitcher;

    if-eqz v3, :cond_3

    .line 394
    iget-object v3, p0, Lcom/mobisage/android/MobiSageAdView;->viewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->clearAnimation()V

    .line 395
    iget-object v3, p0, Lcom/mobisage/android/MobiSageAdView;->viewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    .line 397
    :cond_3
    iget-object v3, p0, Lcom/mobisage/android/MobiSageAdView;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    if-eqz v3, :cond_4

    .line 398
    iget-object v3, p0, Lcom/mobisage/android/MobiSageAdView;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    invoke-virtual {v3}, Lcom/mobisage/android/MobiSageAdWebView;->destroy()V

    .line 399
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mobisage/android/MobiSageAdView;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    .line 401
    :cond_4
    iget-object v3, p0, Lcom/mobisage/android/MobiSageAdView;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    if-eqz v3, :cond_5

    .line 402
    iget-object v3, p0, Lcom/mobisage/android/MobiSageAdView;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    invoke-virtual {v3}, Lcom/mobisage/android/MobiSageAdWebView;->destroy()V

    .line 403
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mobisage/android/MobiSageAdView;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    .line 405
    :cond_5
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdView;->removeAllViews()V

    .line 406
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 407
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 408
    .local v2, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 410
    .end local v2    # "viewGroup":Landroid/view/ViewGroup;
    :cond_6
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mobisage/android/MobiSageAdView;->viewSwitcher:Landroid/widget/ViewSwitcher;

    .line 411
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mobisage/android/MobiSageAdView;->context:Landroid/content/Context;

    .line 412
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected onLoadAdFinish()V
    .locals 4

    .prologue
    .line 743
    :try_start_0
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdView;->viewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getChildCount()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 760
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdView;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdView;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdView;->viewSwitcher:Landroid/widget/ViewSwitcher;

    if-eqz v1, :cond_0

    .line 762
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdView;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mobisage/android/MobiSageAdWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 763
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdView;->viewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdView;->viewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, p0, Lcom/mobisage/android/MobiSageAdView;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdView;->switchAdView()V

    .line 771
    return-void

    .line 745
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdView;->viewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdView;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    invoke-virtual {v1, v2}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 767
    :catch_0
    move-exception v0

    .line 768
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 750
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_2
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdView;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdView;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdView;->viewSwitcher:Landroid/widget/ViewSwitcher;

    if-eqz v1, :cond_0

    .line 752
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdView;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mobisage/android/MobiSageAdWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 753
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdView;->viewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdView;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    invoke-virtual {v1, v2}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;)V

    .line 754
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdView;->viewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdView;->viewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, p0, Lcom/mobisage/android/MobiSageAdView;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 743
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onRefreshTaskTrigger()V
    .locals 0

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdView;->requestADFromDE()Z

    .line 514
    return-void
.end method

.method protected replaceSDKParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdView;->getCustomData()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mobisage/android/MobiSageAppInfo;->publisherID:Ljava/lang/String;

    iget v0, p0, Lcom/mobisage/android/MobiSageAdView;->mDisplayType:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/mobisage/android/MobiSageAdView;->mSdkRequestTime:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iget-wide v6, p0, Lcom/mobisage/android/MobiSageAdView;->mImpressionTimeout:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iget-byte v0, p0, Lcom/mobisage/android/MobiSageAdView;->mScreenOrientation:B

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget-boolean v0, p0, Lcom/mobisage/android/MobiSageAdView;->mShowCloseBtn:Z

    if-eqz v0, :cond_0

    const-string v7, "0"

    :goto_0
    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/mobisage/android/MobiSageAdModuleHelper;->replaceSDKParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 523
    return-object p1

    .line 517
    :cond_0
    const-string v7, "1"

    goto :goto_0
.end method

.method protected requestADFinish(Lcom/mobisage/android/MobiSageAction;)V
    .locals 17
    .param p1, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    .line 528
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->result:Landroid/os/Bundle;

    const-string v3, "BannerHTML"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 529
    .local v4, "html":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobisage/android/MobiSageAdView;->fontSize:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mobisage/android/MobiSageAdView;->fontSize:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobisage/android/MobiSageAdView;->fontSize:Ljava/lang/String;

    const-string v3, ""

    if-eq v2, v3, :cond_0

    .line 530
    const-string v14, "\"size\": \"{#fontsize#}\""

    .line 531
    .local v14, "fontSizeOld":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"size\": \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mobisage/android/MobiSageAdView;->fontSize:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 532
    .local v13, "fontSizeNew":Ljava/lang/String;
    invoke-static {v4, v14, v13}, Lcom/mobisage/android/MobiSageAdView;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 534
    .end local v13    # "fontSizeNew":Ljava/lang/String;
    .end local v14    # "fontSizeOld":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobisage/android/MobiSageAdView;->fontColor:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mobisage/android/MobiSageAdView;->fontColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobisage/android/MobiSageAdView;->fontColor:Ljava/lang/String;

    const-string v3, ""

    if-eq v2, v3, :cond_1

    .line 535
    const-string v12, "\"color\": \"{#fontcolor#}\""

    .line 536
    .local v12, "fontColorOld":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"color\": \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mobisage/android/MobiSageAdView;->fontColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 537
    .local v11, "fontColorNew":Ljava/lang/String;
    invoke-static {v4, v12, v11}, Lcom/mobisage/android/MobiSageAdView;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 539
    .end local v11    # "fontColorNew":Ljava/lang/String;
    .end local v12    # "fontColorOld":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobisage/android/MobiSageAdView;->backgroundColor:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mobisage/android/MobiSageAdView;->backgroundColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobisage/android/MobiSageAdView;->backgroundColor:Ljava/lang/String;

    const-string v3, ""

    if-eq v2, v3, :cond_2

    .line 541
    const-string v9, "\"backgroundcolor\": \"{#backgroundcolor#}\""

    .line 542
    .local v9, "bcColorOld":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"backgroundcolor\": \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mobisage/android/MobiSageAdView;->backgroundColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 544
    .local v8, "bcColorNew":Ljava/lang/String;
    invoke-static {v4, v9, v8}, Lcom/mobisage/android/MobiSageAdView;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 548
    .end local v8    # "bcColorNew":Ljava/lang/String;
    .end local v9    # "bcColorOld":Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/mobisage/android/MobiSageAdView;->mRequestStartTime:J

    sub-long/2addr v2, v6

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/mobisage/android/MobiSageAdView;->mSdkRequestTime:J

    .line 549
    const-wide/16 v2, 0x6

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/mobisage/android/MobiSageAdView;->mImpressionTimeout:J

    .line 550
    invoke-static {}, Lcom/mobisage/android/MobiSageConfigureModule;->getInstance()Lcom/mobisage/android/MobiSageConfigureModule;

    move-result-object v2

    const-string/jumbo v3, "splash"

    invoke-virtual {v2, v3}, Lcom/mobisage/android/MobiSageConfigureModule;->getConfigureData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/json/JSONObject;

    .line 552
    .local v16, "splash":Lorg/json/JSONObject;
    if-eqz v16, :cond_3

    const-string v2, "impressiontimeout"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 553
    const-string v2, "impressiontimeout"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/mobisage/android/MobiSageAdView;->mImpressionTimeout:J

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/mobisage/android/MobiSageAdView;->mImpressionTimeout:J

    .line 556
    :cond_3
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/mobisage/android/MobiSageAdView;->mImpressionTimeout:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/mobisage/android/MobiSageAdView;->mImpressionTimeout:J

    .line 557
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mobisage/android/MobiSageAdView;->replaceSDKParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobisage/android/MobiSageAdView;->actionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 563
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobisage/android/MobiSageAdView;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    if-nez v2, :cond_5

    .line 565
    new-instance v2, Lcom/mobisage/android/MobiSageAdWebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mobisage/android/MobiSageAdView;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mobisage/android/MobiSageAdView;->mListener:Lcom/mobisage/android/IMobiSageAdViewListener;

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v0, v5}, Lcom/mobisage/android/MobiSageAdWebView;-><init>(Landroid/content/Context;Lcom/mobisage/android/MobiSageAdView;Lcom/mobisage/android/IMobiSageAdViewListener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobisage/android/MobiSageAdView;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobisage/android/MobiSageAdView;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    invoke-virtual {v2}, Lcom/mobisage/android/MobiSageAdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobisage/android/MobiSageAdView;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mobisage/android/MobiSageAdWebView;->setBackgroundColor(I)V

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobisage/android/MobiSageAdView;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    sget-object v3, Lcom/mobisage/android/MobiSageAppInfo;->publisherID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mobisage/android/MobiSageAdWebView;->setPublisherID(Ljava/lang/String;)V

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobisage/android/MobiSageAdView;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mobisage/android/MobiSageAdView;->mCustomData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mobisage/android/MobiSageAdWebView;->setCustomData(Ljava/lang/String;)V

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobisage/android/MobiSageAdView;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    const-string v3, ""

    const-string/jumbo v5, "text/html"

    const-string v6, "UTF-8"

    const-string v7, ""

    invoke-virtual/range {v2 .. v7}, Lcom/mobisage/android/MobiSageAdWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobisage/android/MobiSageAdView;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mobisage/android/MobiSageAdView;->webClient:Lcom/mobisage/android/MobiSageAdWebClient;

    invoke-virtual {v2, v3}, Lcom/mobisage/android/MobiSageAdWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->result:Landroid/os/Bundle;

    const-string v3, "LpgCache"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 595
    new-instance v15, Lcom/mobisage/android/MobiSageAction;

    invoke-direct {v15}, Lcom/mobisage/android/MobiSageAction;-><init>()V

    .line 596
    .local v15, "lpgAction":Lcom/mobisage/android/MobiSageAction;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobisage/android/MobiSageAdView;->lpgActionCallback:Lcom/mobisage/android/MobiSageAdView$ADViewLPGActionCallback;

    iput-object v2, v15, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    .line 597
    iget-object v2, v15, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v3, "LpgCache"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/mobisage/android/MobiSageAction;->result:Landroid/os/Bundle;

    const-string v6, "LpgCache"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobisage/android/MobiSageAdView;->actionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v15}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 602
    invoke-static {}, Lcom/mobisage/android/MobiSageAdModule;->getInstance()Lcom/mobisage/android/MobiSageAdModule;

    move-result-object v2

    const/16 v3, 0x3ee

    invoke-virtual {v2, v3, v15}, Lcom/mobisage/android/MobiSageAdModule;->pushMobiSageAction(ILcom/mobisage/android/MobiSageAction;)V

    .line 605
    .end local v15    # "lpgAction":Lcom/mobisage/android/MobiSageAction;
    :cond_4
    return-void

    .line 574
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobisage/android/MobiSageAdView;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    if-nez v2, :cond_6

    .line 576
    new-instance v2, Lcom/mobisage/android/MobiSageAdWebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mobisage/android/MobiSageAdView;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mobisage/android/MobiSageAdView;->mListener:Lcom/mobisage/android/IMobiSageAdViewListener;

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v0, v5}, Lcom/mobisage/android/MobiSageAdWebView;-><init>(Landroid/content/Context;Lcom/mobisage/android/MobiSageAdView;Lcom/mobisage/android/IMobiSageAdViewListener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mobisage/android/MobiSageAdView;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobisage/android/MobiSageAdView;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mobisage/android/MobiSageAdWebView;->setBackgroundColor(I)V

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobisage/android/MobiSageAdView;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    sget-object v3, Lcom/mobisage/android/MobiSageAppInfo;->publisherID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mobisage/android/MobiSageAdWebView;->setPublisherID(Ljava/lang/String;)V

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobisage/android/MobiSageAdView;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    invoke-virtual {v2}, Lcom/mobisage/android/MobiSageAdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 582
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobisage/android/MobiSageAdView;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mobisage/android/MobiSageAdView;->mCustomData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mobisage/android/MobiSageAdWebView;->setCustomData(Ljava/lang/String;)V

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobisage/android/MobiSageAdView;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mobisage/android/MobiSageAdView;->webClient:Lcom/mobisage/android/MobiSageAdWebClient;

    invoke-virtual {v2, v3}, Lcom/mobisage/android/MobiSageAdWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobisage/android/MobiSageAdView;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    const-string v3, ""

    const-string/jumbo v5, "text/html"

    const-string v6, "UTF-8"

    const-string v7, ""

    invoke-virtual/range {v2 .. v7}, Lcom/mobisage/android/MobiSageAdWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 590
    :catch_0
    move-exception v10

    .line 591
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method protected requestADFromDE()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 357
    iget v2, p0, Lcom/mobisage/android/MobiSageAdView;->adViewState:I

    if-eq v2, v0, :cond_0

    iget v2, p0, Lcom/mobisage/android/MobiSageAdView;->adViewState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 371
    :goto_0
    :pswitch_0
    return v0

    .line 360
    :cond_1
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageAdView;->cancelOldAction()V

    .line 361
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageAdView;->checkAdViewValid()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 371
    goto :goto_0

    .line 365
    :pswitch_1
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdView;->sendADRequest()V

    goto :goto_0

    .line 368
    :pswitch_2
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdView;->onDestroy()V

    move v0, v1

    .line 369
    goto :goto_0

    .line 361
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public runJavascript(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-static {p1}, Lcom/mobisage/android/MobiSageURIUtility;->parserURIQuery(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 180
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 181
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v0, Landroid/os/Message;->what:I

    .line 182
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 183
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdView;->sendHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 185
    return-void
.end method

.method protected sendADRequest()V
    .locals 6

    .prologue
    .line 317
    iget-boolean v1, p0, Lcom/mobisage/android/MobiSageAdView;->configError:Z

    if-eqz v1, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    invoke-static {}, Lcom/mobisage/android/MobiSageConfigureModule;->getInstance()Lcom/mobisage/android/MobiSageConfigureModule;

    move-result-object v1

    const-string v2, "adswitch"

    invoke-virtual {v1, v2}, Lcom/mobisage/android/MobiSageConfigureModule;->getConfigureData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 323
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdView;->mListener:Lcom/mobisage/android/IMobiSageAdViewListener;

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdView;->mListener:Lcom/mobisage/android/IMobiSageAdViewListener;

    invoke-interface {v1, p0}, Lcom/mobisage/android/IMobiSageAdViewListener;->onMobiSageAdViewHide(Lcom/mobisage/android/MobiSageAdView;)V

    goto :goto_0

    .line 328
    :cond_2
    const/4 v1, 0x1

    iput v1, p0, Lcom/mobisage/android/MobiSageAdView;->adViewState:I

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mobisage/android/MobiSageAdView;->mRequestStartTime:J

    .line 331
    new-instance v0, Lcom/mobisage/android/MobiSageAction;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageAction;-><init>()V

    .line 332
    .local v0, "action":Lcom/mobisage/android/MobiSageAction;
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdView;->actionCallback:Lcom/mobisage/android/MobiSageAdView$ADViewActionCallback;

    iput-object v1, v0, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    .line 333
    iget-object v1, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v2, "AdWidth"

    iget v3, p0, Lcom/mobisage/android/MobiSageAdView;->mAdWidth:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 334
    iget-object v1, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v2, "AdHeight"

    iget v3, p0, Lcom/mobisage/android/MobiSageAdView;->mAdHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 335
    iget-object v1, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v2, "PublisherID"

    sget-object v3, Lcom/mobisage/android/MobiSageAppInfo;->publisherID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v1, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v2, "AffiliateId"

    iget v3, p0, Lcom/mobisage/android/MobiSageAdView;->mAffiliateId:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 339
    iget-object v1, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v2, "AffiliateSourceType"

    iget v3, p0, Lcom/mobisage/android/MobiSageAdView;->mAffiliateSourceType:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 340
    iget-object v1, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v2, "ScreenOrientation"

    iget-byte v3, p0, Lcom/mobisage/android/MobiSageAdView;->mScreenOrientation:B

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 341
    iget-object v1, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v2, "ScreenDensity"

    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v1, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v2, "DisplayType"

    iget v3, p0, Lcom/mobisage/android/MobiSageAdView;->mDisplayType:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 344
    iget-object v1, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v2, "ContentType"

    iget-wide v4, p0, Lcom/mobisage/android/MobiSageAdView;->mContentType:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 345
    iget-object v1, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v2, "ActionType"

    iget v3, p0, Lcom/mobisage/android/MobiSageAdView;->mActionType:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 346
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v3, "Keyword"

    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdView;->mKeyword:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, ""

    :goto_1
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v1, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v2, "NetworkState"

    iget-object v3, p0, Lcom/mobisage/android/MobiSageAdView;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/mobisage/android/MobiSageDeviceInfo;->getNetWorkState(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 351
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdView;->actionQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-static {}, Lcom/mobisage/android/MobiSageAdModule;->getInstance()Lcom/mobisage/android/MobiSageAdModule;

    move-result-object v1

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2, v0}, Lcom/mobisage/android/MobiSageAdModule;->pushMobiSageAction(ILcom/mobisage/android/MobiSageAction;)V

    goto/16 :goto_0

    .line 346
    :cond_3
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdView;->mKeyword:Ljava/lang/String;

    goto :goto_1
.end method

.method public setCustomData(Ljava/lang/String;)V
    .locals 0
    .param p1, "customData"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdView;->mCustomData:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdView;->mKeyword:Ljava/lang/String;

    .line 154
    return-void
.end method

.method setMobiSageAdViewListener(Lcom/mobisage/android/IMobiSageAdViewListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mobisage/android/IMobiSageAdViewListener;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdView;->mListener:Lcom/mobisage/android/IMobiSageAdViewListener;

    .line 145
    return-void
.end method

.method public setWindowColor(Ljava/lang/String;)V
    .locals 3
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobisage/android/MobiSageAdView;->mWindowColor:Ljava/lang/String;

    .line 123
    const/4 v0, 0x0

    .line 125
    .local v0, "bgColor":I
    :try_start_0
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdView;->mWindowColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 128
    :goto_0
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 129
    return-void

    .line 126
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected switchAdView()V
    .locals 3

    .prologue
    .line 774
    const/4 v1, 0x0

    iput v1, p0, Lcom/mobisage/android/MobiSageAdView;->adViewState:I

    .line 776
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdView;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    if-eqz v1, :cond_0

    .line 777
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdView;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    .line 778
    .local v0, "temp":Lcom/mobisage/android/MobiSageAdWebView;
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdView;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    iput-object v1, p0, Lcom/mobisage/android/MobiSageAdView;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    .line 779
    iput-object v0, p0, Lcom/mobisage/android/MobiSageAdView;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    .line 780
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdView;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mobisage/android/MobiSageAdWebView;->clearCache(Z)V

    .line 781
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdView;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    invoke-virtual {v1}, Lcom/mobisage/android/MobiSageAdWebView;->destroyDrawingCache()V

    .line 782
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdView;->backWebView:Lcom/mobisage/android/MobiSageAdWebView;

    invoke-virtual {v1}, Lcom/mobisage/android/MobiSageAdWebView;->clearView()V

    .line 784
    .end local v0    # "temp":Lcom/mobisage/android/MobiSageAdWebView;
    :cond_0
    return-void
.end method
