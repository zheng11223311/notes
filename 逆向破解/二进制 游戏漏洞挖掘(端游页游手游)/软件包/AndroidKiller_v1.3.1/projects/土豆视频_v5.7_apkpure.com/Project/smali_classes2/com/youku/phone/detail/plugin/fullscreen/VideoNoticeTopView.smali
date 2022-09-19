.class public Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;
.super Landroid/widget/FrameLayout;
.source "VideoNoticeTopView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentVideoNotice:Lcom/tudou/detail/vo/VideoNoticeTop;

.field private mImage:Landroid/widget/ImageView;

.field private mShowContent:Landroid/widget/TextView;

.field private mShowDate:Landroid/widget/TextView;

.field private mShowName:Landroid/widget/TextView;

.field private mShowTime:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->mImage:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public getCurrentVideoNotice()Lcom/tudou/detail/vo/VideoNoticeTop;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->mCurrentVideoNotice:Lcom/tudou/detail/vo/VideoNoticeTop;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 81
    const v0, 0x7f0c0bf9

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->mImage:Landroid/widget/ImageView;

    .line 82
    const v0, 0x7f0c0bfa

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->mShowDate:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f0c0bfb

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->mShowTime:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f0c0bfc

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->mShowName:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f0c0bfd

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->mShowContent:Landroid/widget/TextView;

    .line 86
    return-void
.end method

.method public setData(Lcom/tudou/detail/vo/VideoNoticeTop;)V
    .locals 4
    .param p1, "data"    # Lcom/tudou/detail/vo/VideoNoticeTop;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 36
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->mCurrentVideoNotice:Lcom/tudou/detail/vo/VideoNoticeTop;

    .line 37
    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/tudou/detail/vo/VideoNoticeTop;->getShowDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->mShowDate:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    :goto_0
    invoke-virtual {p1}, Lcom/tudou/detail/vo/VideoNoticeTop;->getShowTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->mShowTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    :goto_1
    invoke-virtual {p1}, Lcom/tudou/detail/vo/VideoNoticeTop;->getShowName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->mShowName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    :goto_2
    invoke-virtual {p1}, Lcom/tudou/detail/vo/VideoNoticeTop;->getShowContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 57
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->mShowContent:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    :goto_3
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tudou/detail/vo/VideoNoticeTop;->getPicUrl1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView$1;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;)V

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 72
    :cond_0
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->mShowDate:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/tudou/detail/vo/VideoNoticeTop;->getShowDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->mShowDate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->mShowTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/tudou/detail/vo/VideoNoticeTop;->getShowTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->mShowTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 53
    :cond_3
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->mShowName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/tudou/detail/vo/VideoNoticeTop;->getShowName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->mShowName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 59
    :cond_4
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->mShowContent:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/tudou/detail/vo/VideoNoticeTop;->getShowContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->mShowContent:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method
