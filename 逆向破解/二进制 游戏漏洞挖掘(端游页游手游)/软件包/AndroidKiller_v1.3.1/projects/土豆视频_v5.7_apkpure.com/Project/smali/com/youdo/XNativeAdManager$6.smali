.class Lcom/youdo/XNativeAdManager$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youdo/XNativeAdManager;->onXAdSlotStart(Lcom/youdo/vo/XAdInstance;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youdo/XNativeAdManager;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/youdo/XNativeAdManager;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/XNativeAdManager$6;->this$0:Lcom/youdo/XNativeAdManager;

    iput-object p2, p0, Lcom/youdo/XNativeAdManager$6;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/youdo/tracking/ReportManager;->getInstance()Lcom/youdo/tracking/ReportManager;

    move-result-object v0

    iget-object v1, p0, Lcom/youdo/XNativeAdManager$6;->val$list:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/youdo/tracking/ReportManager;->sendXAdHttpTracking(Ljava/util/List;)V

    return-void
.end method
