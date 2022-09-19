.class Lcom/tudou/adapter/IndexPageAdapter$5;
.super Ljava/lang/Object;
.source "IndexPageAdapter.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/IndexPageAdapter;->setChannelIcon(Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;Lcom/youku/vo/ChannelListItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/IndexPageAdapter;

.field final synthetic val$cell:Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/tudou/adapter/IndexPageAdapter$5;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/IndexPageAdapter$5;->val$cell:Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 544
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 538
    iget-object v0, p0, Lcom/tudou/adapter/IndexPageAdapter$5;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$5;->val$cell:Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;

    iget-object v1, v1, Lcom/tudou/adapter/IndexChannelItem$IndexChannelCell;->mChannelImg:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/tudou/adapter/IndexPageAdapter;->access$200(Lcom/tudou/adapter/IndexPageAdapter;Landroid/widget/ImageView;)V

    .line 539
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 533
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 528
    return-void
.end method
