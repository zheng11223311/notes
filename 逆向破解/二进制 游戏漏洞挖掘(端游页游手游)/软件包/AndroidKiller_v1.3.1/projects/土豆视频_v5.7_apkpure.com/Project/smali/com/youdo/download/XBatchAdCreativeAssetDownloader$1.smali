.class Lcom/youdo/download/XBatchAdCreativeAssetDownloader$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/openad/events/IXYDEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/download/XBatchAdCreativeAssetDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youdo/download/XBatchAdCreativeAssetDownloader;


# direct methods
.method constructor <init>(Lcom/youdo/download/XBatchAdCreativeAssetDownloader;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader$1;->this$0:Lcom/youdo/download/XBatchAdCreativeAssetDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/openad/events/IXYDEvent;)V
    .locals 3

    check-cast p1, Lcom/youdo/download/XAdCreativeAssetDownloader$InternalEvent;

    iget-object v0, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader$1;->this$0:Lcom/youdo/download/XBatchAdCreativeAssetDownloader;

    invoke-virtual {p1}, Lcom/youdo/download/XAdCreativeAssetDownloader$InternalEvent;->getType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/youdo/download/XAdCreativeAssetDownloader$InternalEvent;->instance:Lcom/youdo/vo/XAdInstance;

    invoke-static {v0, v1, v2}, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->access$000(Lcom/youdo/download/XBatchAdCreativeAssetDownloader;Ljava/lang/String;Lcom/youdo/vo/XAdInstance;)V

    return-void
.end method
