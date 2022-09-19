.class public Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;
.super Landroid/widget/RelativeLayout;
.source "GameDownloadProgressButton.java"


# instance fields
.field private mBtnTitle:Landroid/widget/TextView;

.field private mParentView:Landroid/widget/RelativeLayout;

.field private mProgressView:Landroid/view/View;

.field private mProgressViewBg:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    sget v0, Lcom/youku/gamecenter/R$layout;->widget_game_download_button:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    sget v0, Lcom/youku/gamecenter/R$layout;->widget_game_download_button:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    sget v0, Lcom/youku/gamecenter/R$layout;->widget_game_download_button:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;I)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;
    .param p1, "x1"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;->setProgressDirect(I)V

    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/youku/gamecenter/R$id;->game_download_button_parent:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;->mParentView:Landroid/widget/RelativeLayout;

    .line 46
    sget v0, Lcom/youku/gamecenter/R$id;->game_download_progress:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;->mProgressView:Landroid/view/View;

    .line 47
    sget v0, Lcom/youku/gamecenter/R$id;->game_download_btn_title:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;->mBtnTitle:Landroid/widget/TextView;

    .line 48
    sget v0, Lcom/youku/gamecenter/R$id;->game_download_progress_bg:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;->mProgressViewBg:Landroid/view/View;

    .line 49
    return-void
.end method

.method private setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;->mProgressView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton$1;

    invoke-direct {v1, p0, p1}, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton$1;-><init>(Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;->setProgressDirect(I)V

    goto :goto_0
.end method

.method private setProgressBgColor(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;->mProgressView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 53
    return-void
.end method

.method private setProgressDirect(I)V
    .locals 6
    .param p1, "progress"    # I

    .prologue
    .line 56
    int-to-double v2, p1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-virtual {p0}, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;->getWidth()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 57
    .local v0, "curProgress":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;->getHeight()I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 58
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;->mProgressView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 41
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;->init()V

    .line 42
    return-void
.end method

.method public setDownloadBtnStatus(IIIIII)V
    .locals 1
    .param p1, "titleColorId"    # I
    .param p2, "titleId"    # I
    .param p3, "progressVisible"    # I
    .param p4, "bgColorId"    # I
    .param p5, "progressBgColorId"    # I
    .param p6, "progress"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;->mBtnTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;->mBtnTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 83
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;->mProgressViewBg:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;->mProgressView:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;->mParentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 86
    if-nez p3, :cond_0

    .line 87
    invoke-direct {p0, p5}, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;->setProgressBgColor(I)V

    .line 88
    invoke-direct {p0, p6}, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;->setProgress(I)V

    .line 90
    :cond_0
    return-void
.end method
