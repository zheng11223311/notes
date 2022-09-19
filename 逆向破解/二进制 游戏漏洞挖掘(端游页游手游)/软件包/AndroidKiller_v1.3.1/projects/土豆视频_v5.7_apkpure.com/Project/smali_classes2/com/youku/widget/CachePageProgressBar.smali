.class public Lcom/youku/widget/CachePageProgressBar;
.super Landroid/widget/RelativeLayout;
.source "CachePageProgressBar.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private mInflater:Landroid/view/LayoutInflater;

.field private memUsed:Landroid/widget/ProgressBar;

.field private txtMemUsed:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/youku/widget/CachePageProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/youku/widget/CachePageProgressBar;->activity:Landroid/app/Activity;

    .line 31
    invoke-direct {p0}, Lcom/youku/widget/CachePageProgressBar;->initView()V

    .line 32
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 35
    const-string v0, "layout_inflater"

    .line 36
    .local v0, "infServiString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/youku/widget/CachePageProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/youku/widget/CachePageProgressBar;->mInflater:Landroid/view/LayoutInflater;

    .line 38
    iget-object v1, p0, Lcom/youku/widget/CachePageProgressBar;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030071

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/widget/CachePageProgressBar;->view:Landroid/view/View;

    .line 39
    iget-object v1, p0, Lcom/youku/widget/CachePageProgressBar;->view:Landroid/view/View;

    const v2, 0x7f0c0261

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/youku/widget/CachePageProgressBar;->memUsed:Landroid/widget/ProgressBar;

    .line 41
    iget-object v1, p0, Lcom/youku/widget/CachePageProgressBar;->view:Landroid/view/View;

    const v2, 0x7f0c025f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/widget/CachePageProgressBar;->txtMemUsed:Landroid/widget/TextView;

    .line 42
    iget-object v1, p0, Lcom/youku/widget/CachePageProgressBar;->memUsed:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 44
    return-void
.end method


# virtual methods
.method public setProgressBar(Lcom/youku/vo/Room;)V
    .locals 4
    .param p1, "r"    # Lcom/youku/vo/Room;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 47
    iget v0, p1, Lcom/youku/vo/Room;->mProgress:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/youku/widget/CachePageProgressBar;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/youku/widget/CachePageProgressBar;->txtMemUsed:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u7528"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/youku/vo/Room;->freey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  \u603b\u7a7a\u95f4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/youku/vo/Room;->total:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/CachePageProgressBar;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 56
    iget-object v0, p0, Lcom/youku/widget/CachePageProgressBar;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/youku/widget/CachePageProgressBar;->memUsed:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 59
    iget v0, p1, Lcom/youku/vo/Room;->mProgress:I

    if-nez v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/youku/widget/CachePageProgressBar;->memUsed:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/youku/widget/CachePageProgressBar;->memUsed:Landroid/widget/ProgressBar;

    iget v1, p1, Lcom/youku/vo/Room;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method
