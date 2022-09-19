.class public Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;
.super Ljava/lang/Object;
.source "FullScreenHLSLoading.java"


# static fields
.field public static final HIDE_LOADING:I = 0x458

.field public static final SHOW_LOADING:I = 0x457


# instance fields
.field containerView:Landroid/view/View;

.field private playLoadingBar:Lcom/youku/widget/Loading;

.field private playNameTextView:Landroid/widget/TextView;

.field pluginFullScreenPlay:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

.field seekBackground:Landroid/view/View;

.field private seekHandler:Landroid/os/Handler;

.field seekLoadingContainerView:Landroid/view/View;

.field private seekcount:I

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)V
    .locals 1
    .param p1, "containerView"    # Landroid/view/View;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "pluginFullScreenPlay"    # Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->seekcount:I

    .line 123
    new-instance v0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1;

    invoke-direct {v0, p0}, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading$1;-><init>(Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;)V

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->seekHandler:Landroid/os/Handler;

    .line 39
    iput-object p1, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->containerView:Landroid/view/View;

    .line 40
    iput-object p2, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->text:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->pluginFullScreenPlay:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->seekHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;

    .prologue
    .line 25
    iget v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->seekcount:I

    return v0
.end method

.method static synthetic access$102(Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->seekcount:I

    return p1
.end method

.method static synthetic access$112(Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;I)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iget v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->seekcount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->seekcount:I

    return v0
.end method


# virtual methods
.method public hideLoading()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->seekLoadingContainerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    return-void
.end method

.method initSeekLoading()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->containerView:Landroid/view/View;

    const v1, 0x7f0c042b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->playNameTextView:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->containerView:Landroid/view/View;

    const v1, 0x7f0c042a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/Loading;

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->playLoadingBar:Lcom/youku/widget/Loading;

    .line 50
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->playLoadingBar:Lcom/youku/widget/Loading;

    const v1, 0x7f02066f

    invoke-virtual {v0, v1}, Lcom/youku/widget/Loading;->setBackgroundResource(I)V

    .line 51
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->containerView:Landroid/view/View;

    const v1, 0x7f0c0429

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->seekLoadingContainerView:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->seekLoadingContainerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->playNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->playNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->playNameTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->playNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showLoading()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->seekLoadingContainerView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->seekLoadingContainerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 94
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->seekLoadingContainerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iput v1, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->seekcount:I

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->pluginFullScreenPlay:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    iget-boolean v0, v0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->firstLoaded:Z

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->playNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->seekHandler:Landroid/os/Handler;

    const/16 v1, 0x457

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 114
    :cond_1
    return-void

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->playNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->playNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->playNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
