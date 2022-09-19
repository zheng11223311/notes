.class public Lcom/tudou/detail/widget/VideoSpecialTopicBar;
.super Landroid/widget/FrameLayout;
.source "VideoSpecialTopicBar.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContent:Landroid/widget/ImageView;

.field private mInteractive:Lcom/tudou/detail/vo/Interactive;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/tudou/detail/widget/VideoSpecialTopicBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/widget/VideoSpecialTopicBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/detail/widget/VideoSpecialTopicBar;)Lcom/tudou/detail/vo/Interactive;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoSpecialTopicBar;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSpecialTopicBar;->mInteractive:Lcom/tudou/detail/vo/Interactive;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/detail/widget/VideoSpecialTopicBar;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoSpecialTopicBar;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSpecialTopicBar;->mContent:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 35
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 36
    const v0, 0x7f0c0358

    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/VideoSpecialTopicBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoSpecialTopicBar;->mTitle:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f0c0359

    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/VideoSpecialTopicBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoSpecialTopicBar;->mContent:Landroid/widget/ImageView;

    .line 38
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSpecialTopicBar;->mContent:Landroid/widget/ImageView;

    new-instance v1, Lcom/tudou/detail/widget/VideoSpecialTopicBar$1;

    invoke-direct {v1, p0}, Lcom/tudou/detail/widget/VideoSpecialTopicBar$1;-><init>(Lcom/tudou/detail/widget/VideoSpecialTopicBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method

.method public setInteractive(Lcom/tudou/detail/vo/Interactive;)V
    .locals 3
    .param p1, "interactive"    # Lcom/tudou/detail/vo/Interactive;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoSpecialTopicBar;->mInteractive:Lcom/tudou/detail/vo/Interactive;

    .line 55
    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSpecialTopicBar;->mTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/tudou/detail/vo/Interactive;->mSpecialTopic:Lcom/tudou/detail/vo/Interactive$SpecialTopic;

    iget-object v1, v1, Lcom/tudou/detail/vo/Interactive$SpecialTopic;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p1, Lcom/tudou/detail/vo/Interactive;->mSpecialTopic:Lcom/tudou/detail/vo/Interactive$SpecialTopic;

    iget-object v1, v1, Lcom/tudou/detail/vo/Interactive$SpecialTopic;->mContentImage:Ljava/lang/String;

    new-instance v2, Lcom/tudou/detail/widget/VideoSpecialTopicBar$2;

    invoke-direct {v2, p0}, Lcom/tudou/detail/widget/VideoSpecialTopicBar$2;-><init>(Lcom/tudou/detail/widget/VideoSpecialTopicBar;)V

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 67
    :cond_0
    return-void
.end method
