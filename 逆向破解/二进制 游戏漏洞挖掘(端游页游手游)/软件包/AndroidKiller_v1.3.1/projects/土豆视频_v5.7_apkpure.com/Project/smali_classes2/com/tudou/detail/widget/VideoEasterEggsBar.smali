.class public Lcom/tudou/detail/widget/VideoEasterEggsBar;
.super Landroid/widget/LinearLayout;
.source "VideoEasterEggsBar.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mArrowIcon:Landroid/view/View;

.field private mContent:Landroid/view/View;

.field private mEasterEggs:Lcom/tudou/detail/vo/EasterEggs;

.field private mEggsBtn:Landroid/widget/Button;

.field private mEggsPic:Landroid/widget/ImageView;

.field private mEggsText:Landroid/widget/TextView;

.field private mIsLoaded:Z

.field private mLoading:Landroid/view/View;

.field private mLoadingTips:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/tudou/detail/widget/VideoEasterEggsBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mIsLoaded:Z

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/detail/widget/VideoEasterEggsBar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoEasterEggsBar;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mLoading:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/detail/widget/VideoEasterEggsBar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoEasterEggsBar;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mArrowIcon:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/detail/widget/VideoEasterEggsBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoEasterEggsBar;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/tudou/detail/widget/VideoEasterEggsBar;->showContent(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/tudou/detail/widget/VideoEasterEggsBar;)Lcom/tudou/detail/vo/EasterEggs;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoEasterEggsBar;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mEasterEggs:Lcom/tudou/detail/vo/EasterEggs;

    return-object v0
.end method

.method private showContent(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 66
    iget-object v3, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mLoadingTips:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mContent:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    return-void

    :cond_0
    move v0, v2

    .line 66
    goto :goto_0

    :cond_1
    move v2, v1

    .line 67
    goto :goto_1
.end method


# virtual methods
.method public getEggsType()Lcom/tudou/detail/vo/EasterEggs$EggsType;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mEasterEggs:Lcom/tudou/detail/vo/EasterEggs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mEasterEggs:Lcom/tudou/detail/vo/EasterEggs;

    iget-object v0, v0, Lcom/tudou/detail/vo/EasterEggs;->type:Lcom/tudou/detail/vo/EasterEggs$EggsType;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mIsLoaded:Z

    return v0
.end method

.method public isShowDirectly()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mEasterEggs:Lcom/tudou/detail/vo/EasterEggs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mEasterEggs:Lcom/tudou/detail/vo/EasterEggs;

    iget-boolean v0, v0, Lcom/tudou/detail/vo/EasterEggs;->isShowDirectly:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 90
    const v0, 0x7f0c0311

    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/VideoEasterEggsBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mEggsPic:Landroid/widget/ImageView;

    .line 91
    const v0, 0x7f0c0312

    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/VideoEasterEggsBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mEggsText:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f0c0313

    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/VideoEasterEggsBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mEggsBtn:Landroid/widget/Button;

    .line 94
    const v0, 0x7f0c0310

    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/VideoEasterEggsBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mContent:Landroid/view/View;

    .line 95
    const v0, 0x7f0c030d

    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/VideoEasterEggsBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mLoadingTips:Landroid/view/View;

    .line 96
    const v0, 0x7f0c030e

    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/VideoEasterEggsBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mLoading:Landroid/view/View;

    .line 97
    const v0, 0x7f0c030f

    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/VideoEasterEggsBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mArrowIcon:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mEggsBtn:Landroid/widget/Button;

    new-instance v1, Lcom/tudou/detail/widget/VideoEasterEggsBar$2;

    invoke-direct {v1, p0}, Lcom/tudou/detail/widget/VideoEasterEggsBar$2;-><init>(Lcom/tudou/detail/widget/VideoEasterEggsBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void
.end method

.method public setEasterEggs(Lcom/tudou/detail/vo/EasterEggs;)V
    .locals 3
    .param p1, "eggs"    # Lcom/tudou/detail/vo/EasterEggs;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mEasterEggs:Lcom/tudou/detail/vo/EasterEggs;

    .line 50
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mEasterEggs:Lcom/tudou/detail/vo/EasterEggs;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mEasterEggs:Lcom/tudou/detail/vo/EasterEggs;

    iget v0, v0, Lcom/tudou/detail/vo/EasterEggs;->error:I

    if-nez v0, :cond_1

    .line 51
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mEasterEggs:Lcom/tudou/detail/vo/EasterEggs;

    iget-object v1, v1, Lcom/tudou/detail/vo/EasterEggs;->pic:Ljava/lang/String;

    iget-object v2, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mEggsPic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 52
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mEggsText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mEasterEggs:Lcom/tudou/detail/vo/EasterEggs;

    iget-object v1, v1, Lcom/tudou/detail/vo/EasterEggs;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mEasterEggs:Lcom/tudou/detail/vo/EasterEggs;

    iget-object v0, v0, Lcom/tudou/detail/vo/EasterEggs;->type:Lcom/tudou/detail/vo/EasterEggs$EggsType;

    sget-object v1, Lcom/tudou/detail/vo/EasterEggs$EggsType;->HTML5:Lcom/tudou/detail/vo/EasterEggs$EggsType;

    if-ne v0, v1, :cond_2

    .line 55
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mEggsBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mEasterEggs:Lcom/tudou/detail/vo/EasterEggs;

    iget-object v1, v1, Lcom/tudou/detail/vo/EasterEggs;->button:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mEggsBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 61
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mEasterEggs:Lcom/tudou/detail/vo/EasterEggs;

    iget-boolean v0, v0, Lcom/tudou/detail/vo/EasterEggs;->isShowDirectly:Z

    invoke-direct {p0, v0}, Lcom/tudou/detail/widget/VideoEasterEggsBar;->showContent(Z)V

    .line 63
    :cond_1
    return-void

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mEasterEggs:Lcom/tudou/detail/vo/EasterEggs;

    iget-object v0, v0, Lcom/tudou/detail/vo/EasterEggs;->type:Lcom/tudou/detail/vo/EasterEggs$EggsType;

    sget-object v1, Lcom/tudou/detail/vo/EasterEggs$EggsType;->TEXT:Lcom/tudou/detail/vo/EasterEggs$EggsType;

    if-ne v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mEggsBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public showContent(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mLoading:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mArrowIcon:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    new-instance v0, Lcom/tudou/detail/widget/VideoEasterEggsBar$1;

    invoke-direct {v0, p0, p1}, Lcom/tudou/detail/widget/VideoEasterEggsBar$1;-><init>(Lcom/tudou/detail/widget/VideoEasterEggsBar;Ljava/lang/Runnable;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v0, v2, v3}, Lcom/tudou/detail/widget/VideoEasterEggsBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/detail/widget/VideoEasterEggsBar;->mIsLoaded:Z

    .line 85
    return-void
.end method
