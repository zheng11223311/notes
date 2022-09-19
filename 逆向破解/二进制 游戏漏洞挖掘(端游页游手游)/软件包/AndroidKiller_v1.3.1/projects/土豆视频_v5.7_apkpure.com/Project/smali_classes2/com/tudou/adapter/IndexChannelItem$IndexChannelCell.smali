.class public Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;
.super Ljava/lang/Object;
.source "IndexChannelItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/adapter/IndexChannelItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IndexChannelCell"
.end annotation


# instance fields
.field public mChannelImg:Landroid/widget/ImageView;

.field public mChannelTitle:Landroid/widget/TextView;

.field public mView:Landroid/view/View;

.field final synthetic this$0:Lcom/tudou/adapter/IndexChannelItem;


# direct methods
.method public constructor <init>(Lcom/tudou/adapter/IndexChannelItem;Landroid/view/View;)V
    .locals 1
    .param p2, "aView"    # Landroid/view/View;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;->this$0:Lcom/tudou/adapter/IndexChannelItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;->mView:Landroid/view/View;

    .line 65
    const v0, 0x7f0c073c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;->mChannelImg:Landroid/widget/ImageView;

    .line 66
    const v0, 0x7f0c026e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;->mChannelTitle:Landroid/widget/TextView;

    .line 67
    return-void
.end method
