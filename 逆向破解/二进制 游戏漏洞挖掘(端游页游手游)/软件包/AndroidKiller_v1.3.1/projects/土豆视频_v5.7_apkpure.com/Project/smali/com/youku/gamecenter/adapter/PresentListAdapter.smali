.class public Lcom/youku/gamecenter/adapter/PresentListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PresentListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPackageName:Ljava/lang/String;

.field private mPresentHelper:Lcom/youku/gamecenter/present/PresentButtonHelper;

.field private mPresentInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/present/PresentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRemainderResId:Ljava/lang/Integer;

.field private res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/youku/gamecenter/present/PresentButtonHelper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "presentHelper"    # Lcom/youku/gamecenter/present/PresentButtonHelper;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter;->mPresentInfos:Ljava/util/List;

    .line 31
    sget v0, Lcom/youku/gamecenter/R$string;->game_present_remainder:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter;->mRemainderResId:Ljava/lang/Integer;

    .line 41
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 43
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter;->res:Landroid/content/res/Resources;

    .line 44
    iput-object p2, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter;->mPresentHelper:Lcom/youku/gamecenter/present/PresentButtonHelper;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/adapter/PresentListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/adapter/PresentListAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/gamecenter/adapter/PresentListAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/adapter/PresentListAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/gamecenter/adapter/PresentListAdapter;)Lcom/youku/gamecenter/present/PresentButtonHelper;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/adapter/PresentListAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter;->mPresentHelper:Lcom/youku/gamecenter/present/PresentButtonHelper;

    return-object v0
.end method

.method private initViewHolder(Landroid/view/View;)Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 187
    new-instance v0, Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;-><init>()V

    .line 189
    .local v0, "holder":Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;
    sget v1, Lcom/youku/gamecenter/R$id;->list_presetn_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 190
    sget v1, Lcom/youku/gamecenter/R$id;->rootview:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/widgets/ProgressView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    .line 191
    sget v1, Lcom/youku/gamecenter/R$id;->list_present_remainder:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;->remainder:Landroid/widget/TextView;

    .line 193
    sget v1, Lcom/youku/gamecenter/R$id;->list_present_content:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;->content:Landroid/widget/TextView;

    .line 195
    sget v1, Lcom/youku/gamecenter/R$id;->list_present_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;->button:Landroid/widget/Button;

    .line 196
    sget v1, Lcom/youku/gamecenter/R$id;->list_present_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;->container:Landroid/widget/RelativeLayout;

    .line 199
    return-object v0
.end method

.method private onItemClickListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 157
    new-instance v0, Lcom/youku/gamecenter/adapter/PresentListAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/youku/gamecenter/adapter/PresentListAdapter$2;-><init>(Lcom/youku/gamecenter/adapter/PresentListAdapter;Ljava/lang/String;)V

    return-object v0
.end method

.method private setUIDatas(Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;Lcom/youku/gamecenter/present/PresentInfo;)V
    .locals 7
    .param p1, "holder"    # Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;
    .param p2, "info"    # Lcom/youku/gamecenter/present/PresentInfo;

    .prologue
    const/4 v6, 0x0

    .line 113
    iget-object v0, p1, Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/youku/gamecenter/present/PresentInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p1, Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    invoke-virtual {v0, v6}, Lcom/youku/gamecenter/widgets/ProgressView;->setBackgroud(I)V

    .line 115
    iget-object v0, p1, Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    iget v1, p2, Lcom/youku/gamecenter/present/PresentInfo;->int_progress:I

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/ProgressView;->setProgress(I)V

    .line 116
    iget-object v0, p1, Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;->content:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/youku/gamecenter/present/PresentInfo;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p1, Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;->remainder:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter;->res:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter;->mRemainderResId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p2, Lcom/youku/gamecenter/present/PresentInfo;->int_progress:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p1, Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;->button:Landroid/widget/Button;

    iget-object v1, p2, Lcom/youku/gamecenter/present/PresentInfo;->status:Lcom/youku/gamecenter/present/PresentStatus;

    invoke-virtual {p0, v0, v1}, Lcom/youku/gamecenter/adapter/PresentListAdapter;->setPresentButton(Landroid/widget/Button;Lcom/youku/gamecenter/present/PresentStatus;)V

    .line 122
    iget-object v0, p1, Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;->container:Landroid/widget/RelativeLayout;

    iget-object v1, p2, Lcom/youku/gamecenter/present/PresentInfo;->id:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/youku/gamecenter/adapter/PresentListAdapter;->onItemClickListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p1, Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;->button:Landroid/widget/Button;

    new-instance v1, Lcom/youku/gamecenter/adapter/PresentListAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/youku/gamecenter/adapter/PresentListAdapter$1;-><init>(Lcom/youku/gamecenter/adapter/PresentListAdapter;Lcom/youku/gamecenter/present/PresentInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-void
.end method

.method private setViewHolderDatas(ILcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;Lcom/youku/gamecenter/present/PresentInfo;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;
    .param p3, "info"    # Lcom/youku/gamecenter/present/PresentInfo;

    .prologue
    .line 95
    invoke-virtual {p2}, Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;->getMyTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p3, Lcom/youku/gamecenter/present/PresentInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/youku/gamecenter/util/CommonUtils;->isHighSdkVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;->button:Landroid/widget/Button;

    iget-object v1, p3, Lcom/youku/gamecenter/present/PresentInfo;->status:Lcom/youku/gamecenter/present/PresentStatus;

    invoke-virtual {p0, v0, v1}, Lcom/youku/gamecenter/adapter/PresentListAdapter;->setPresentButton(Landroid/widget/Button;Lcom/youku/gamecenter/present/PresentStatus;)V

    .line 98
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;->progressView:Lcom/youku/gamecenter/widgets/ProgressView;

    iget v1, p3, Lcom/youku/gamecenter/present/PresentInfo;->int_progress:I

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/ProgressView;->setProgress(I)V

    .line 99
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;->remainder:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$string;->game_present_remainder:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p3, Lcom/youku/gamecenter/present/PresentInfo;->int_progress:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p3, Lcom/youku/gamecenter/present/PresentInfo;->id:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;->setMyTag(Ljava/lang/String;)V

    .line 110
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/youku/gamecenter/adapter/PresentListAdapter;->setUIDatas(Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;Lcom/youku/gamecenter/present/PresentInfo;)V

    .line 108
    iget-object v0, p3, Lcom/youku/gamecenter/present/PresentInfo;->id:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;->setMyTag(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter;->mPresentInfos:Ljava/util/List;

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter;->mPresentInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/youku/gamecenter/present/PresentInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter;->mPresentInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter;->mPresentInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter;->mPresentInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/present/PresentInfo;

    .line 67
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/adapter/PresentListAdapter;->getItem(I)Lcom/youku/gamecenter/present/PresentInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 72
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 77
    iget-object v2, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter;->mPresentInfos:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/present/PresentInfo;

    .line 78
    .local v1, "info":Lcom/youku/gamecenter/present/PresentInfo;
    new-instance v0, Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;-><init>()V

    .line 80
    .local v0, "holder":Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/youku/gamecenter/R$layout;->listview_present_item:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 82
    invoke-direct {p0, p2}, Lcom/youku/gamecenter/adapter/PresentListAdapter;->initViewHolder(Landroid/view/View;)Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;

    move-result-object v0

    .line 83
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lcom/youku/gamecenter/adapter/PresentListAdapter;->setViewHolderDatas(ILcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;Lcom/youku/gamecenter/present/PresentInfo;)V

    .line 89
    return-object p2

    .line 85
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;
    check-cast v0, Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/youku/gamecenter/adapter/PresentListAdapter$ViewHolder;
    goto :goto_0
.end method

.method public refreshButtonStatus(Lcom/youku/gamecenter/present/PresentInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/youku/gamecenter/present/PresentInfo;

    .prologue
    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter;->mPresentInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter;->mPresentInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/present/PresentInfo;

    .line 147
    .local v1, "mInfo":Lcom/youku/gamecenter/present/PresentInfo;
    iget-object v2, v1, Lcom/youku/gamecenter/present/PresentInfo;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/youku/gamecenter/present/PresentInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    iget-object v2, p1, Lcom/youku/gamecenter/present/PresentInfo;->status:Lcom/youku/gamecenter/present/PresentStatus;

    iput-object v2, v1, Lcom/youku/gamecenter/present/PresentInfo;->status:Lcom/youku/gamecenter/present/PresentStatus;

    .line 149
    iget v2, p1, Lcom/youku/gamecenter/present/PresentInfo;->int_progress:I

    iput v2, v1, Lcom/youku/gamecenter/present/PresentInfo;->int_progress:I

    .line 150
    invoke-virtual {p0}, Lcom/youku/gamecenter/adapter/PresentListAdapter;->notifyDataSetChanged()V

    .line 154
    .end local v1    # "mInfo":Lcom/youku/gamecenter/present/PresentInfo;
    :cond_0
    return-void

    .line 145
    .restart local v1    # "mInfo":Lcom/youku/gamecenter/present/PresentInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/present/PresentInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "presentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/present/PresentInfo;>;"
    if-nez p1, :cond_0

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter;->mPresentInfos:Ljava/util/List;

    goto :goto_0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter;->mPackageName:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setPresentButton(Landroid/widget/Button;Lcom/youku/gamecenter/present/PresentStatus;)V
    .locals 2
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "status"    # Lcom/youku/gamecenter/present/PresentStatus;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p2, Lcom/youku/gamecenter/present/PresentStatus;->text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p2, Lcom/youku/gamecenter/present/PresentStatus;->bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-boolean v0, p2, Lcom/youku/gamecenter/present/PresentStatus;->clickable:Z

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setClickable(Z)V

    .line 140
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/PresentListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p2, Lcom/youku/gamecenter/present/PresentStatus;->text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 142
    return-void
.end method
