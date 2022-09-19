.class public Lcom/youdo/download/XAdCreativeAssetDownloader$InternalEvent;
.super Lorg/openad/events/XYDEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/download/XAdCreativeAssetDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InternalEvent"
.end annotation


# instance fields
.field public instance:Lcom/youdo/vo/XAdInstance;

.field final synthetic this$0:Lcom/youdo/download/XAdCreativeAssetDownloader;


# direct methods
.method public constructor <init>(Lcom/youdo/download/XAdCreativeAssetDownloader;Ljava/lang/String;Lcom/youdo/vo/XAdInstance;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/download/XAdCreativeAssetDownloader$InternalEvent;->this$0:Lcom/youdo/download/XAdCreativeAssetDownloader;

    invoke-direct {p0, p2}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/youdo/download/XAdCreativeAssetDownloader$InternalEvent;->instance:Lcom/youdo/vo/XAdInstance;

    return-void
.end method
