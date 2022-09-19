.class public Lcom/youku/gamecenter/adapter/GameH5CardListAdapter;
.super Landroid/widget/BaseAdapter;
.source "GameH5CardListAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mType"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameH5CardListAdapter;->mList:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/GameH5CardListAdapter;->mContext:Landroid/content/Context;

    .line 32
    iput p2, p0, Lcom/youku/gamecenter/adapter/GameH5CardListAdapter;->mType:I

    .line 33
    return-void
.end method

.method private initHolder(Landroid/view/View;)Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 96
    new-instance v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;

    invoke-direct {v0}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;-><init>()V

    .line 98
    .local v0, "holder":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;
    sget v1, Lcom/youku/gamecenter/R$id;->game_activities_card_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;->icon_txt:Landroid/widget/TextView;

    .line 99
    sget v1, Lcom/youku/gamecenter/R$id;->game_activities_card_title_txt:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;->title:Landroid/widget/TextView;

    .line 100
    sget v1, Lcom/youku/gamecenter/R$id;->game_activities_card_poster:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;->poster:Landroid/widget/ImageView;

    .line 101
    sget v1, Lcom/youku/gamecenter/R$id;->game_activities_card_root:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;->parentLayout:Landroid/view/View;

    .line 103
    return-object v0
.end method

.method private setHolderDatas(Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardInfo;)V
    .locals 5
    .param p1, "holder"    # Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;
    .param p2, "info"    # Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardInfo;

    .prologue
    .line 73
    iget-object v1, p1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-static {}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->getInstance()Lcom/youku/gamecenter/image/ImageLoaderHelper;

    move-result-object v1

    iget-object v2, p2, Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardInfo;->img:Ljava/lang/String;

    iget-object v3, p1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;->poster:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 76
    const-string v0, "39"

    .line 78
    .local v0, "source":Ljava/lang/String;
    iget v1, p0, Lcom/youku/gamecenter/adapter/GameH5CardListAdapter;->mType:I

    sget v2, Lcom/youku/gamecenter/GameH5CardListActivity;->GAME_SUBJECTS_LIST_TYPE:I

    if-ne v1, v2, :cond_0

    .line 79
    const-string v0, "49"

    .line 82
    :cond_0
    iget-object v1, p1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;->parentLayout:Landroid/view/View;

    new-instance v2, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameH5CardClickListener;

    iget-object v3, p0, Lcom/youku/gamecenter/adapter/GameH5CardListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p2, Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardInfo;->url:Ljava/lang/String;

    invoke-direct {v2, v3, v0, v4}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$GameH5CardClickListener;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget v1, p0, Lcom/youku/gamecenter/adapter/GameH5CardListAdapter;->mType:I

    sget v2, Lcom/youku/gamecenter/GameH5CardListActivity;->GAME_SUBJECTS_LIST_TYPE:I

    if-ne v1, v2, :cond_1

    .line 85
    iget-object v1, p1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;->icon_txt:Landroid/widget/TextView;

    sget v2, Lcom/youku/gamecenter/R$string;->game_homepage_entry_subject:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 86
    iget-object v1, p1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;->icon_txt:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/youku/gamecenter/adapter/GameH5CardListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/youku/gamecenter/R$color;->game_h5_card_subject:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v1, p1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;->icon_txt:Landroid/widget/TextView;

    sget v2, Lcom/youku/gamecenter/R$string;->game_homepage_entry_activities:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 91
    iget-object v1, p1, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;->icon_txt:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/youku/gamecenter/adapter/GameH5CardListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/youku/gamecenter/R$color;->game_h5_card_activities:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameH5CardListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameH5CardListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/adapter/GameH5CardListAdapter;->getItem(I)Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 51
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 59
    if-nez p2, :cond_0

    .line 60
    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameH5CardListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$layout;->layout_game_home_activities_item_card:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 61
    invoke-direct {p0, p2}, Lcom/youku/gamecenter/adapter/GameH5CardListAdapter;->initHolder(Landroid/view/View;)Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;

    move-result-object v0

    .line 62
    .local v0, "holder":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    :goto_0
    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameH5CardListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardInfo;

    invoke-direct {p0, v0, v1}, Lcom/youku/gamecenter/adapter/GameH5CardListAdapter;->setHolderDatas(Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardInfo;)V

    .line 69
    return-object p2

    .line 64
    .end local v0    # "holder":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;

    .restart local v0    # "holder":Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter$H5CardViewHolder;
    goto :goto_0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardInfo;>;"
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/GameH5CardListAdapter;->mList:Ljava/util/List;

    .line 37
    return-void
.end method
