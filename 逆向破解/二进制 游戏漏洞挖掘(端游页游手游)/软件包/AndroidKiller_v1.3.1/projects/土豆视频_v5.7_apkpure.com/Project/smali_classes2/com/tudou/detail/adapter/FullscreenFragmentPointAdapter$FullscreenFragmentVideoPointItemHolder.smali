.class public Lcom/tudou/detail/adapter/FullscreenFragmentPointAdapter$FullscreenFragmentVideoPointItemHolder;
.super Ljava/lang/Object;
.source "FullscreenFragmentPointAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/adapter/FullscreenFragmentPointAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FullscreenFragmentVideoPointItemHolder"
.end annotation


# instance fields
.field content:Landroid/view/View;

.field mDesc:Landroid/widget/TextView;

.field public point:Lcom/youku/player/goplay/Point;

.field final synthetic this$0:Lcom/tudou/detail/adapter/FullscreenFragmentPointAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/tudou/detail/adapter/FullscreenFragmentPointAdapter;Landroid/view/View;)V
    .locals 1
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/tudou/detail/adapter/FullscreenFragmentPointAdapter$FullscreenFragmentVideoPointItemHolder;->this$0:Lcom/tudou/detail/adapter/FullscreenFragmentPointAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p2, p0, Lcom/tudou/detail/adapter/FullscreenFragmentPointAdapter$FullscreenFragmentVideoPointItemHolder;->content:Landroid/view/View;

    .line 93
    const v0, 0x7f0c03f6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentPointAdapter$FullscreenFragmentVideoPointItemHolder;->title:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f0c03f7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentPointAdapter$FullscreenFragmentVideoPointItemHolder;->mDesc:Landroid/widget/TextView;

    .line 95
    return-void
.end method
