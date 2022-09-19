.class Lcom/youku/pushsdk/control/CollectDataManager$2;
.super Ljava/lang/Object;
.source "CollectDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/pushsdk/control/CollectDataManager;->collectBaseInfo(ZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/pushsdk/control/CollectDataManager;

.field private final synthetic val$apps:Ljava/lang/String;

.field private final synthetic val$isConn:Z

.field private final synthetic val$topics:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/youku/pushsdk/control/CollectDataManager;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/youku/pushsdk/control/CollectDataManager$2;->this$0:Lcom/youku/pushsdk/control/CollectDataManager;

    iput-boolean p2, p0, Lcom/youku/pushsdk/control/CollectDataManager$2;->val$isConn:Z

    iput-object p3, p0, Lcom/youku/pushsdk/control/CollectDataManager$2;->val$topics:Ljava/lang/String;

    iput-object p4, p0, Lcom/youku/pushsdk/control/CollectDataManager$2;->val$apps:Ljava/lang/String;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 90
    invoke-static {}, Lcom/youku/pushsdk/control/CollectDataManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "collect base info run"

    invoke-static {v0, v1}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/youku/pushsdk/control/CollectDataManager$2;->this$0:Lcom/youku/pushsdk/control/CollectDataManager;

    iget-boolean v1, p0, Lcom/youku/pushsdk/control/CollectDataManager$2;->val$isConn:Z

    iget-object v2, p0, Lcom/youku/pushsdk/control/CollectDataManager$2;->val$topics:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/pushsdk/control/CollectDataManager$2;->val$apps:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/youku/pushsdk/control/CollectDataManager;->access$7(Lcom/youku/pushsdk/control/CollectDataManager;ZLjava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method
