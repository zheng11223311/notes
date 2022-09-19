.class public Lcom/youku/gamecenter/adapter/GameCategoryListAdapter;
.super Landroid/widget/BaseAdapter;
.source "GameCategoryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/adapter/GameCategoryListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mCategoryInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/CategoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/support/v4/app/FragmentActivity;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .param p1, "context"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameCategoryListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 27
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/GameCategoryListAdapter;->mContext:Landroid/support/v4/app/FragmentActivity;

    .line 28
    return-void
.end method

.method private inflateViewByDevice()Landroid/view/View;
    .locals 4

    .prologue
    .line 65
    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameCategoryListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/youku/gamecenter/R$layout;->listview_gamelist_category_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method private initViewHolder(Landroid/view/View;)Lcom/youku/gamecenter/adapter/GameCategoryListAdapter$ViewHolder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 81
    new-instance v0, Lcom/youku/gamecenter/adapter/GameCategoryListAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/youku/gamecenter/adapter/GameCategoryListAdapter$ViewHolder;-><init>()V

    .line 83
    .local v0, "holder":Lcom/youku/gamecenter/adapter/GameCategoryListAdapter$ViewHolder;
    sget v1, Lcom/youku/gamecenter/R$id;->list_category_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameCategoryListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 84
    sget v1, Lcom/youku/gamecenter/R$id;->list_category_name:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameCategoryListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 85
    sget v1, Lcom/youku/gamecenter/R$id;->list_category_des:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/youku/gamecenter/adapter/GameCategoryListAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    .line 87
    return-object v0
.end method

.method private setViewHolderDatas(ILcom/youku/gamecenter/adapter/GameCategoryListAdapter$ViewHolder;Lcom/youku/gamecenter/data/CategoryInfo;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/youku/gamecenter/adapter/GameCategoryListAdapter$ViewHolder;
    .param p3, "info"    # Lcom/youku/gamecenter/data/CategoryInfo;

    .prologue
    .line 72
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameCategoryListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/youku/gamecenter/data/CategoryInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameCategoryListAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/youku/gamecenter/data/CategoryInfo;->category_describe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p2, Lcom/youku/gamecenter/adapter/GameCategoryListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget v1, Lcom/youku/gamecenter/R$drawable;->game_list_item_default:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    invoke-static {}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->getInstance()Lcom/youku/gamecenter/image/ImageLoaderHelper;

    move-result-object v0

    iget-object v1, p3, Lcom/youku/gamecenter/data/CategoryInfo;->icon:Ljava/lang/String;

    iget-object v2, p2, Lcom/youku/gamecenter/adapter/GameCategoryListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayGameIcon(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 77
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameCategoryListAdapter;->mCategoryInfos:Ljava/util/List;

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameCategoryListAdapter;->mCategoryInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    iget-object v2, p0, Lcom/youku/gamecenter/adapter/GameCategoryListAdapter;->mCategoryInfos:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/CategoryInfo;

    .line 55
    .local v1, "info":Lcom/youku/gamecenter/data/CategoryInfo;
    invoke-direct {p0}, Lcom/youku/gamecenter/adapter/GameCategoryListAdapter;->inflateViewByDevice()Landroid/view/View;

    move-result-object p2

    .line 56
    invoke-direct {p0, p2}, Lcom/youku/gamecenter/adapter/GameCategoryListAdapter;->initViewHolder(Landroid/view/View;)Lcom/youku/gamecenter/adapter/GameCategoryListAdapter$ViewHolder;

    move-result-object v0

    .line 58
    .local v0, "holder":Lcom/youku/gamecenter/adapter/GameCategoryListAdapter$ViewHolder;
    invoke-direct {p0, p1, v0, v1}, Lcom/youku/gamecenter/adapter/GameCategoryListAdapter;->setViewHolderDatas(ILcom/youku/gamecenter/adapter/GameCategoryListAdapter$ViewHolder;Lcom/youku/gamecenter/data/CategoryInfo;)V

    .line 60
    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/CategoryInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "d":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/CategoryInfo;>;"
    iput-object p1, p0, Lcom/youku/gamecenter/adapter/GameCategoryListAdapter;->mCategoryInfos:Ljava/util/List;

    .line 32
    return-void
.end method
