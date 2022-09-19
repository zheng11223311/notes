.class public Lcom/youku/gamecenter/widgets/GameCardView;
.super Landroid/widget/LinearLayout;
.source "GameCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/widgets/GameCardView$MyClickListener;
    }
.end annotation


# instance fields
.field private mDefaultImg:Landroid/widget/ImageView;

.field private mDuration:Landroid/widget/TextView;

.field private mListener:Lcom/youku/gamecenter/widgets/GameCardView$MyClickListener;

.field private mType:Landroid/widget/TextView;

.field private mVideoImage:Landroid/widget/ImageView;

.field private mVideoTitle:Landroid/widget/TextView;

.field private mWatermarkImg:Landroid/widget/ImageView;

.field private vid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Lcom/youku/gamecenter/widgets/GameCardView$MyClickListener;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/widgets/GameCardView$MyClickListener;-><init>(Lcom/youku/gamecenter/widgets/GameCardView;)V

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/GameCardView;->mListener:Lcom/youku/gamecenter/widgets/GameCardView$MyClickListener;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance v0, Lcom/youku/gamecenter/widgets/GameCardView$MyClickListener;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/widgets/GameCardView$MyClickListener;-><init>(Lcom/youku/gamecenter/widgets/GameCardView;)V

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/GameCardView;->mListener:Lcom/youku/gamecenter/widgets/GameCardView$MyClickListener;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance v0, Lcom/youku/gamecenter/widgets/GameCardView$MyClickListener;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/widgets/GameCardView$MyClickListener;-><init>(Lcom/youku/gamecenter/widgets/GameCardView;)V

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/GameCardView;->mListener:Lcom/youku/gamecenter/widgets/GameCardView$MyClickListener;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/widgets/GameCardView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/widgets/GameCardView;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameCardView;->vid:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getVid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameCardView;->vid:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoImage()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameCardView;->mVideoImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public initViewData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "vid"    # Ljava/lang/String;
    .param p5, "duration"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 61
    iput-object p4, p0, Lcom/youku/gamecenter/widgets/GameCardView;->vid:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameCardView;->mVideoTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameCardView;->mDuration:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameCardView;->mWatermarkImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameCardView;->mDefaultImg:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    if-nez p3, :cond_1

    .line 67
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameCardView;->mType:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameCardView;->mType:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$string;->game_detail_video_type_propaganda:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameCardView;->mType:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$color;->game_video_type_promotional:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameCardView;->mType:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameCardView;->mType:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$string;->game_detail_video_type_raiders:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameCardView;->mType:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$color;->game_video_type_raiders:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 38
    sget v0, Lcom/youku/gamecenter/R$id;->video_img_new:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/GameCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/GameCardView;->mVideoImage:Landroid/widget/ImageView;

    .line 39
    sget v0, Lcom/youku/gamecenter/R$id;->title_new:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/GameCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/GameCardView;->mVideoTitle:Landroid/widget/TextView;

    .line 40
    sget v0, Lcom/youku/gamecenter/R$id;->duration_new:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/GameCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/GameCardView;->mDuration:Landroid/widget/TextView;

    .line 41
    sget v0, Lcom/youku/gamecenter/R$id;->video_type:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/GameCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/GameCardView;->mType:Landroid/widget/TextView;

    .line 42
    sget v0, Lcom/youku/gamecenter/R$id;->watermark_img:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/GameCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/GameCardView;->mWatermarkImg:Landroid/widget/ImageView;

    .line 43
    sget v0, Lcom/youku/gamecenter/R$id;->video_default_img:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/GameCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/GameCardView;->mDefaultImg:Landroid/widget/ImageView;

    .line 44
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameCardView;->mListener:Lcom/youku/gamecenter/widgets/GameCardView$MyClickListener;

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/GameCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 1
    .param p1, "duration"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameCardView;->mDuration:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method
