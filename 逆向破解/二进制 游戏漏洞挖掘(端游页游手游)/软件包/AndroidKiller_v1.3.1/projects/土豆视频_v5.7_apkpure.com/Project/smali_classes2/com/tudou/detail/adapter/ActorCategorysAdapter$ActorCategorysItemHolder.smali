.class public Lcom/tudou/detail/adapter/ActorCategorysAdapter$ActorCategorysItemHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ActorCategorysAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/adapter/ActorCategorysAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActorCategorysItemHolder"
.end annotation


# instance fields
.field content:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/tudou/detail/adapter/ActorCategorysAdapter;


# direct methods
.method public constructor <init>(Lcom/tudou/detail/adapter/ActorCategorysAdapter;Landroid/view/View;)V
    .locals 0
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/tudou/detail/adapter/ActorCategorysAdapter$ActorCategorysItemHolder;->this$0:Lcom/tudou/detail/adapter/ActorCategorysAdapter;

    .line 83
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 84
    check-cast p2, Landroid/widget/TextView;

    .end local p2    # "itemView":Landroid/view/View;
    iput-object p2, p0, Lcom/tudou/detail/adapter/ActorCategorysAdapter$ActorCategorysItemHolder;->content:Landroid/widget/TextView;

    .line 85
    return-void
.end method
