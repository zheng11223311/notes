.class public Lcom/tudou/detail/adapter/ActorCorVideosAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ActorCorVideosAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemClickLis:Landroid/widget/AdapterView$OnItemClickListener;

.field private mVideos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TudouUGC;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/tudou/detail/adapter/ActorCorVideosAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/adapter/ActorCorVideosAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TudouUGC;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/TudouUGC;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 42
    sget-object v0, Lcom/tudou/detail/adapter/ActorCorVideosAdapter;->TAG:Ljava/lang/String;

    const-string v1, "ActorCatVideosAdapter cons"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/tudou/detail/adapter/ActorCorVideosAdapter;->mContext:Landroid/content/Context;

    .line 44
    iget-object v0, p0, Lcom/tudou/detail/adapter/ActorCorVideosAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/adapter/ActorCorVideosAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 45
    iput-object p2, p0, Lcom/tudou/detail/adapter/ActorCorVideosAdapter;->mVideos:Ljava/util/ArrayList;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/detail/adapter/ActorCorVideosAdapter;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/adapter/ActorCorVideosAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tudou/detail/adapter/ActorCorVideosAdapter;->mItemClickLis:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/tudou/detail/adapter/ActorCorVideosAdapter;->mVideos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/adapter/ActorCorVideosAdapter;->mVideos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "x1"    # I

    .prologue
    .line 27
    check-cast p1, Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;

    .end local p1    # "x0":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/tudou/detail/adapter/ActorCorVideosAdapter;->onBindViewHolder(Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;I)V
    .locals 4
    .param p1, "actorCategorysItemHolder"    # Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;
    .param p2, "i"    # I

    .prologue
    .line 56
    iget-object v1, p0, Lcom/tudou/detail/adapter/ActorCorVideosAdapter;->mVideos:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/TudouUGC;

    .line 57
    .local v0, "v":Lcom/youku/vo/TudouUGC;
    sget-object v1, Lcom/tudou/detail/adapter/ActorCorVideosAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "v = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v1, p1, Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;->mTitle:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/youku/vo/TudouUGC;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iput-object v0, p1, Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;->tudouUGC:Lcom/youku/vo/TudouUGC;

    .line 60
    iget-object v1, p1, Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;->mDesc:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u81ea\u9891\u9053:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/youku/vo/TudouUGC;->owner_username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v1, p1, Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;->mPic:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v2, v0, Lcom/youku/vo/TudouUGC;->pic_hd:Ljava/lang/String;

    new-instance v3, Lcom/tudou/detail/adapter/ActorCorVideosAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/tudou/detail/adapter/ActorCorVideosAdapter$1;-><init>(Lcom/tudou/detail/adapter/ActorCorVideosAdapter;Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;)V

    invoke-virtual {v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 71
    iget-object v1, p1, Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;->content:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    iget-object v1, p1, Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;->content:Landroid/view/View;

    new-instance v2, Lcom/tudou/detail/adapter/ActorCorVideosAdapter$2;

    invoke-direct {v2, p0, p2}, Lcom/tudou/detail/adapter/ActorCorVideosAdapter$2;-><init>(Lcom/tudou/detail/adapter/ActorCorVideosAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup;
    .param p2, "x1"    # I

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/tudou/detail/adapter/ActorCorVideosAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .prologue
    .line 50
    iget-object v1, p0, Lcom/tudou/detail/adapter/ActorCorVideosAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300bc

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "root":Landroid/view/View;
    new-instance v1, Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;

    invoke-direct {v1, p0, v0}, Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;-><init>(Lcom/tudou/detail/adapter/ActorCorVideosAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "lis"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/tudou/detail/adapter/ActorCorVideosAdapter;->mItemClickLis:Landroid/widget/AdapterView$OnItemClickListener;

    .line 39
    return-void
.end method
