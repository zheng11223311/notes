.class public Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;
.super Landroid/widget/BaseAdapter;
.source "ClassifyAllFiltrateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mChannelFliterBean:Lcom/youku/vo/ChannelFliterBean;

.field private mContext:Landroid/content/Context;

.field private mFiltrateState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/youku/vo/ClassifyAllFiltrateStateBean;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/youku/vo/ChannelFliterBean;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mChannelFliterBean"    # Lcom/youku/vo/ChannelFliterBean;
    .param p3, "mHandler"    # Landroid/os/Handler;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->mChannelFliterBean:Lcom/youku/vo/ChannelFliterBean;

    .line 41
    iput-object p3, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->mHandler:Landroid/os/Handler;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->mFiltrateState:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;)Lcom/youku/vo/ChannelFliterBean;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->mChannelFliterBean:Lcom/youku/vo/ChannelFliterBean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->setSelectState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->sendFiltrateData(I)V

    return-void
.end method

.method private itemState(IILjava/lang/String;)Landroid/widget/TextView;
    .locals 9
    .param p1, "position"    # I
    .param p2, "selectIndex"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const v8, 0x7f0e00b3

    const v7, 0x7f020a2a

    const/4 v6, -0x2

    .line 132
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 133
    .local v3, "tv":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0e00a1

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 134
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 135
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 137
    if-nez p1, :cond_1

    .line 138
    iget-object v4, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->mChannelFliterBean:Lcom/youku/vo/ChannelFliterBean;

    iget-object v4, v4, Lcom/youku/vo/ChannelFliterBean;->sort:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/ChannelFliterSortItemTudouBean;

    iget-boolean v4, v4, Lcom/youku/vo/ChannelFliterSortItemTudouBean;->isSelected:Z

    if-eqz v4, :cond_0

    .line 139
    iget-object v4, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 140
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 150
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0063

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 151
    .local v2, "padding":I
    div-int/lit8 v4, v2, 0x6

    div-int/lit8 v5, v2, 0x6

    invoke-virtual {v3, v2, v4, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 153
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 154
    .local v1, "itemParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0064

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 155
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    new-instance v4, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$2;

    invoke-direct {v4, p0, p1, p2}, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$2;-><init>(Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    return-object v3

    .line 143
    .end local v1    # "itemParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "padding":I
    :cond_1
    add-int/lit8 v0, p1, -0x1

    .line 144
    .local v0, "index":I
    iget-object v4, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->mChannelFliterBean:Lcom/youku/vo/ChannelFliterBean;

    iget-object v4, v4, Lcom/youku/vo/ChannelFliterBean;->items:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/ChannelFliterTypeTudouBean;

    iget-object v4, v4, Lcom/youku/vo/ChannelFliterTypeTudouBean;->secondTags:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/ChannelFliterTypeItemTudouBean;

    iget-boolean v4, v4, Lcom/youku/vo/ChannelFliterTypeItemTudouBean;->isSelected:Z

    if-eqz v4, :cond_0

    .line 145
    iget-object v4, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 146
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private sendFiltrateData(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 221
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 222
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x2715

    iput v1, v0, Landroid/os/Message;->what:I

    .line 223
    iget-object v1, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 224
    return-void
.end method

.method private setSelectState(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 205
    if-nez p1, :cond_0

    .line 206
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->mChannelFliterBean:Lcom/youku/vo/ChannelFliterBean;

    iget-object v2, v2, Lcom/youku/vo/ChannelFliterBean;->sort:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 207
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->mChannelFliterBean:Lcom/youku/vo/ChannelFliterBean;

    iget-object v2, v2, Lcom/youku/vo/ChannelFliterBean;->sort:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ChannelFliterSortItemTudouBean;

    iput-boolean v3, v2, Lcom/youku/vo/ChannelFliterSortItemTudouBean;->isSelected:Z

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    .end local v0    # "i":I
    :cond_0
    add-int/lit8 v1, p1, -0x1

    .line 210
    .local v1, "index":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->mChannelFliterBean:Lcom/youku/vo/ChannelFliterBean;

    iget-object v2, v2, Lcom/youku/vo/ChannelFliterBean;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ChannelFliterTypeTudouBean;

    iget-object v2, v2, Lcom/youku/vo/ChannelFliterTypeTudouBean;->secondTags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 211
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->mChannelFliterBean:Lcom/youku/vo/ChannelFliterBean;

    iget-object v2, v2, Lcom/youku/vo/ChannelFliterBean;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ChannelFliterTypeTudouBean;

    iget-object v2, v2, Lcom/youku/vo/ChannelFliterTypeTudouBean;->secondTags:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ChannelFliterTypeItemTudouBean;

    iput-boolean v3, v2, Lcom/youku/vo/ChannelFliterTypeItemTudouBean;->isSelected:Z

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 215
    .end local v1    # "index":I
    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->mChannelFliterBean:Lcom/youku/vo/ChannelFliterBean;

    iget-object v0, v0, Lcom/youku/vo/ChannelFliterBean;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->mChannelFliterBean:Lcom/youku/vo/ChannelFliterBean;

    iget-object v0, v0, Lcom/youku/vo/ChannelFliterBean;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 56
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v10, 0x7f0e00b3

    const v9, 0x7f020a2a

    const/4 v8, 0x0

    .line 62
    if-nez p2, :cond_0

    .line 63
    iget-object v5, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03019f

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 64
    new-instance v3, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$ViewHolder;-><init>(Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;)V

    .line 65
    .local v3, "mViewHolder":Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$ViewHolder;
    const v5, 0x7f0c075f

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/youku/widget/PageHorizontalScrollView;

    iput-object v5, v3, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$ViewHolder;->mFiltrateHsv:Lcom/youku/widget/PageHorizontalScrollView;

    .line 66
    const v5, 0x7f0c04b5

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v3, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$ViewHolder;->mFiltrateLl:Landroid/widget/LinearLayout;

    .line 67
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    :goto_0
    iget-object v5, v3, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$ViewHolder;->mFiltrateLl:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 75
    if-nez p1, :cond_1

    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->mChannelFliterBean:Lcom/youku/vo/ChannelFliterBean;

    iget-object v5, v5, Lcom/youku/vo/ChannelFliterBean;->sort:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 77
    iget-object v5, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->mChannelFliterBean:Lcom/youku/vo/ChannelFliterBean;

    iget-object v5, v5, Lcom/youku/vo/ChannelFliterBean;->sort:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/ChannelFliterSortItemTudouBean;

    iget-object v5, v5, Lcom/youku/vo/ChannelFliterSortItemTudouBean;->name:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v5}, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->itemState(IILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    .line 78
    .local v4, "tv":Landroid/widget/TextView;
    iget-object v5, v3, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$ViewHolder;->mFiltrateLl:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 69
    .end local v0    # "i":I
    .end local v3    # "mViewHolder":Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$ViewHolder;
    .end local v4    # "tv":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$ViewHolder;

    .restart local v3    # "mViewHolder":Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$ViewHolder;
    goto :goto_0

    .line 81
    :cond_1
    add-int/lit8 v1, p1, -0x1

    .line 82
    .local v1, "index":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->mChannelFliterBean:Lcom/youku/vo/ChannelFliterBean;

    iget-object v5, v5, Lcom/youku/vo/ChannelFliterBean;->items:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/ChannelFliterTypeTudouBean;

    iget-object v5, v5, Lcom/youku/vo/ChannelFliterTypeTudouBean;->secondTags:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 83
    iget-object v5, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->mChannelFliterBean:Lcom/youku/vo/ChannelFliterBean;

    iget-object v5, v5, Lcom/youku/vo/ChannelFliterBean;->items:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/ChannelFliterTypeTudouBean;

    iget-object v5, v5, Lcom/youku/vo/ChannelFliterTypeTudouBean;->secondTags:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/ChannelFliterTypeItemTudouBean;

    iget-object v5, v5, Lcom/youku/vo/ChannelFliterTypeItemTudouBean;->name:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v5}, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->itemState(IILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    .line 84
    .restart local v4    # "tv":Landroid/widget/TextView;
    iget-object v5, v3, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$ViewHolder;->mFiltrateLl:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 88
    .end local v1    # "index":I
    .end local v4    # "tv":Landroid/widget/TextView;
    :cond_2
    iget-object v5, v3, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$ViewHolder;->mFiltrateHsv:Lcom/youku/widget/PageHorizontalScrollView;

    iget-object v6, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Lcom/youku/widget/PageHorizontalScrollView;->setHandler(Landroid/os/Handler;)V

    .line 89
    iget-object v5, v3, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$ViewHolder;->mFiltrateHsv:Lcom/youku/widget/PageHorizontalScrollView;

    new-instance v6, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$1;

    invoke-direct {v6, p0, p1}, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$1;-><init>(Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;I)V

    invoke-virtual {v5, v6}, Lcom/youku/widget/PageHorizontalScrollView;->setScrollViewListener(Lcom/youku/widget/PageHorizontalScrollView$ScrollViewListener;)V

    .line 111
    iget-object v5, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->mFiltrateState:Ljava/util/HashMap;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->mFiltrateState:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 112
    iget-object v5, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->mFiltrateState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ClassifyAllFiltrateStateBean;

    .line 113
    .local v2, "mState":Lcom/youku/vo/ClassifyAllFiltrateStateBean;
    iget-object v5, v3, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$ViewHolder;->mFiltrateHsv:Lcom/youku/widget/PageHorizontalScrollView;

    iget v6, v2, Lcom/youku/vo/ClassifyAllFiltrateStateBean;->scrollX:I

    invoke-virtual {v5, v6, v8}, Lcom/youku/widget/PageHorizontalScrollView;->scrollTo(II)V

    .line 114
    const/4 v0, 0x0

    :goto_3
    iget-object v5, v3, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$ViewHolder;->mFiltrateLl:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 115
    iget-object v5, v3, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$ViewHolder;->mFiltrateLl:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0c0277

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object v4, v5

    check-cast v4, Landroid/widget/TextView;

    .line 116
    .restart local v4    # "tv":Landroid/widget/TextView;
    if-eqz v4, :cond_3

    .line 117
    iget v5, v2, Lcom/youku/vo/ClassifyAllFiltrateStateBean;->selectItemIndex:I

    if-ne v0, v5, :cond_4

    .line 118
    iget-object v5, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 119
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 114
    :cond_3
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 121
    :cond_4
    iget-object v5, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 122
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_4

    .line 128
    .end local v2    # "mState":Lcom/youku/vo/ClassifyAllFiltrateStateBean;
    .end local v4    # "tv":Landroid/widget/TextView;
    :cond_5
    return-object p2
.end method

.method public setState(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/youku/vo/ClassifyAllFiltrateStateBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "mFiltrateState":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/youku/vo/ClassifyAllFiltrateStateBean;>;"
    iput-object p1, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->mFiltrateState:Ljava/util/HashMap;

    .line 233
    return-void
.end method
