.class public Lcom/tudou/adapter/DiscoveryItemLFView$LFCellHolder;
.super Ljava/lang/Object;
.source "DiscoveryItemLFView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/adapter/DiscoveryItemLFView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LFCellHolder"
.end annotation


# instance fields
.field public cell_title:Landroid/widget/TextView;

.field public contener:Landroid/view/View;

.field public icon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/tudou/adapter/DiscoveryItemLFView;

.field public view_count:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/tudou/adapter/DiscoveryItemLFView;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/tudou/adapter/DiscoveryItemLFView$LFCellHolder;->this$0:Lcom/tudou/adapter/DiscoveryItemLFView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
