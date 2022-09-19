.class public Lcom/tudou/adapter/DiscoveryItemRankingListView$CellHolder;
.super Ljava/lang/Object;
.source "DiscoveryItemRankingListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/adapter/DiscoveryItemRankingListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CellHolder"
.end annotation


# instance fields
.field public cell_title:Landroid/widget/TextView;

.field public contener:Landroid/view/View;

.field public icon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/tudou/adapter/DiscoveryItemRankingListView;


# direct methods
.method public constructor <init>(Lcom/tudou/adapter/DiscoveryItemRankingListView;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/tudou/adapter/DiscoveryItemRankingListView$CellHolder;->this$0:Lcom/tudou/adapter/DiscoveryItemRankingListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
