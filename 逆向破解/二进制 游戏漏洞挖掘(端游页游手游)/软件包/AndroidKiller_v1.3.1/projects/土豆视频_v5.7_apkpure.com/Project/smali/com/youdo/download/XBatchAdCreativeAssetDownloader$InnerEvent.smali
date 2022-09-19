.class public Lcom/youdo/download/XBatchAdCreativeAssetDownloader$InnerEvent;
.super Lorg/openad/events/XYDEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/download/XBatchAdCreativeAssetDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InnerEvent"
.end annotation


# static fields
.field public static final BATCH_JOB_COMPLETED:Ljava/lang/String; = "BATCH_JOB_COMPLETED"

.field public static final BATCH_JOB_STARTED:Ljava/lang/String; = "BATCH_JOB_STARTED"

.field public static final SINGLE_JOB_COMPLETED:Ljava/lang/String; = "SINGLE_JOB_COMPLETED"


# instance fields
.field public adInstance:Lcom/youdo/vo/XAdInstance;

.field public success:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/youdo/download/XBatchAdCreativeAssetDownloader;


# direct methods
.method public constructor <init>(Lcom/youdo/download/XBatchAdCreativeAssetDownloader;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader$InnerEvent;->this$0:Lcom/youdo/download/XBatchAdCreativeAssetDownloader;

    invoke-direct {p0, p2}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader$InnerEvent;->success:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/youdo/download/XBatchAdCreativeAssetDownloader;Ljava/lang/String;Lcom/youdo/vo/XAdInstance;)V
    .locals 1

    iput-object p1, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader$InnerEvent;->this$0:Lcom/youdo/download/XBatchAdCreativeAssetDownloader;

    invoke-direct {p0, p2}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader$InnerEvent;->success:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader$InnerEvent;->adInstance:Lcom/youdo/vo/XAdInstance;

    return-void
.end method

.method public constructor <init>(Lcom/youdo/download/XBatchAdCreativeAssetDownloader;Ljava/lang/String;Lcom/youdo/vo/XAdInstance;Ljava/lang/Boolean;)V
    .locals 1

    iput-object p1, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader$InnerEvent;->this$0:Lcom/youdo/download/XBatchAdCreativeAssetDownloader;

    invoke-direct {p0, p2}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader$InnerEvent;->success:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader$InnerEvent;->adInstance:Lcom/youdo/vo/XAdInstance;

    iput-object p4, p0, Lcom/youdo/download/XBatchAdCreativeAssetDownloader$InnerEvent;->success:Ljava/lang/Boolean;

    return-void
.end method
