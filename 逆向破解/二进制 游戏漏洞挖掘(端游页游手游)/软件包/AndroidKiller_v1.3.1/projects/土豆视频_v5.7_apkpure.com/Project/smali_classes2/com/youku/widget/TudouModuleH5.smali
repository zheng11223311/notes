.class public Lcom/youku/widget/TudouModuleH5;
.super Lcom/tudou/adapter/IndexItemType;
.source "TudouModuleH5.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/widget/TudouModuleH5$3;,
        Lcom/youku/widget/TudouModuleH5$LoadListener;,
        Lcom/youku/widget/TudouModuleH5$MyWebChromeClient;,
        Lcom/youku/widget/TudouModuleH5$MyWebViewClient;,
        Lcom/youku/widget/TudouModuleH5$LoadingState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TudouModuleWebView"


# instance fields
.field private final DEFAULT_HEIGHT:I

.field private final DEFAULT_WIDTH:I

.field private isHeight:Z

.field private isNeedMargin:Z

.field private isOpen:Z

.field private isUpLoad:Z

.field private mAnimation:Landroid/view/animation/RotateAnimation;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLoadFailedView:Landroid/view/View;

.field private mLoadListener:Lcom/youku/widget/TudouModuleH5$LoadListener;

.field private mLoadingImageView:Landroid/widget/ImageView;

.field private mLoadingVIew:Landroid/view/View;

.field private mRootView:Landroid/view/View;

.field private mUrl:Ljava/lang/String;

.field private mView:Landroid/view/View;

.field private mWebSettings:Landroid/webkit/WebSettings;

.field private mWebView:Landroid/webkit/WebView;

.field private page:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/youku/widget/TudouModuleH5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/tudou/adapter/IndexItemType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput-boolean v1, p0, Lcom/youku/widget/TudouModuleH5;->isHeight:Z

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/widget/TudouModuleH5;->isOpen:Z

    .line 66
    const/16 v0, 0x3fc

    iput v0, p0, Lcom/youku/widget/TudouModuleH5;->DEFAULT_WIDTH:I

    .line 67
    const/16 v0, 0x168

    iput v0, p0, Lcom/youku/widget/TudouModuleH5;->DEFAULT_HEIGHT:I

    .line 70
    iput-boolean v1, p0, Lcom/youku/widget/TudouModuleH5;->isNeedMargin:Z

    .line 72
    iput-boolean v1, p0, Lcom/youku/widget/TudouModuleH5;->isUpLoad:Z

    .line 89
    iput-object p1, p0, Lcom/youku/widget/TudouModuleH5;->mContext:Landroid/content/Context;

    .line 90
    invoke-direct {p0}, Lcom/youku/widget/TudouModuleH5;->initView()V

    .line 91
    invoke-direct {p0}, Lcom/youku/widget/TudouModuleH5;->initEvent()V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isNeedMargin"    # Z

    .prologue
    const/4 v1, 0x0

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tudou/adapter/IndexItemType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput-boolean v1, p0, Lcom/youku/widget/TudouModuleH5;->isHeight:Z

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/widget/TudouModuleH5;->isOpen:Z

    .line 66
    const/16 v0, 0x3fc

    iput v0, p0, Lcom/youku/widget/TudouModuleH5;->DEFAULT_WIDTH:I

    .line 67
    const/16 v0, 0x168

    iput v0, p0, Lcom/youku/widget/TudouModuleH5;->DEFAULT_HEIGHT:I

    .line 70
    iput-boolean v1, p0, Lcom/youku/widget/TudouModuleH5;->isNeedMargin:Z

    .line 72
    iput-boolean v1, p0, Lcom/youku/widget/TudouModuleH5;->isUpLoad:Z

    .line 76
    iput-boolean p2, p0, Lcom/youku/widget/TudouModuleH5;->isNeedMargin:Z

    .line 77
    iput-object p1, p0, Lcom/youku/widget/TudouModuleH5;->mContext:Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Lcom/youku/widget/TudouModuleH5;->initView()V

    .line 79
    invoke-direct {p0}, Lcom/youku/widget/TudouModuleH5;->initEvent()V

    .line 81
    return-void
.end method

.method private LoadingState(Lcom/youku/widget/TudouModuleH5$LoadingState;)V
    .locals 4
    .param p1, "loadingState"    # Lcom/youku/widget/TudouModuleH5$LoadingState;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 268
    sget-object v0, Lcom/youku/widget/TudouModuleH5$3;->$SwitchMap$com$youku$widget$TudouModuleH5$LoadingState:[I

    invoke-virtual {p1}, Lcom/youku/widget/TudouModuleH5$LoadingState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 285
    :goto_0
    return-void

    .line 270
    :pswitch_0
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mLoadingVIew:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mLoadingImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/youku/widget/TudouModuleH5;->mAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 272
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mLoadFailedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 275
    :pswitch_1
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mLoadingVIew:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_0

    .line 279
    :pswitch_2
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mLoadFailedView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 281
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mLoadingVIew:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/youku/widget/TudouModuleH5;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/TudouModuleH5;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/widget/TudouModuleH5;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/TudouModuleH5;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/widget/TudouModuleH5;Lcom/youku/widget/TudouModuleH5$LoadingState;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/widget/TudouModuleH5;
    .param p1, "x1"    # Lcom/youku/widget/TudouModuleH5$LoadingState;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/youku/widget/TudouModuleH5;->LoadingState(Lcom/youku/widget/TudouModuleH5$LoadingState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/youku/widget/TudouModuleH5;)Lcom/youku/widget/TudouModuleH5$LoadListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/TudouModuleH5;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mLoadListener:Lcom/youku/widget/TudouModuleH5$LoadListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/widget/TudouModuleH5;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/TudouModuleH5;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/widget/TudouModuleH5;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/TudouModuleH5;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5;->page:Ljava/lang/String;

    return-object v0
.end method

.method private initAnimation()V
    .locals 7

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 202
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x44340000    # 720.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mAnimation:Landroid/view/animation/RotateAnimation;

    .line 203
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 204
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 205
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mAnimation:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 206
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 207
    return-void
.end method

.method private initEvent()V
    .locals 3

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/youku/widget/TudouModuleH5;->initWebViewEvent()V

    .line 112
    invoke-direct {p0}, Lcom/youku/widget/TudouModuleH5;->initAnimation()V

    .line 113
    iget-object v1, p0, Lcom/youku/widget/TudouModuleH5;->mLoadingImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/youku/widget/TudouModuleH5;->mAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 114
    iget-object v1, p0, Lcom/youku/widget/TudouModuleH5;->mLoadFailedView:Landroid/view/View;

    new-instance v2, Lcom/youku/widget/TudouModuleH5$1;

    invoke-direct {v2, p0}, Lcom/youku/widget/TudouModuleH5$1;-><init>(Lcom/youku/widget/TudouModuleH5;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/youku/widget/TudouModuleH5;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "activityName":Ljava/lang/String;
    const-class v1, Lcom/tudou/ui/activity/HomePageActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    const-string v1, "\u9996\u9875"

    iput-object v1, p0, Lcom/youku/widget/TudouModuleH5;->page:Ljava/lang/String;

    .line 138
    .end local v0    # "activityName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 133
    .restart local v0    # "activityName":Ljava/lang/String;
    :cond_1
    const-class v1, Lcom/tudou/ui/activity/ClassifyFeatureActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    const-string v1, "\u5206\u7c7b\u9875"

    iput-object v1, p0, Lcom/youku/widget/TudouModuleH5;->page:Ljava/lang/String;

    goto :goto_0

    .line 137
    .end local v0    # "activityName":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 135
    .restart local v0    # "activityName":Ljava/lang/String;
    :cond_2
    const-class v1, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const-string v1, "\u8be6\u60c5\u9875"

    iput-object v1, p0, Lcom/youku/widget/TudouModuleH5;->page:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 95
    invoke-virtual {p0}, Lcom/youku/widget/TudouModuleH5;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mInflater:Landroid/view/LayoutInflater;

    .line 96
    iget-boolean v0, p0, Lcom/youku/widget/TudouModuleH5;->isNeedMargin:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030242

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mView:Landroid/view/View;

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mView:Landroid/view/View;

    const v1, 0x7f0c02b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mRootView:Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mView:Landroid/view/View;

    const v1, 0x7f0c023e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mWebView:Landroid/webkit/WebView;

    .line 104
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mView:Landroid/view/View;

    const v1, 0x7f0c0ae7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mLoadingVIew:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mView:Landroid/view/View;

    const v1, 0x7f0c0ae8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mLoadingImageView:Landroid/widget/ImageView;

    .line 107
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mView:Landroid/view/View;

    const v1, 0x7f0c0ae9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mLoadFailedView:Landroid/view/View;

    .line 108
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030241

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mView:Landroid/view/View;

    goto :goto_0
.end method

.method private initWebViewEvent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 142
    iget-object v1, p0, Lcom/youku/widget/TudouModuleH5;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/youku/widget/TudouModuleH5$MyWebViewClient;

    invoke-direct {v2, p0}, Lcom/youku/widget/TudouModuleH5$MyWebViewClient;-><init>(Lcom/youku/widget/TudouModuleH5;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 143
    iget-object v1, p0, Lcom/youku/widget/TudouModuleH5;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/youku/widget/TudouModuleH5$MyWebChromeClient;

    invoke-direct {v2, p0}, Lcom/youku/widget/TudouModuleH5$MyWebChromeClient;-><init>(Lcom/youku/widget/TudouModuleH5;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 146
    iget-object v1, p0, Lcom/youku/widget/TudouModuleH5;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 148
    iget-object v1, p0, Lcom/youku/widget/TudouModuleH5;->mWebView:Landroid/webkit/WebView;

    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 150
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_0

    .line 151
    iget-object v1, p0, Lcom/youku/widget/TudouModuleH5;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/youku/widget/TudouModuleH5;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/widget/TudouModuleH5;->mWebSettings:Landroid/webkit/WebSettings;

    .line 157
    iget-object v1, p0, Lcom/youku/widget/TudouModuleH5;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 158
    iget-object v1, p0, Lcom/youku/widget/TudouModuleH5;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 159
    iget-object v1, p0, Lcom/youku/widget/TudouModuleH5;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 161
    iget-object v1, p0, Lcom/youku/widget/TudouModuleH5;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 162
    iget-object v1, p0, Lcom/youku/widget/TudouModuleH5;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 163
    iget-object v1, p0, Lcom/youku/widget/TudouModuleH5;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 166
    iget-object v1, p0, Lcom/youku/widget/TudouModuleH5;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 169
    iget-object v1, p0, Lcom/youku/widget/TudouModuleH5;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 171
    new-instance v0, Lcom/tudou/webview/WebViewJsObj;

    iget-object v1, p0, Lcom/youku/widget/TudouModuleH5;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/youku/widget/TudouModuleH5$2;

    invoke-direct {v2, p0}, Lcom/youku/widget/TudouModuleH5$2;-><init>(Lcom/youku/widget/TudouModuleH5;)V

    invoke-direct {v0, v1, v2}, Lcom/tudou/webview/WebViewJsObj;-><init>(Landroid/app/Activity;Lcom/tudou/webview/WebViewJsObj$DoSomethingListener;)V

    .line 183
    .local v0, "jsObj":Lcom/tudou/webview/WebViewJsObj;
    iget-object v1, p0, Lcom/youku/widget/TudouModuleH5;->mWebView:Landroid/webkit/WebView;

    const-string v2, "WebViewJsObj"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/youku/widget/TudouModuleH5;->mWebView:Landroid/webkit/WebView;

    const-string v2, "YoukuJSBridge"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/youku/widget/TudouModuleH5;->mWebSettings:Landroid/webkit/WebSettings;

    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 187
    iget-object v1, p0, Lcom/youku/widget/TudouModuleH5;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 190
    iget-object v1, p0, Lcom/youku/widget/TudouModuleH5;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 191
    iget-object v1, p0, Lcom/youku/widget/TudouModuleH5;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 192
    iget-object v1, p0, Lcom/youku/widget/TudouModuleH5;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 193
    iget-object v1, p0, Lcom/youku/widget/TudouModuleH5;->mWebSettings:Landroid/webkit/WebSettings;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 194
    iget-object v1, p0, Lcom/youku/widget/TudouModuleH5;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 196
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x10

    if-le v1, v2, :cond_1

    .line 197
    iget-object v1, p0, Lcom/youku/widget/TudouModuleH5;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 199
    :cond_1
    return-void
.end method


# virtual methods
.method public goBack()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mWebView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 378
    :cond_0
    return-void
.end method

.method public homeAdReset()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5;->mWebView:Landroid/webkit/WebView;

    const-string v1, "javascript:MAL.ad.reset();"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 372
    :cond_0
    const-string v0, "AD"

    const-string v1, "AD reset"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public setData(Lcom/youku/vo/SkipInfo;)V
    .locals 13
    .param p1, "skipInfo"    # Lcom/youku/vo/SkipInfo;

    .prologue
    .line 212
    iget-boolean v10, p0, Lcom/youku/widget/TudouModuleH5;->isOpen:Z

    if-eqz v10, :cond_0

    if-eqz p1, :cond_0

    iget-object v10, p1, Lcom/youku/vo/SkipInfo;->skip_url:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 213
    :cond_0
    iget-object v10, p0, Lcom/youku/widget/TudouModuleH5;->mRootView:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 259
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-object v10, p1, Lcom/youku/vo/SkipInfo;->skip_url:Ljava/lang/String;

    iput-object v10, p0, Lcom/youku/widget/TudouModuleH5;->mUrl:Ljava/lang/String;

    .line 220
    iget-object v10, p1, Lcom/youku/vo/SkipInfo;->the_width:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v1, 0x3fc

    .line 221
    .local v1, "cmsWidth":I
    :goto_1
    iget-object v10, p1, Lcom/youku/vo/SkipInfo;->the_height:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v0, 0x168

    .line 223
    .local v0, "cmsHeight":I
    :goto_2
    iget-boolean v10, p0, Lcom/youku/widget/TudouModuleH5;->isHeight:Z

    if-nez v10, :cond_3

    .line 226
    sget v9, Lcom/youku/vo/DeviceInfo;->WIDTH:I

    .line 227
    .local v9, "windoWidth":I
    const-string v10, "TudouModuleWebView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DeviceInfo.WIDTH = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/youku/vo/DeviceInfo;->WIDTH:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v10, "TudouModuleWebView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DeviceInfo.HEIGHT = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/youku/vo/DeviceInfo;->HEIGHT:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v10, p0, Lcom/youku/widget/TudouModuleH5;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getLeft()I

    move-result v3

    .line 232
    .local v3, "leftMar":I
    iget-object v10, p0, Lcom/youku/widget/TudouModuleH5;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getRight()I

    move-result v5

    .line 233
    .local v5, "rightMar":I
    add-int v4, v3, v5

    .line 236
    .local v4, "marWidth":I
    sub-int v8, v9, v4

    .line 239
    .local v8, "webViewWidth":I
    mul-int v10, v8, v0

    div-int v6, v10, v1

    .line 242
    .local v6, "viewHeight":I
    mul-int/lit16 v10, v8, 0x168

    div-int/lit16 v2, v10, 0x3fc

    .line 246
    .local v2, "defMinHeight":I
    if-ge v6, v2, :cond_2

    .line 247
    move v6, v2

    .line 250
    :cond_2
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v7, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 251
    .local v7, "viewParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v10, p0, Lcom/youku/widget/TudouModuleH5;->mRootView:Landroid/view/View;

    invoke-virtual {v10, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/youku/widget/TudouModuleH5;->isHeight:Z

    .line 257
    .end local v2    # "defMinHeight":I
    .end local v3    # "leftMar":I
    .end local v4    # "marWidth":I
    .end local v5    # "rightMar":I
    .end local v6    # "viewHeight":I
    .end local v7    # "viewParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "webViewWidth":I
    .end local v9    # "windoWidth":I
    :cond_3
    iget-object v10, p0, Lcom/youku/widget/TudouModuleH5;->mWebView:Landroid/webkit/WebView;

    iget-object v11, p0, Lcom/youku/widget/TudouModuleH5;->mUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 258
    sget-object v10, Lcom/youku/widget/TudouModuleH5$LoadingState;->LOADING_START:Lcom/youku/widget/TudouModuleH5$LoadingState;

    invoke-direct {p0, v10}, Lcom/youku/widget/TudouModuleH5;->LoadingState(Lcom/youku/widget/TudouModuleH5$LoadingState;)V

    goto/16 :goto_0

    .line 220
    .end local v0    # "cmsHeight":I
    .end local v1    # "cmsWidth":I
    :cond_4
    iget-object v10, p1, Lcom/youku/vo/SkipInfo;->the_width:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto/16 :goto_1

    .line 221
    .restart local v1    # "cmsWidth":I
    :cond_5
    iget-object v10, p1, Lcom/youku/vo/SkipInfo;->the_height:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_2
.end method

.method public setLoadListener(Lcom/youku/widget/TudouModuleH5$LoadListener;)V
    .locals 0
    .param p1, "loadListener"    # Lcom/youku/widget/TudouModuleH5$LoadListener;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/youku/widget/TudouModuleH5;->mLoadListener:Lcom/youku/widget/TudouModuleH5$LoadListener;

    .line 360
    return-void
.end method
