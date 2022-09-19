.class public Lcom/tudou/ui/fragment/SearchResultUGCHeader;
.super Landroid/widget/LinearLayout;
.source "SearchResultUGCHeader.java"


# static fields
.field public static final CHANNEL_FILTER_PWDISMISS:I = 0xcc

.field private static tag:Ljava/lang/String;


# instance fields
.field protected areaListView:Landroid/widget/LinearLayout;

.field private arealistCoverLeft:Landroid/widget/ImageView;

.field private arealistCoverRight:Landroid/widget/ImageView;

.field protected areascroll:Lcom/youku/widget/PageHorizontalScrollView;

.field private callback:Lcom/tudou/ui/fragment/SearchResultFragment$IUgcSortCallBack;

.field private con:Landroid/content/Context;

.field private currPosition:I

.field private filter1:Landroid/widget/TextView;

.field private filter2:Landroid/widget/TextView;

.field private filter3:Landroid/widget/TextView;

.field public filterLayout:Landroid/widget/LinearLayout;

.field public filterStr:Ljava/lang/String;

.field public filters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/UGCFilter;",
            ">;"
        }
    .end annotation
.end field

.field fo:Lcom/youku/vo/SearchFilterAndOrder;

.field private header:Landroid/view/View;

.field private iCallback:Lcom/tudou/ui/fragment/SearchResultFragment$IUgcFilterCallBack;

.field private isShowing:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private moreFilter:Landroid/widget/RelativeLayout;

.field public moreFilterImg:Landroid/widget/ImageView;

.field public moreFilterText:Landroid/widget/TextView;

.field sortListener:Landroid/view/View$OnClickListener;

.field protected typeListView:Landroid/widget/LinearLayout;

.field private typelistCoverLeft:Landroid/widget/ImageView;

.field private typelistCoverRight:Landroid/widget/ImageView;

.field protected typescroll:Lcom/youku/widget/PageHorizontalScrollView;

.field ugcob:Ljava/lang/String;

.field private usort:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/UGCSort;",
            ">;"
        }
    .end annotation
.end field

.field protected yearListView:Landroid/widget/LinearLayout;

.field private yearlistCoverLeft:Landroid/widget/ImageView;

.field private yearlistCoverRight:Landroid/widget/ImageView;

.field protected yearscroll:Lcom/youku/widget/PageHorizontalScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "SearchResultUGCHeader"

    sput-object v0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput v1, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->currPosition:I

    .line 61
    invoke-static {}, Lcom/youku/vo/SearchFilterAndOrder;->getInstance()Lcom/youku/vo/SearchFilterAndOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->fo:Lcom/youku/vo/SearchFilterAndOrder;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->ugcob:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->filterStr:Ljava/lang/String;

    .line 244
    new-instance v0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SearchResultUGCHeader$1;-><init>(Lcom/tudou/ui/fragment/SearchResultUGCHeader;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->sortListener:Landroid/view/View$OnClickListener;

    .line 386
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->isShowing:Z

    .line 74
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->con:Landroid/content/Context;

    .line 75
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->con:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->mInflater:Landroid/view/LayoutInflater;

    .line 77
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03013e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->header:Landroid/view/View;

    .line 79
    invoke-direct {p0}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->initview()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tudou/ui/fragment/SearchResultFragment$IUgcSortCallBack;I)V
    .locals 2
    .param p1, "con"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/tudou/ui/fragment/SearchResultFragment$IUgcSortCallBack;
    .param p3, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 59
    iput v1, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->currPosition:I

    .line 61
    invoke-static {}, Lcom/youku/vo/SearchFilterAndOrder;->getInstance()Lcom/youku/vo/SearchFilterAndOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->fo:Lcom/youku/vo/SearchFilterAndOrder;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->ugcob:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->filterStr:Ljava/lang/String;

    .line 244
    new-instance v0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SearchResultUGCHeader$1;-><init>(Lcom/tudou/ui/fragment/SearchResultUGCHeader;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->sortListener:Landroid/view/View$OnClickListener;

    .line 386
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->isShowing:Z

    .line 85
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->con:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->callback:Lcom/tudou/ui/fragment/SearchResultFragment$IUgcSortCallBack;

    .line 87
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->mInflater:Landroid/view/LayoutInflater;

    .line 89
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03013e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->header:Landroid/view/View;

    .line 91
    invoke-direct {p0}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->initview()V

    .line 92
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/SearchResultUGCHeader;)Lcom/tudou/ui/fragment/SearchResultFragment$IUgcSortCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->callback:Lcom/tudou/ui/fragment/SearchResultFragment$IUgcSortCallBack;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/SearchResultUGCHeader;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    .prologue
    .line 28
    iget v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->currPosition:I

    return v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/SearchResultUGCHeader;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->con:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/SearchResultUGCHeader;)Lcom/tudou/ui/fragment/SearchResultFragment$IUgcFilterCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->iCallback:Lcom/tudou/ui/fragment/SearchResultFragment$IUgcFilterCallBack;

    return-object v0
.end method

.method private fourToTwo(Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/widget/TextView;

    .prologue
    .line 227
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 228
    const-string v0, "\u4eba\u6c14\u6700\u65fa"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    const-string v0, "\u6700\u591a\u64ad\u653e"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    const-string v0, "\u6700\u65b0\u66f4\u65b0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    const-string v0, "\u6700\u65b0\u53d1\u5e03"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 232
    :cond_2
    const-string v0, "\u76f8\u5173\u6027"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 233
    const-string v0, "\u7efc\u5408\u6392\u5e8f"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 235
    :cond_3
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initFilterView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 128
    const v0, 0x7f0c05d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->filterLayout:Landroid/widget/LinearLayout;

    .line 129
    const v0, 0x7f0c05d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->typeListView:Landroid/widget/LinearLayout;

    .line 130
    const v0, 0x7f0c05da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->areaListView:Landroid/widget/LinearLayout;

    .line 131
    const v0, 0x7f0c05de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->yearListView:Landroid/widget/LinearLayout;

    .line 132
    const v0, 0x7f0c05d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/PageHorizontalScrollView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->areascroll:Lcom/youku/widget/PageHorizontalScrollView;

    .line 133
    const v0, 0x7f0c05d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/PageHorizontalScrollView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->typescroll:Lcom/youku/widget/PageHorizontalScrollView;

    .line 134
    const v0, 0x7f0c05dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/PageHorizontalScrollView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->yearscroll:Lcom/youku/widget/PageHorizontalScrollView;

    .line 136
    const v0, 0x7f0c05dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->arealistCoverRight:Landroid/widget/ImageView;

    .line 138
    const v0, 0x7f0c05db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->arealistCoverLeft:Landroid/widget/ImageView;

    .line 140
    const v0, 0x7f0c05d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->typelistCoverRight:Landroid/widget/ImageView;

    .line 142
    const v0, 0x7f0c05d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->typelistCoverLeft:Landroid/widget/ImageView;

    .line 144
    const v0, 0x7f0c05e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->yearlistCoverRight:Landroid/widget/ImageView;

    .line 146
    const v0, 0x7f0c05df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->yearlistCoverLeft:Landroid/widget/ImageView;

    .line 149
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->areascroll:Lcom/youku/widget/PageHorizontalScrollView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->arealistCoverRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageHorizontalScrollView;->setCoverRightImage(Landroid/widget/ImageView;)V

    .line 150
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->areascroll:Lcom/youku/widget/PageHorizontalScrollView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->arealistCoverLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageHorizontalScrollView;->setCoverLeftImage(Landroid/widget/ImageView;)V

    .line 151
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->areascroll:Lcom/youku/widget/PageHorizontalScrollView;

    sget v1, Lcom/youku/vo/DeviceInfo;->WIDTH:I

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageHorizontalScrollView;->setScreenWidth(I)V

    .line 152
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->typescroll:Lcom/youku/widget/PageHorizontalScrollView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->typelistCoverRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageHorizontalScrollView;->setCoverRightImage(Landroid/widget/ImageView;)V

    .line 153
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->typescroll:Lcom/youku/widget/PageHorizontalScrollView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->typelistCoverLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageHorizontalScrollView;->setCoverLeftImage(Landroid/widget/ImageView;)V

    .line 154
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->typescroll:Lcom/youku/widget/PageHorizontalScrollView;

    sget v1, Lcom/youku/vo/DeviceInfo;->WIDTH:I

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageHorizontalScrollView;->setScreenWidth(I)V

    .line 155
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->yearscroll:Lcom/youku/widget/PageHorizontalScrollView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->yearlistCoverRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageHorizontalScrollView;->setCoverRightImage(Landroid/widget/ImageView;)V

    .line 156
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->yearscroll:Lcom/youku/widget/PageHorizontalScrollView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->yearlistCoverLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageHorizontalScrollView;->setCoverLeftImage(Landroid/widget/ImageView;)V

    .line 157
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->yearscroll:Lcom/youku/widget/PageHorizontalScrollView;

    sget v1, Lcom/youku/vo/DeviceInfo;->WIDTH:I

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageHorizontalScrollView;->setScreenWidth(I)V

    .line 159
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->areascroll:Lcom/youku/widget/PageHorizontalScrollView;

    invoke-virtual {v0, v2}, Lcom/youku/widget/PageHorizontalScrollView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->typescroll:Lcom/youku/widget/PageHorizontalScrollView;

    invoke-virtual {v0, v2}, Lcom/youku/widget/PageHorizontalScrollView;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->yearscroll:Lcom/youku/widget/PageHorizontalScrollView;

    invoke-virtual {v0, v2}, Lcom/youku/widget/PageHorizontalScrollView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->filterLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 163
    return-void
.end method

.method private initHorizontalScrollView(Landroid/widget/LinearLayout;Ljava/util/List;Ljava/lang/String;)V
    .locals 12
    .param p1, "linearLayout"    # Landroid/widget/LinearLayout;
    .param p3, "cat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/UGCFilterItems;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 304
    .local p2, "ugcFliterItems":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/UGCFilterItems;>;"
    const/4 v8, -0x1

    .line 305
    .local v8, "index":I
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 306
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v2, "selectViewtxts":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v9, 0x1

    .line 308
    .local v9, "isfirst":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/UGCFilterItems;

    .line 309
    .local v4, "temp":Lcom/youku/vo/UGCFilterItems;
    add-int/lit8 v10, v8, 0x1

    .line 310
    .local v10, "tempIndex":I
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->con:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0302b8

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 312
    .local v6, "convertView":Landroid/view/View;
    const v0, 0x7f0c0277

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 314
    .local v3, "tv":Landroid/widget/TextView;
    const v0, 0x7f0c0c61

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 316
    .local v11, "zhanwei":Landroid/view/View;
    iget-object v0, v4, Lcom/youku/vo/UGCFilterItems;->title:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 318
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->fo:Lcom/youku/vo/SearchFilterAndOrder;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->fo:Lcom/youku/vo/SearchFilterAndOrder;

    invoke-virtual {v0}, Lcom/youku/vo/SearchFilterAndOrder;->getFilterMap()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 319
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->fo:Lcom/youku/vo/SearchFilterAndOrder;

    invoke-virtual {v0}, Lcom/youku/vo/SearchFilterAndOrder;->getFilterMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 320
    if-eqz v9, :cond_0

    .line 321
    const/4 v9, 0x0

    .line 322
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->fo:Lcom/youku/vo/SearchFilterAndOrder;

    invoke-virtual {v0}, Lcom/youku/vo/SearchFilterAndOrder;->getFilterMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, v4, Lcom/youku/vo/UGCFilterItems;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    const v0, 0x7f020a2a

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 326
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->con:Landroid/content/Context;

    const v1, 0x7f0e01c4

    invoke-virtual {v3, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 352
    :cond_1
    :goto_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    new-instance v0, Lcom/tudou/ui/fragment/SearchResultUGCHeader$2;

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/tudou/ui/fragment/SearchResultUGCHeader$2;-><init>(Lcom/tudou/ui/fragment/SearchResultUGCHeader;Ljava/util/List;Landroid/widget/TextView;Lcom/youku/vo/UGCFilterItems;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 328
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 329
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->con:Landroid/content/Context;

    const v1, 0x7f0e01c3

    invoke-virtual {v3, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    .line 333
    :cond_3
    if-eqz v9, :cond_4

    .line 334
    const/4 v9, 0x0

    .line 335
    const v0, 0x7f020a2a

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 336
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->con:Landroid/content/Context;

    const v1, 0x7f0e01c4

    invoke-virtual {v3, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 337
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 339
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->con:Landroid/content/Context;

    const v1, 0x7f0e01c3

    invoke-virtual {v3, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    .line 345
    :cond_5
    if-eqz v9, :cond_1

    .line 346
    const/4 v9, 0x0

    .line 347
    const v0, 0x7f020a2a

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 348
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->con:Landroid/content/Context;

    const v1, 0x7f0e01c4

    invoke-virtual {v3, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 349
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 384
    .end local v3    # "tv":Landroid/widget/TextView;
    .end local v4    # "temp":Lcom/youku/vo/UGCFilterItems;
    .end local v6    # "convertView":Landroid/view/View;
    .end local v10    # "tempIndex":I
    .end local v11    # "zhanwei":Landroid/view/View;
    :cond_6
    return-void
.end method

.method private initSortView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    const v0, 0x7f0c05cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->filter1:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f0c05ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->filter2:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f0c05d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->filter3:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f0c05d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->moreFilter:Landroid/widget/RelativeLayout;

    .line 113
    const v0, 0x7f0c05d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->moreFilterText:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f0c05d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->moreFilterImg:Landroid/widget/ImageView;

    .line 115
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->moreFilter:Landroid/widget/RelativeLayout;

    const-string v1, "filter"

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->filter1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->sortListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->filter2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->sortListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->filter3:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->sortListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->moreFilter:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->sortListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-void
.end method

.method private initview()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->header:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->initSortView(Landroid/view/View;)V

    .line 102
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->header:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->initFilterView(Landroid/view/View;)V

    .line 103
    return-void
.end method


# virtual methods
.method public clearFilters()V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->filters:Ljava/util/ArrayList;

    .line 176
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->fo:Lcom/youku/vo/SearchFilterAndOrder;

    invoke-virtual {v0}, Lcom/youku/vo/SearchFilterAndOrder;->clearFilter()V

    .line 177
    return-void
.end method

.method public dissFilter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 401
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->filterLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 402
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->moreFilterText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->moreFilterText:Landroid/widget/TextView;

    const v1, -0x8c8c8d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->moreFilterImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->moreFilterImg:Landroid/widget/ImageView;

    const v1, 0x7f0200ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 407
    :cond_1
    iput-boolean v2, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->isShowing:Z

    .line 408
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->filterLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->areascroll:Lcom/youku/widget/PageHorizontalScrollView;

    invoke-virtual {v0, v2, v2}, Lcom/youku/widget/PageHorizontalScrollView;->scrollTo(II)V

    .line 412
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->typescroll:Lcom/youku/widget/PageHorizontalScrollView;

    invoke-virtual {v0, v2, v2}, Lcom/youku/widget/PageHorizontalScrollView;->scrollTo(II)V

    .line 413
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->yearscroll:Lcom/youku/widget/PageHorizontalScrollView;

    invoke-virtual {v0, v2, v2}, Lcom/youku/widget/PageHorizontalScrollView;->scrollTo(II)V

    .line 414
    return-void
.end method

.method public initUGCfilterData(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/UGCFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p1, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/UGCFilter;>;"
    const/4 v1, 0x0

    .line 283
    .local v1, "size":I
    if-eqz p1, :cond_0

    .line 284
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 285
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 286
    const-string v3, "vtype"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/UGCFilter;

    iget-object v2, v2, Lcom/youku/vo/UGCFilter;->cat:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 287
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->typeListView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/UGCFilter;

    iget-object v2, v2, Lcom/youku/vo/UGCFilter;->items:Ljava/util/ArrayList;

    const-string v4, "vtype"

    invoke-direct {p0, v3, v2, v4}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->initHorizontalScrollView(Landroid/widget/LinearLayout;Ljava/util/List;Ljava/lang/String;)V

    .line 285
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    :cond_2
    const-string v3, "timescope"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/UGCFilter;

    iget-object v2, v2, Lcom/youku/vo/UGCFilter;->cat:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 290
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->areaListView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/UGCFilter;

    iget-object v2, v2, Lcom/youku/vo/UGCFilter;->items:Ljava/util/ArrayList;

    const-string v4, "timescope"

    invoke-direct {p0, v3, v2, v4}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->initHorizontalScrollView(Landroid/widget/LinearLayout;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 292
    :cond_3
    const-string v3, "cateids"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/UGCFilter;

    iget-object v2, v2, Lcom/youku/vo/UGCFilter;->cat:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->yearListView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/UGCFilter;

    iget-object v2, v2, Lcom/youku/vo/UGCFilter;->items:Ljava/util/ArrayList;

    const-string v4, "cateids"

    invoke-direct {p0, v3, v2, v4}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->initHorizontalScrollView(Landroid/widget/LinearLayout;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 297
    :cond_4
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->isShowing:Z

    return v0
.end method

.method public setCurrPosition(I)V
    .locals 0
    .param p1, "currPosition"    # I

    .prologue
    .line 241
    iput p1, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->currPosition:I

    .line 242
    return-void
.end method

.method public setFilterData(Ljava/util/ArrayList;Lcom/tudou/ui/fragment/SearchResultFragment$IUgcFilterCallBack;)V
    .locals 0
    .param p2, "iCallback"    # Lcom/tudou/ui/fragment/SearchResultFragment$IUgcFilterCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/UGCFilter;",
            ">;",
            "Lcom/tudou/ui/fragment/SearchResultFragment$IUgcFilterCallBack;",
            ")V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/UGCFilter;>;"
    iput-object p2, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->iCallback:Lcom/tudou/ui/fragment/SearchResultFragment$IUgcFilterCallBack;

    .line 170
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->filters:Ljava/util/ArrayList;

    .line 171
    invoke-virtual {p0, p1}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->initUGCfilterData(Ljava/util/ArrayList;)V

    .line 172
    return-void
.end method

.method public setIUgcSortCallback(Lcom/tudou/ui/fragment/SearchResultFragment$IUgcSortCallBack;)V
    .locals 0
    .param p1, "callback"    # Lcom/tudou/ui/fragment/SearchResultFragment$IUgcSortCallBack;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->callback:Lcom/tudou/ui/fragment/SearchResultFragment$IUgcSortCallBack;

    .line 96
    return-void
.end method

.method public setUgcHeader(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "size"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/UGCSort;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "usort":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/UGCSort;>;"
    const v4, 0x7f0e01d9

    const v3, 0x7f0e01d8

    .line 181
    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 182
    :cond_0
    const-string p1, "0"

    .line 184
    :cond_1
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_8

    .line 185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 186
    if-nez v0, :cond_3

    .line 187
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/UGCSort;

    iget-object v1, v1, Lcom/youku/vo/UGCSort;->value:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/UGCSort;

    iget-object v1, v1, Lcom/youku/vo/UGCSort;->value:Ljava/lang/String;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->fo:Lcom/youku/vo/SearchFilterAndOrder;

    iget-object v2, v2, Lcom/youku/vo/SearchFilterAndOrder;->order:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->filter1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->con:Landroid/content/Context;

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 195
    :goto_1
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/UGCSort;

    iget-object v1, v1, Lcom/youku/vo/UGCSort;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->filter1:Landroid/widget/TextView;

    invoke-direct {p0, v1, v2}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->fourToTwo(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 196
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->filter1:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/UGCSort;

    iget-object v1, v1, Lcom/youku/vo/UGCSort;->value:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 185
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->filter1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->con:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    .line 197
    :cond_3
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 198
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/UGCSort;

    iget-object v1, v1, Lcom/youku/vo/UGCSort;->value:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/UGCSort;

    iget-object v1, v1, Lcom/youku/vo/UGCSort;->value:Ljava/lang/String;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->fo:Lcom/youku/vo/SearchFilterAndOrder;

    iget-object v2, v2, Lcom/youku/vo/SearchFilterAndOrder;->order:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 200
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->filter2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->con:Landroid/content/Context;

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 206
    :goto_3
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/UGCSort;

    iget-object v1, v1, Lcom/youku/vo/UGCSort;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->filter2:Landroid/widget/TextView;

    invoke-direct {p0, v1, v2}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->fourToTwo(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 207
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->filter2:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/UGCSort;

    iget-object v1, v1, Lcom/youku/vo/UGCSort;->value:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 203
    :cond_4
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->filter2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->con:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_3

    .line 208
    :cond_5
    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 209
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/UGCSort;

    iget-object v1, v1, Lcom/youku/vo/UGCSort;->value:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/UGCSort;

    iget-object v1, v1, Lcom/youku/vo/UGCSort;->value:Ljava/lang/String;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->fo:Lcom/youku/vo/SearchFilterAndOrder;

    iget-object v2, v2, Lcom/youku/vo/SearchFilterAndOrder;->order:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 211
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->filter3:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->con:Landroid/content/Context;

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 217
    :goto_4
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/UGCSort;

    iget-object v1, v1, Lcom/youku/vo/UGCSort;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->filter3:Landroid/widget/TextView;

    invoke-direct {p0, v1, v2}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->fourToTwo(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 218
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->filter3:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/UGCSort;

    iget-object v1, v1, Lcom/youku/vo/UGCSort;->value:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 214
    :cond_6
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->filter3:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->con:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_4

    .line 220
    :cond_7
    sget-object v1, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->tag:Ljava/lang/String;

    const-string v2, "\u6b63\u7248\u89c6\u9891\u641c\u7d22\u7ed3\u679c\u6392\u5e8f\u5927\u4e8e\u56db\u4e2a"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 224
    .end local v0    # "i":I
    :cond_8
    return-void
.end method

.method public showFilter()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->filterLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 390
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->moreFilterText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->moreFilterText:Landroid/widget/TextView;

    const v1, -0x9ed6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->moreFilterImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->moreFilterImg:Landroid/widget/ImageView;

    const v1, 0x7f0200eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 395
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->isShowing:Z

    .line 396
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->filterLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 398
    :cond_2
    return-void
.end method
