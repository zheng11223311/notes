.class public Lcom/youku/widget/SearchFliterPopupWindow;
.super Ljava/lang/Object;
.source "SearchFliterPopupWindow.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# static fields
.field private static _view:Lcom/youku/widget/SearchFliterPopupWindow;


# instance fields
.field protected areaListView:Landroid/widget/LinearLayout;

.field private arealistCoverLeft:Landroid/widget/ImageView;

.field private arealistCoverRight:Landroid/widget/ImageView;

.field protected areascroll:Lcom/youku/widget/PageHorizontalScrollView;

.field private callback:Lcom/tudou/ui/fragment/SearchResultFragment$IUgcFilterCallBack;

.field private cont:Landroid/content/Context;

.field private filterBtn:Landroid/widget/TextView;

.field private filterImg:Landroid/widget/ImageView;

.field private filterStr:Ljava/lang/String;

.field filters:Ljava/util/ArrayList;
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

.field private imageline1:Landroid/widget/ImageView;

.field private imageline2:Landroid/widget/ImageView;

.field private mHandler2:Landroid/os/Handler;

.field private msg:Landroid/os/Message;

.field private msgf:Lcom/youku/vo/SearchFilter;

.field private pw:Landroid/widget/PopupWindow;

.field private pwheight:I

.field protected typeListView:Landroid/widget/LinearLayout;

.field private typelistCoverLeft:Landroid/widget/ImageView;

.field private typelistCoverRight:Landroid/widget/ImageView;

.field protected typescroll:Lcom/youku/widget/PageHorizontalScrollView;

.field private viewpw:Landroid/view/View;

.field protected yearListView:Landroid/widget/LinearLayout;

.field private yearlistCoverLeft:Landroid/widget/ImageView;

.field private yearlistCoverRight:Landroid/widget/ImageView;

.field protected yearscroll:Lcom/youku/widget/PageHorizontalScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tudou/ui/fragment/SearchResultFragment$IUgcFilterCallBack;Landroid/os/Handler;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/tudou/ui/fragment/SearchResultFragment$IUgcFilterCallBack;
    .param p3, "mh2"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/tudou/ui/fragment/SearchResultFragment$IUgcFilterCallBack;",
            "Landroid/os/Handler;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/UGCFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/UGCFilter;>;"
    const/4 v3, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v3, p0, Lcom/youku/widget/SearchFliterPopupWindow;->viewpw:Landroid/view/View;

    .line 226
    invoke-static {}, Lcom/youku/vo/SearchFilterAndOrder;->getInstance()Lcom/youku/vo/SearchFilterAndOrder;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/widget/SearchFliterPopupWindow;->fo:Lcom/youku/vo/SearchFilterAndOrder;

    .line 227
    const-string v1, ""

    iput-object v1, p0, Lcom/youku/widget/SearchFliterPopupWindow;->filterStr:Ljava/lang/String;

    .line 68
    sput-object p0, Lcom/youku/widget/SearchFliterPopupWindow;->_view:Lcom/youku/widget/SearchFliterPopupWindow;

    .line 69
    iput-object p3, p0, Lcom/youku/widget/SearchFliterPopupWindow;->mHandler2:Landroid/os/Handler;

    .line 70
    iput-object p2, p0, Lcom/youku/widget/SearchFliterPopupWindow;->callback:Lcom/tudou/ui/fragment/SearchResultFragment$IUgcFilterCallBack;

    .line 71
    iput-object p1, p0, Lcom/youku/widget/SearchFliterPopupWindow;->cont:Landroid/content/Context;

    .line 72
    iput-object p4, p0, Lcom/youku/widget/SearchFliterPopupWindow;->filters:Ljava/util/ArrayList;

    .line 73
    iget-object v1, p0, Lcom/youku/widget/SearchFliterPopupWindow;->cont:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 75
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0302b9

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/widget/SearchFliterPopupWindow;->viewpw:Landroid/view/View;

    .line 77
    invoke-direct {p0}, Lcom/youku/widget/SearchFliterPopupWindow;->initView()V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/youku/widget/SearchFliterPopupWindow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/SearchFliterPopupWindow;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->mHandler2:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/widget/SearchFliterPopupWindow;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/SearchFliterPopupWindow;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->filterBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/widget/SearchFliterPopupWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/SearchFliterPopupWindow;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->filterImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/widget/SearchFliterPopupWindow;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/SearchFliterPopupWindow;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->cont:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/widget/SearchFliterPopupWindow;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/SearchFliterPopupWindow;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->filterStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/youku/widget/SearchFliterPopupWindow;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/widget/SearchFliterPopupWindow;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/youku/widget/SearchFliterPopupWindow;->filterStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/youku/widget/SearchFliterPopupWindow;)Lcom/tudou/ui/fragment/SearchResultFragment$IUgcFilterCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/SearchFliterPopupWindow;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->callback:Lcom/tudou/ui/fragment/SearchResultFragment$IUgcFilterCallBack;

    return-object v0
.end method

.method public static dismiss()Z
    .locals 1

    .prologue
    .line 272
    :try_start_0
    sget-object v0, Lcom/youku/widget/SearchFliterPopupWindow;->_view:Lcom/youku/widget/SearchFliterPopupWindow;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/youku/widget/SearchFliterPopupWindow;->_view:Lcom/youku/widget/SearchFliterPopupWindow;

    iget-object v0, v0, Lcom/youku/widget/SearchFliterPopupWindow;->pw:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/youku/widget/SearchFliterPopupWindow;->_view:Lcom/youku/widget/SearchFliterPopupWindow;

    iget-object v0, v0, Lcom/youku/widget/SearchFliterPopupWindow;->pw:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    sget-object v0, Lcom/youku/widget/SearchFliterPopupWindow;->_view:Lcom/youku/widget/SearchFliterPopupWindow;

    iget-object v0, v0, Lcom/youku/widget/SearchFliterPopupWindow;->pw:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    const/4 v0, 0x1

    .line 278
    :goto_0
    return v0

    .line 276
    :catch_0
    move-exception v0

    .line 278
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSearchFilter()Lcom/youku/vo/SearchFilter;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->msgf:Lcom/youku/vo/SearchFilter;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Lcom/youku/vo/SearchFilter;

    invoke-direct {v0}, Lcom/youku/vo/SearchFilter;-><init>()V

    .line 245
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->msgf:Lcom/youku/vo/SearchFilter;

    goto :goto_0
.end method

.method private initHorizontalScrollView(Landroid/widget/LinearLayout;Ljava/util/List;Ljava/lang/String;)V
    .locals 11
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
    .line 169
    .local p2, "ugcFliterItems":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/UGCFilterItems;>;"
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 170
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v2, "selectViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v3, "selectViewtxts":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v10, 0x1

    .line 173
    .local v10, "isfirst":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/UGCFilterItems;

    .line 175
    .local v5, "temp":Lcom/youku/vo/UGCFilterItems;
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->cont:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0302b8

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 177
    .local v7, "convertView":Landroid/view/View;
    const v0, 0x7f0c0277

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 180
    .local v4, "tv":Landroid/widget/TextView;
    iget-object v0, v5, Lcom/youku/vo/UGCFilterItems;->title:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    const v0, 0x7f0c0276

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 184
    .local v8, "filter_select":Landroid/view/View;
    if-eqz v10, :cond_0

    .line 185
    const/4 v10, 0x0

    .line 187
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->cont:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    :cond_0
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v0, Lcom/youku/widget/SearchFliterPopupWindow$2;

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/youku/widget/SearchFliterPopupWindow$2;-><init>(Lcom/youku/widget/SearchFliterPopupWindow;Ljava/util/List;Ljava/util/List;Landroid/widget/TextView;Lcom/youku/vo/UGCFilterItems;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 224
    .end local v4    # "tv":Landroid/widget/TextView;
    .end local v5    # "temp":Lcom/youku/vo/UGCFilterItems;
    .end local v7    # "convertView":Landroid/view/View;
    .end local v8    # "filter_select":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->viewpw:Landroid/view/View;

    const v1, 0x7f0c0c62

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->imageline1:Landroid/widget/ImageView;

    .line 82
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->viewpw:Landroid/view/View;

    const v1, 0x7f0c0c63

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->imageline2:Landroid/widget/ImageView;

    .line 83
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->viewpw:Landroid/view/View;

    const v1, 0x7f0c05d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->typeListView:Landroid/widget/LinearLayout;

    .line 84
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->viewpw:Landroid/view/View;

    const v1, 0x7f0c05da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->areaListView:Landroid/widget/LinearLayout;

    .line 85
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->viewpw:Landroid/view/View;

    const v1, 0x7f0c05de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->yearListView:Landroid/widget/LinearLayout;

    .line 86
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->viewpw:Landroid/view/View;

    const v1, 0x7f0c05d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/PageHorizontalScrollView;

    iput-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->areascroll:Lcom/youku/widget/PageHorizontalScrollView;

    .line 88
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->viewpw:Landroid/view/View;

    const v1, 0x7f0c05d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/PageHorizontalScrollView;

    iput-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->typescroll:Lcom/youku/widget/PageHorizontalScrollView;

    .line 90
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->viewpw:Landroid/view/View;

    const v1, 0x7f0c05dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/PageHorizontalScrollView;

    iput-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->yearscroll:Lcom/youku/widget/PageHorizontalScrollView;

    .line 93
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->viewpw:Landroid/view/View;

    const v1, 0x7f0c05dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->arealistCoverRight:Landroid/widget/ImageView;

    .line 95
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->viewpw:Landroid/view/View;

    const v1, 0x7f0c05db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->arealistCoverLeft:Landroid/widget/ImageView;

    .line 97
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->viewpw:Landroid/view/View;

    const v1, 0x7f0c05d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->typelistCoverRight:Landroid/widget/ImageView;

    .line 99
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->viewpw:Landroid/view/View;

    const v1, 0x7f0c05d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->typelistCoverLeft:Landroid/widget/ImageView;

    .line 101
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->viewpw:Landroid/view/View;

    const v1, 0x7f0c05e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->yearlistCoverRight:Landroid/widget/ImageView;

    .line 103
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->viewpw:Landroid/view/View;

    const v1, 0x7f0c05df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->yearlistCoverLeft:Landroid/widget/ImageView;

    .line 106
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->areascroll:Lcom/youku/widget/PageHorizontalScrollView;

    iget-object v1, p0, Lcom/youku/widget/SearchFliterPopupWindow;->arealistCoverRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageHorizontalScrollView;->setCoverRightImage(Landroid/widget/ImageView;)V

    .line 107
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->areascroll:Lcom/youku/widget/PageHorizontalScrollView;

    iget-object v1, p0, Lcom/youku/widget/SearchFliterPopupWindow;->arealistCoverLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageHorizontalScrollView;->setCoverLeftImage(Landroid/widget/ImageView;)V

    .line 108
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->areascroll:Lcom/youku/widget/PageHorizontalScrollView;

    sget v1, Lcom/youku/vo/DeviceInfo;->WIDTH:I

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageHorizontalScrollView;->setScreenWidth(I)V

    .line 109
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->typescroll:Lcom/youku/widget/PageHorizontalScrollView;

    iget-object v1, p0, Lcom/youku/widget/SearchFliterPopupWindow;->typelistCoverRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageHorizontalScrollView;->setCoverRightImage(Landroid/widget/ImageView;)V

    .line 110
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->typescroll:Lcom/youku/widget/PageHorizontalScrollView;

    iget-object v1, p0, Lcom/youku/widget/SearchFliterPopupWindow;->typelistCoverLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageHorizontalScrollView;->setCoverLeftImage(Landroid/widget/ImageView;)V

    .line 111
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->typescroll:Lcom/youku/widget/PageHorizontalScrollView;

    sget v1, Lcom/youku/vo/DeviceInfo;->WIDTH:I

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageHorizontalScrollView;->setScreenWidth(I)V

    .line 112
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->yearscroll:Lcom/youku/widget/PageHorizontalScrollView;

    iget-object v1, p0, Lcom/youku/widget/SearchFliterPopupWindow;->yearlistCoverRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageHorizontalScrollView;->setCoverRightImage(Landroid/widget/ImageView;)V

    .line 113
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->yearscroll:Lcom/youku/widget/PageHorizontalScrollView;

    iget-object v1, p0, Lcom/youku/widget/SearchFliterPopupWindow;->yearlistCoverLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageHorizontalScrollView;->setCoverLeftImage(Landroid/widget/ImageView;)V

    .line 114
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->yearscroll:Lcom/youku/widget/PageHorizontalScrollView;

    sget v1, Lcom/youku/vo/DeviceInfo;->WIDTH:I

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageHorizontalScrollView;->setScreenWidth(I)V

    .line 116
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->imageline1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->imageline2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->areascroll:Lcom/youku/widget/PageHorizontalScrollView;

    invoke-virtual {v0, v2}, Lcom/youku/widget/PageHorizontalScrollView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->typescroll:Lcom/youku/widget/PageHorizontalScrollView;

    invoke-virtual {v0, v2}, Lcom/youku/widget/PageHorizontalScrollView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->yearscroll:Lcom/youku/widget/PageHorizontalScrollView;

    invoke-virtual {v0, v2}, Lcom/youku/widget/PageHorizontalScrollView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->filters:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->filters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->filters:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/youku/widget/SearchFliterPopupWindow;->initUGCfilterData(Ljava/util/ArrayList;)V

    .line 124
    :cond_0
    return-void
.end method


# virtual methods
.method public initUGCfilterData(Ljava/util/ArrayList;)V
    .locals 7
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
    .line 127
    .local p1, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/UGCFilter;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 128
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 129
    const-string v4, "vtype"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/UGCFilter;

    iget-object v3, v3, Lcom/youku/vo/UGCFilter;->cat:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    iget-object v4, p0, Lcom/youku/widget/SearchFliterPopupWindow;->typeListView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/UGCFilter;

    iget-object v3, v3, Lcom/youku/vo/UGCFilter;->items:Ljava/util/ArrayList;

    const-string v5, "vtype"

    invoke-direct {p0, v4, v3, v5}, Lcom/youku/widget/SearchFliterPopupWindow;->initHorizontalScrollView(Landroid/widget/LinearLayout;Ljava/util/List;Ljava/lang/String;)V

    .line 128
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_1
    const-string v4, "timescope"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/UGCFilter;

    iget-object v3, v3, Lcom/youku/vo/UGCFilter;->cat:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 133
    iget-object v4, p0, Lcom/youku/widget/SearchFliterPopupWindow;->areaListView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/UGCFilter;

    iget-object v3, v3, Lcom/youku/vo/UGCFilter;->items:Ljava/util/ArrayList;

    const-string v5, "timescope"

    invoke-direct {p0, v4, v3, v5}, Lcom/youku/widget/SearchFliterPopupWindow;->initHorizontalScrollView(Landroid/widget/LinearLayout;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 135
    :cond_2
    const-string v4, "cateids"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/UGCFilter;

    iget-object v3, v3, Lcom/youku/vo/UGCFilter;->cat:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    iget-object v4, p0, Lcom/youku/widget/SearchFliterPopupWindow;->yearListView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/UGCFilter;

    iget-object v3, v3, Lcom/youku/vo/UGCFilter;->items:Ljava/util/ArrayList;

    const-string v5, "cateids"

    invoke-direct {p0, v4, v3, v5}, Lcom/youku/widget/SearchFliterPopupWindow;->initHorizontalScrollView(Landroid/widget/LinearLayout;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 140
    :cond_3
    iget-object v3, p0, Lcom/youku/widget/SearchFliterPopupWindow;->cont:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a048d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/youku/widget/SearchFliterPopupWindow;->pwheight:I

    .line 142
    new-instance v3, Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/youku/widget/SearchFliterPopupWindow;->viewpw:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v3, p0, Lcom/youku/widget/SearchFliterPopupWindow;->pw:Landroid/widget/PopupWindow;

    .line 144
    iget-object v3, p0, Lcom/youku/widget/SearchFliterPopupWindow;->pw:Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 145
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 147
    .local v0, "dw":Landroid/graphics/drawable/ColorDrawable;
    iget-object v3, p0, Lcom/youku/widget/SearchFliterPopupWindow;->pw:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v3, p0, Lcom/youku/widget/SearchFliterPopupWindow;->pw:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->update()V

    .line 149
    iget-object v3, p0, Lcom/youku/widget/SearchFliterPopupWindow;->pw:Landroid/widget/PopupWindow;

    new-instance v4, Lcom/youku/widget/SearchFliterPopupWindow$1;

    invoke-direct {v4, p0}, Lcom/youku/widget/SearchFliterPopupWindow$1;-><init>(Lcom/youku/widget/SearchFliterPopupWindow;)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 161
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->pw:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setFilterBtn(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "filterBtn"    # Landroid/widget/TextView;
    .param p2, "filterImg"    # Landroid/widget/ImageView;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/youku/widget/SearchFliterPopupWindow;->filterBtn:Landroid/widget/TextView;

    .line 287
    iput-object p2, p0, Lcom/youku/widget/SearchFliterPopupWindow;->filterImg:Landroid/widget/ImageView;

    .line 288
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 3
    .param p1, "RelateView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 256
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->pw:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->pw:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->filterBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->filterBtn:Landroid/widget/TextView;

    const v1, -0x8b00

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->filterImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->filterImg:Landroid/widget/ImageView;

    const v1, 0x7f0200eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow;->pw:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, v2, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 265
    :cond_2
    return-void
.end method
