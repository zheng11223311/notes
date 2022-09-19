.class public Lcom/youku/gamecenter/widgets/ProgressView;
.super Landroid/widget/RelativeLayout;
.source "ProgressView.java"


# static fields
.field public static final DOWNLODEING_BACKGROUD:I = 0x0

.field public static final PAUSE_BACKGROUD:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownloadingBackground:I

.field private mDownloadingPauseBackroud:I

.field private mProgress:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    sget v1, Lcom/youku/gamecenter/R$color;->downloading_backgroud:I

    iput v1, p0, Lcom/youku/gamecenter/widgets/ProgressView;->mDownloadingBackground:I

    .line 16
    sget v1, Lcom/youku/gamecenter/R$color;->pause_backgroud:I

    iput v1, p0, Lcom/youku/gamecenter/widgets/ProgressView;->mDownloadingPauseBackroud:I

    .line 22
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/ProgressView;->mContext:Landroid/content/Context;

    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/ProgressView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme:[I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 26
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gameCenterDownloadBackground:I

    sget v2, Lcom/youku/gamecenter/R$color;->downloading_backgroud:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/youku/gamecenter/widgets/ProgressView;->mDownloadingBackground:I

    .line 29
    sget v1, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gameCenterDownloadBackground_paused:I

    sget v2, Lcom/youku/gamecenter/R$color;->pause_backgroud:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/youku/gamecenter/widgets/ProgressView;->mDownloadingPauseBackroud:I

    .line 32
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/widgets/ProgressView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/widgets/ProgressView;
    .param p1, "x1"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/widgets/ProgressView;->setProgressImmediately(I)V

    return-void
.end method

.method private setProgressImmediately(I)V
    .locals 8
    .param p1, "progress"    # I

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/youku/gamecenter/widgets/ProgressView;->getWidth()I

    move-result v3

    .line 69
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/youku/gamecenter/widgets/ProgressView;->getHeight()I

    move-result v1

    .line 70
    .local v1, "height":I
    int-to-double v4, p1

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-int v0, v4

    .line 71
    .local v0, "curProgress":I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 72
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/youku/gamecenter/widgets/ProgressView;->mProgress:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 40
    sget v0, Lcom/youku/gamecenter/R$id;->progress:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/ProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/ProgressView;->mProgress:Landroid/view/View;

    .line 41
    return-void
.end method

.method public setBackgroud(I)V
    .locals 2
    .param p1, "dowloadState"    # I

    .prologue
    .line 44
    if-nez p1, :cond_1

    .line 45
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/ProgressView;->mProgress:Landroid/view/View;

    iget v1, p0, Lcom/youku/gamecenter/widgets/ProgressView;->mDownloadingBackground:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/ProgressView;->mProgress:Landroid/view/View;

    iget v1, p0, Lcom/youku/gamecenter/widgets/ProgressView;->mDownloadingPauseBackroud:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/widgets/ProgressView;->setProgressImmediately(I)V

    .line 56
    :cond_0
    new-instance v0, Lcom/youku/gamecenter/widgets/ProgressView$1;

    invoke-direct {v0, p0, p1}, Lcom/youku/gamecenter/widgets/ProgressView$1;-><init>(Lcom/youku/gamecenter/widgets/ProgressView;I)V

    const-wide/16 v2, 0x14

    invoke-virtual {p0, v0, v2, v3}, Lcom/youku/gamecenter/widgets/ProgressView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    return-void
.end method
