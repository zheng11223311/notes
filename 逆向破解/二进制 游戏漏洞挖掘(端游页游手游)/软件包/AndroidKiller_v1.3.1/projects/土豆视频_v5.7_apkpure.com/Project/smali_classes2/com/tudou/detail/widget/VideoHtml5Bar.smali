.class public Lcom/tudou/detail/widget/VideoHtml5Bar;
.super Landroid/widget/FrameLayout;
.source "VideoHtml5Bar.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContent:Lcom/youku/widget/TudouModuleH5;

.field mHtml5:Lcom/tudou/detail/vo/Interactive$Html5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/tudou/detail/widget/VideoHtml5Bar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/widget/VideoHtml5Bar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 38
    const v0, 0x7f0c0323

    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/VideoHtml5Bar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/TudouModuleH5;

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoHtml5Bar;->mContent:Lcom/youku/widget/TudouModuleH5;

    .line 39
    return-void
.end method

.method public setInteractive(Lcom/tudou/detail/vo/Interactive$Html5;)V
    .locals 2
    .param p1, "html5"    # Lcom/tudou/detail/vo/Interactive$Html5;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoHtml5Bar;->mHtml5:Lcom/tudou/detail/vo/Interactive$Html5;

    .line 43
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoHtml5Bar;->mHtml5:Lcom/tudou/detail/vo/Interactive$Html5;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoHtml5Bar;->mContent:Lcom/youku/widget/TudouModuleH5;

    iget-object v1, p0, Lcom/tudou/detail/widget/VideoHtml5Bar;->mHtml5:Lcom/tudou/detail/vo/Interactive$Html5;

    iget-object v1, v1, Lcom/tudou/detail/vo/Interactive$Html5;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouModuleH5;->setData(Lcom/youku/vo/SkipInfo;)V

    .line 47
    :cond_0
    return-void
.end method
