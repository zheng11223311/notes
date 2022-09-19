.class public Lcom/youku/widget/SearchFilterHorizontalSlide;
.super Landroid/widget/LinearLayout;
.source "SearchFilterHorizontalSlide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/widget/SearchFilterHorizontalSlide$OnSearchDirectFilterSelect;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private currPage:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private normalStyle:I

.field private onSearchDirectFilterSelect:Lcom/youku/widget/SearchFilterHorizontalSlide$OnSearchDirectFilterSelect;

.field private pageCoverLeftMan:Landroid/widget/ImageView;

.field private pageCoverRightMan:Landroid/widget/ImageView;

.field public pageHorizontalMan:Lcom/youku/widget/PageHorizontalScrollView;

.field private pageScrollviewMan:Landroid/widget/LinearLayout;

.field private selectStyle:I

.field private strings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/youku/widget/SearchFilterHorizontalSlide;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-object v0, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->pageCoverLeftMan:Landroid/widget/ImageView;

    .line 22
    iput-object v0, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->pageCoverRightMan:Landroid/widget/ImageView;

    .line 23
    iput-object v0, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->pageHorizontalMan:Lcom/youku/widget/PageHorizontalScrollView;

    .line 24
    iput-object v0, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->pageScrollviewMan:Landroid/widget/LinearLayout;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->strings:Ljava/util/ArrayList;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->currPage:I

    .line 31
    const v0, 0x7f0e01bb

    iput v0, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->normalStyle:I

    .line 32
    const v0, 0x7f0e01bc

    iput v0, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->selectStyle:I

    .line 40
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->activity:Landroid/app/Activity;

    .line 41
    invoke-direct {p0}, Lcom/youku/widget/SearchFilterHorizontalSlide;->initView()V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/youku/widget/SearchFilterHorizontalSlide;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/SearchFilterHorizontalSlide;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->strings:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/widget/SearchFilterHorizontalSlide;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/SearchFilterHorizontalSlide;

    .prologue
    .line 18
    iget v0, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->currPage:I

    return v0
.end method

.method static synthetic access$102(Lcom/youku/widget/SearchFilterHorizontalSlide;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/widget/SearchFilterHorizontalSlide;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->currPage:I

    return p1
.end method

.method static synthetic access$200(Lcom/youku/widget/SearchFilterHorizontalSlide;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/SearchFilterHorizontalSlide;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->pageScrollviewMan:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/widget/SearchFilterHorizontalSlide;ILandroid/widget/LinearLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/widget/SearchFilterHorizontalSlide;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/widget/LinearLayout;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/youku/widget/SearchFilterHorizontalSlide;->changePageStyle(ILandroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic access$400(Lcom/youku/widget/SearchFilterHorizontalSlide;)Lcom/youku/widget/SearchFilterHorizontalSlide$OnSearchDirectFilterSelect;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/SearchFilterHorizontalSlide;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->onSearchDirectFilterSelect:Lcom/youku/widget/SearchFilterHorizontalSlide$OnSearchDirectFilterSelect;

    return-object v0
.end method

.method private changePageStyle(ILandroid/widget/LinearLayout;)V
    .locals 5
    .param p1, "j"    # I
    .param p2, "pageScrollviewLayout"    # Landroid/widget/LinearLayout;

    .prologue
    .line 123
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 124
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 125
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0c0cac

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 127
    .local v1, "morePageItemTxt":Landroid/widget/TextView;
    if-ne v0, p1, :cond_0

    .line 128
    iget-object v3, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->activity:Landroid/app/Activity;

    iget v4, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->selectStyle:I

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 123
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    iget-object v3, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->activity:Landroid/app/Activity;

    iget v4, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->normalStyle:I

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    .line 133
    .end local v1    # "morePageItemTxt":Landroid/widget/TextView;
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 45
    const-string v0, "layout_inflater"

    .line 46
    .local v0, "infServiString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/youku/widget/SearchFilterHorizontalSlide;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->mInflater:Landroid/view/LayoutInflater;

    .line 48
    iget-object v1, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0302b6

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->view:Landroid/view/View;

    .line 50
    iget-object v1, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->view:Landroid/view/View;

    const v2, 0x7f0c0c5d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->pageCoverLeftMan:Landroid/widget/ImageView;

    .line 51
    iget-object v1, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->view:Landroid/view/View;

    const v2, 0x7f0c0c5e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->pageCoverRightMan:Landroid/widget/ImageView;

    .line 53
    iget-object v1, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->view:Landroid/view/View;

    const v2, 0x7f0c0c5b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/PageHorizontalScrollView;

    iput-object v1, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->pageHorizontalMan:Lcom/youku/widget/PageHorizontalScrollView;

    .line 55
    iget-object v1, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->view:Landroid/view/View;

    const v2, 0x7f0c0c5c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->pageScrollviewMan:Landroid/widget/LinearLayout;

    .line 57
    return-void
.end method


# virtual methods
.method public getStrings()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->strings:Ljava/util/ArrayList;

    return-object v0
.end method

.method public recovery()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->pageHorizontalMan:Lcom/youku/widget/PageHorizontalScrollView;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->pageHorizontalMan:Lcom/youku/widget/PageHorizontalScrollView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageHorizontalScrollView;->fullScroll(I)Z

    .line 65
    :cond_0
    return-void
.end method

.method public setCurrPage(I)V
    .locals 1
    .param p1, "currPage"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->currPage:I

    .line 115
    iget-object v0, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->onSearchDirectFilterSelect:Lcom/youku/widget/SearchFilterHorizontalSlide$OnSearchDirectFilterSelect;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->onSearchDirectFilterSelect:Lcom/youku/widget/SearchFilterHorizontalSlide$OnSearchDirectFilterSelect;

    invoke-interface {v0, p1}, Lcom/youku/widget/SearchFilterHorizontalSlide$OnSearchDirectFilterSelect;->onSelect(I)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->pageScrollviewMan:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v0}, Lcom/youku/widget/SearchFilterHorizontalSlide;->changePageStyle(ILandroid/widget/LinearLayout;)V

    .line 118
    return-void
.end method

.method public setOnSearchDirectFilterSelect(Lcom/youku/widget/SearchFilterHorizontalSlide$OnSearchDirectFilterSelect;)V
    .locals 0
    .param p1, "onSearchDirectFilterSelect"    # Lcom/youku/widget/SearchFilterHorizontalSlide$OnSearchDirectFilterSelect;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->onSearchDirectFilterSelect:Lcom/youku/widget/SearchFilterHorizontalSlide$OnSearchDirectFilterSelect;

    .line 138
    return-void
.end method

.method public setStrings(Ljava/util/ArrayList;I)V
    .locals 7
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "string":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 73
    const v4, 0x7f0e01cf

    iput v4, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->normalStyle:I

    .line 74
    const v4, 0x7f0e01d0

    iput v4, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->selectStyle:I

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->strings:Ljava/util/ArrayList;

    .line 77
    iget-object v4, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->pageHorizontalMan:Lcom/youku/widget/PageHorizontalScrollView;

    iget-object v5, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->pageCoverLeftMan:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/youku/widget/PageHorizontalScrollView;->setCoverLeftImage(Landroid/widget/ImageView;)V

    .line 78
    iget-object v4, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->pageHorizontalMan:Lcom/youku/widget/PageHorizontalScrollView;

    iget-object v5, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->pageCoverRightMan:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/youku/widget/PageHorizontalScrollView;->setCoverRightImage(Landroid/widget/ImageView;)V

    .line 79
    iget-object v4, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/youku/util/Util;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    .line 80
    .local v2, "totalWidth":I
    iget-object v4, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->pageHorizontalMan:Lcom/youku/widget/PageHorizontalScrollView;

    invoke-virtual {v4, v2}, Lcom/youku/widget/PageHorizontalScrollView;->setScreenWidth(I)V

    .line 81
    iget-object v4, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->pageScrollviewMan:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 83
    iget-object v4, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->strings:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    .line 111
    :cond_1
    return-void

    .line 85
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->strings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 86
    iget-object v4, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->activity:Landroid/app/Activity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0302c6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 88
    .local v3, "view1":Landroid/view/View;
    const v4, 0x7f0c0cac

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 90
    .local v1, "more_page_item_txt":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->strings:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget v4, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->currPage:I

    if-ne v0, v4, :cond_3

    .line 92
    iget-object v4, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->activity:Landroid/app/Activity;

    iget v5, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->normalStyle:I

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 93
    :cond_3
    new-instance v4, Lcom/youku/widget/SearchFilterHorizontalSlide$1;

    invoke-direct {v4, p0}, Lcom/youku/widget/SearchFilterHorizontalSlide$1;-><init>(Lcom/youku/widget/SearchFilterHorizontalSlide;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v4, p0, Lcom/youku/widget/SearchFilterHorizontalSlide;->pageScrollviewMan:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
