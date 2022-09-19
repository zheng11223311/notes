.class public Lcom/tudou/detail/adapter/PlaylistAdapter$PlaylistItemHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PlaylistAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/adapter/PlaylistAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlaylistItemHolder"
.end annotation


# instance fields
.field content:Landroid/view/View;

.field duration:Landroid/widget/TextView;

.field mMark:Landroid/widget/ImageView;

.field playtimes:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/tudou/detail/adapter/PlaylistAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/tudou/detail/adapter/PlaylistAdapter;Landroid/view/View;)V
    .locals 2
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/tudou/detail/adapter/PlaylistAdapter$PlaylistItemHolder;->this$0:Lcom/tudou/detail/adapter/PlaylistAdapter;

    .line 121
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 122
    const v0, 0x7f0c033d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/PlaylistAdapter$PlaylistItemHolder;->title:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f0c0340

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/PlaylistAdapter$PlaylistItemHolder;->mMark:Landroid/widget/ImageView;

    .line 124
    const v0, 0x7f0c033c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/adapter/PlaylistAdapter$PlaylistItemHolder;->content:Landroid/view/View;

    .line 125
    const-string v0, "number"

    invoke-static {p1}, Lcom/tudou/detail/adapter/PlaylistAdapter;->access$000(Lcom/tudou/detail/adapter/PlaylistAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_0
    const v0, 0x7f0c033e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/PlaylistAdapter$PlaylistItemHolder;->duration:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f0c033f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/PlaylistAdapter$PlaylistItemHolder;->playtimes:Landroid/widget/TextView;

    goto :goto_0
.end method
