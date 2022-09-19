.class public Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ActorCorVideosAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/adapter/ActorCorVideosAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActorCorVideosItemHolder"
.end annotation


# instance fields
.field content:Landroid/view/View;

.field mDesc:Landroid/widget/TextView;

.field mPic:Landroid/widget/ImageView;

.field mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/tudou/detail/adapter/ActorCorVideosAdapter;

.field public tudouUGC:Lcom/youku/vo/TudouUGC;


# direct methods
.method public constructor <init>(Lcom/tudou/detail/adapter/ActorCorVideosAdapter;Landroid/view/View;)V
    .locals 1
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;->this$0:Lcom/tudou/detail/adapter/ActorCorVideosAdapter;

    .line 97
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 98
    iput-object p2, p0, Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;->content:Landroid/view/View;

    .line 99
    const v0, 0x7f0c037b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;->mPic:Landroid/widget/ImageView;

    .line 100
    const v0, 0x7f0c037c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;->mTitle:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f0c037d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/ActorCorVideosAdapter$ActorCorVideosItemHolder;->mDesc:Landroid/widget/TextView;

    .line 102
    return-void
.end method
