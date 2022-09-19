.class public Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;
.super Ljava/lang/Object;
.source "FullScreenLoading.java"


# static fields
.field public static final HIDE_LOADING:I = 0x458

.field public static final SHOW_LOADING:I = 0x457


# instance fields
.field containerView:Landroid/view/View;

.field private playLoadingBar:Lcom/youku/widget/Loading;

.field private playNameTextView:Landroid/widget/TextView;

.field pluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

.field rootview:Landroid/view/View;

.field seekBackground:Landroid/view/View;

.field private seekHandler:Landroid/os/Handler;

.field seekLoadingContainerView:Landroid/view/View;

.field private seekcount:I

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;)V
    .locals 1
    .param p1, "containerView"    # Landroid/view/View;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "pluginFullScreenPlay"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->seekcount:I

    .line 100
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->seekHandler:Landroid/os/Handler;

    .line 39
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->containerView:Landroid/view/View;

    .line 40
    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->text:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->pluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->seekHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    .prologue
    .line 23
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->seekcount:I

    return v0
.end method

.method static synthetic access$102(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->seekcount:I

    return p1
.end method

.method static synthetic access$112(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;I)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->seekcount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->seekcount:I

    return v0
.end method


# virtual methods
.method public hideLoading()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 93
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->rootview:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->seekLoadingContainerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    return-void
.end method

.method initSeekLoading()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->containerView:Landroid/view/View;

    const v1, 0x7f0c0694

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->rootview:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->containerView:Landroid/view/View;

    const v1, 0x7f0c042b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->playNameTextView:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->containerView:Landroid/view/View;

    const v1, 0x7f0c042a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/Loading;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->playLoadingBar:Lcom/youku/widget/Loading;

    .line 48
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->playLoadingBar:Lcom/youku/widget/Loading;

    const v1, 0x7f02066f

    invoke-virtual {v0, v1}, Lcom/youku/widget/Loading;->setBackgroundResource(I)V

    .line 49
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->containerView:Landroid/view/View;

    const v1, 0x7f0c0429

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->seekLoadingContainerView:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->seekLoadingContainerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->playNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->playNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->playNameTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->playNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showLoading()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 65
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->rootview:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->seekLoadingContainerView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->seekLoadingContainerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 68
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->seekLoadingContainerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    iput v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->seekcount:I

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->pluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-boolean v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->firstLoaded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->pluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-boolean v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->changeVideoQuality:Z

    if-eqz v0, :cond_3

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->playNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    :cond_2
    :goto_0
    return-void

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->playNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->playNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 86
    :cond_4
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->playNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
