.class public Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "HorizonPlaylistAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HorizonPlaylistItemHolder"
.end annotation


# instance fields
.field content:Landroid/view/View;

.field duration:Landroid/widget/TextView;

.field mMark:Landroid/widget/ImageView;

.field playtimes:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;Landroid/view/View;)V
    .locals 2
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;->this$0:Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;

    .line 131
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 132
    const v0, 0x7f0c0341

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;->content:Landroid/view/View;

    .line 133
    const v0, 0x7f0c0342

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;->title:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f0c0345

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;->mMark:Landroid/widget/ImageView;

    .line 135
    const-string v0, "number"

    invoke-static {p1}, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;->access$100(Lcom/tudou/detail/adapter/HorizonPlaylistAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 137
    :cond_0
    const v0, 0x7f0c0343

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;->duration:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f0c0344

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/HorizonPlaylistAdapter$HorizonPlaylistItemHolder;->playtimes:Landroid/widget/TextView;

    goto :goto_0
.end method
