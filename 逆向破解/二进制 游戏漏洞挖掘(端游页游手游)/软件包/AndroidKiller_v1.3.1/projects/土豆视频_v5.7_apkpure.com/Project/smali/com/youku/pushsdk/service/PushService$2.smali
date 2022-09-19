.class Lcom/youku/pushsdk/service/PushService$2;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/pushsdk/service/PushService;->changeConnectState(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/pushsdk/service/PushService;


# direct methods
.method constructor <init>(Lcom/youku/pushsdk/service/PushService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/youku/pushsdk/service/PushService$2;->this$0:Lcom/youku/pushsdk/service/PushService;

    .line 979
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 985
    iget-object v0, p0, Lcom/youku/pushsdk/service/PushService$2;->this$0:Lcom/youku/pushsdk/service/PushService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/pushsdk/service/PushService;->access$30(Lcom/youku/pushsdk/service/PushService;I)V

    .line 986
    return-void
.end method
