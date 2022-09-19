.class public Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$PlaylistItemHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FullScreenPlaylistAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlaylistItemHolder"
.end annotation


# instance fields
.field duration:Landroid/widget/TextView;

.field mMark:Landroid/widget/ImageView;

.field playtimes:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;Landroid/view/View;)V
    .locals 2
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$PlaylistItemHolder;->this$0:Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;

    .line 211
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 212
    const-string v0, "number"

    invoke-static {p1}, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->access$300(Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const v0, 0x7f0c040d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$PlaylistItemHolder;->title:Landroid/widget/TextView;

    .line 214
    const v0, 0x7f0c040e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$PlaylistItemHolder;->mMark:Landroid/widget/ImageView;

    .line 221
    :goto_0
    return-void

    .line 216
    :cond_0
    const v0, 0x7f0c040b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$PlaylistItemHolder;->mMark:Landroid/widget/ImageView;

    .line 217
    const v0, 0x7f0c0408

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$PlaylistItemHolder;->title:Landroid/widget/TextView;

    .line 218
    const v0, 0x7f0c0409

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$PlaylistItemHolder;->duration:Landroid/widget/TextView;

    .line 219
    const v0, 0x7f0c040a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$PlaylistItemHolder;->playtimes:Landroid/widget/TextView;

    goto :goto_0
.end method
