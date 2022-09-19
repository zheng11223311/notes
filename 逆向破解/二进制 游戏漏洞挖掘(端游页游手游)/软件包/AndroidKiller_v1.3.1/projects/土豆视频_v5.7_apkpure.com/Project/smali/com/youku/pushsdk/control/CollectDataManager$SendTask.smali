.class Lcom/youku/pushsdk/control/CollectDataManager$SendTask;
.super Ljava/lang/Object;
.source "CollectDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/pushsdk/control/CollectDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendTask"
.end annotation


# instance fields
.field pack:Lcom/youku/pushsdk/data/EventDataPackage;

.field final synthetic this$0:Lcom/youku/pushsdk/control/CollectDataManager;


# direct methods
.method public constructor <init>(Lcom/youku/pushsdk/control/CollectDataManager;Lcom/youku/pushsdk/data/EventDataPackage;)V
    .locals 0
    .param p2, "pack"    # Lcom/youku/pushsdk/data/EventDataPackage;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/youku/pushsdk/control/CollectDataManager$SendTask;->this$0:Lcom/youku/pushsdk/control/CollectDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p2, p0, Lcom/youku/pushsdk/control/CollectDataManager$SendTask;->pack:Lcom/youku/pushsdk/data/EventDataPackage;

    .line 143
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/youku/pushsdk/control/CollectDataManager$SendTask;->this$0:Lcom/youku/pushsdk/control/CollectDataManager;

    iget-object v1, p0, Lcom/youku/pushsdk/control/CollectDataManager$SendTask;->this$0:Lcom/youku/pushsdk/control/CollectDataManager;

    invoke-static {v1}, Lcom/youku/pushsdk/control/CollectDataManager;->access$5(Lcom/youku/pushsdk/control/CollectDataManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/pushsdk/control/CollectDataManager$SendTask;->pack:Lcom/youku/pushsdk/data/EventDataPackage;

    invoke-virtual {v2}, Lcom/youku/pushsdk/data/EventDataPackage;->getEvent()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/pushsdk/control/CollectDataManager$SendTask;->pack:Lcom/youku/pushsdk/data/EventDataPackage;

    invoke-virtual {v3}, Lcom/youku/pushsdk/data/EventDataPackage;->getData()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/youku/pushsdk/control/CollectDataManager;->access$6(Lcom/youku/pushsdk/control/CollectDataManager;Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 148
    return-void
.end method
