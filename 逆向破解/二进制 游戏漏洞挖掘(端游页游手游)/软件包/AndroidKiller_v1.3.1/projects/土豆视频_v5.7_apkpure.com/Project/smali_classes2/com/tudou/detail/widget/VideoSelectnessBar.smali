.class public Lcom/tudou/detail/widget/VideoSelectnessBar;
.super Landroid/widget/FrameLayout;
.source "VideoSelectnessBar.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/tudou/detail/adapter/VideoSelectnessAdapter;

.field private mCardView:Landroid/support/v7/widget/RecyclerView;

.field mCount:I

.field private mCountText:Landroid/widget/TextView;

.field private mInteractive:Lcom/tudou/detail/vo/Interactive;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleLayout:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/tudou/detail/widget/VideoSpecialTopicBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/widget/VideoSelectnessBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/tudou/detail/widget/VideoSelectnessBar;->mCount:I

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/detail/widget/VideoSelectnessBar;)Lcom/tudou/detail/vo/Interactive;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoSelectnessBar;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSelectnessBar;->mInteractive:Lcom/tudou/detail/vo/Interactive;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/detail/widget/VideoSelectnessBar;)Lcom/tudou/detail/adapter/VideoSelectnessAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoSelectnessBar;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSelectnessBar;->mAdapter:Lcom/tudou/detail/adapter/VideoSelectnessAdapter;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 55
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 56
    const v2, 0x7f0c034c

    invoke-virtual {p0, v2}, Lcom/tudou/detail/widget/VideoSelectnessBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tudou/detail/widget/VideoSelectnessBar;->mCountText:Landroid/widget/TextView;

    .line 57
    const v2, 0x7f0c034a

    invoke-virtual {p0, v2}, Lcom/tudou/detail/widget/VideoSelectnessBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/detail/widget/VideoSelectnessBar;->mTitleLayout:Landroid/view/View;

    .line 58
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoSelectnessBar;->mTitleLayout:Landroid/view/View;

    new-instance v3, Lcom/tudou/detail/widget/VideoSelectnessBar$1;

    invoke-direct {v3, p0}, Lcom/tudou/detail/widget/VideoSelectnessBar$1;-><init>(Lcom/tudou/detail/widget/VideoSelectnessBar;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v2, 0x7f0c034b

    invoke-virtual {p0, v2}, Lcom/tudou/detail/widget/VideoSelectnessBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tudou/detail/widget/VideoSelectnessBar;->mTitle:Landroid/widget/TextView;

    .line 69
    const v2, 0x7f0c034d

    invoke-virtual {p0, v2}, Lcom/tudou/detail/widget/VideoSelectnessBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/tudou/detail/widget/VideoSelectnessBar;->mCardView:Landroid/support/v7/widget/RecyclerView;

    .line 70
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/tudou/detail/widget/VideoSelectnessBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 71
    .local v1, "tLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 72
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoSelectnessBar;->mCardView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 73
    new-instance v0, Lcom/tudou/detail/widget/VideoSelectnessBar$2;

    invoke-direct {v0, p0}, Lcom/tudou/detail/widget/VideoSelectnessBar$2;-><init>(Lcom/tudou/detail/widget/VideoSelectnessBar;)V

    .line 89
    .local v0, "tDecoration":Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoSelectnessBar;->mCardView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 90
    return-void
.end method

.method public setInteractive(Lcom/tudou/detail/vo/Interactive;)V
    .locals 3
    .param p1, "interactive"    # Lcom/tudou/detail/vo/Interactive;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoSelectnessBar;->mInteractive:Lcom/tudou/detail/vo/Interactive;

    .line 94
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/tudou/detail/vo/Interactive;->mSelectnessTab:Lcom/tudou/detail/vo/Interactive$SelectnessTab;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p1, Lcom/tudou/detail/vo/Interactive;->mSelectnessTab:Lcom/tudou/detail/vo/Interactive$SelectnessTab;

    iget-object v0, v0, Lcom/tudou/detail/vo/Interactive$SelectnessTab;->mCardInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/tudou/detail/vo/Interactive;->mSelectnessTab:Lcom/tudou/detail/vo/Interactive$SelectnessTab;

    iget-object v0, v0, Lcom/tudou/detail/vo/Interactive$SelectnessTab;->mCardInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/tudou/detail/widget/VideoSelectnessBar;->mCount:I

    .line 96
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSelectnessBar;->mTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/tudou/detail/vo/Interactive;->mSelectnessTab:Lcom/tudou/detail/vo/Interactive$SelectnessTab;

    iget-object v1, v1, Lcom/tudou/detail/vo/Interactive$SelectnessTab;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    new-instance v0, Lcom/tudou/detail/adapter/VideoSelectnessAdapter;

    invoke-virtual {p0}, Lcom/tudou/detail/widget/VideoSelectnessBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/tudou/detail/vo/Interactive;->mSelectnessTab:Lcom/tudou/detail/vo/Interactive$SelectnessTab;

    iget-object v2, v2, Lcom/tudou/detail/vo/Interactive$SelectnessTab;->mCardInfos:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/tudou/detail/adapter/VideoSelectnessAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoSelectnessBar;->mAdapter:Lcom/tudou/detail/adapter/VideoSelectnessAdapter;

    .line 98
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSelectnessBar;->mAdapter:Lcom/tudou/detail/adapter/VideoSelectnessAdapter;

    new-instance v1, Lcom/tudou/detail/widget/VideoSelectnessBar$3;

    invoke-direct {v1, p0}, Lcom/tudou/detail/widget/VideoSelectnessBar$3;-><init>(Lcom/tudou/detail/widget/VideoSelectnessBar;)V

    invoke-virtual {v0, v1}, Lcom/tudou/detail/adapter/VideoSelectnessAdapter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSelectnessBar;->mCardView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/tudou/detail/widget/VideoSelectnessBar;->mAdapter:Lcom/tudou/detail/adapter/VideoSelectnessAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 112
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSelectnessBar;->mCountText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/tudou/detail/vo/Interactive;->mSelectnessTab:Lcom/tudou/detail/vo/Interactive$SelectnessTab;

    iget-object v2, v2, Lcom/tudou/detail/vo/Interactive$SelectnessTab;->mCardInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e2a\u89c6\u9891"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_0
    return-void

    .line 95
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
