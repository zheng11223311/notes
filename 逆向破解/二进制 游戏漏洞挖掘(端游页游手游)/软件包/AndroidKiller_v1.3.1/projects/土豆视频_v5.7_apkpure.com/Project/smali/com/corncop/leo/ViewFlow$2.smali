.class Lcom/corncop/leo/ViewFlow$2;
.super Landroid/os/Handler;
.source "ViewFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/corncop/leo/ViewFlow;->startAutoFlowTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/corncop/leo/ViewFlow;


# direct methods
.method constructor <init>(Lcom/corncop/leo/ViewFlow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/corncop/leo/ViewFlow;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/corncop/leo/ViewFlow$2;->this$0:Lcom/corncop/leo/ViewFlow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 159
    iget-object v1, p0, Lcom/corncop/leo/ViewFlow$2;->this$0:Lcom/corncop/leo/ViewFlow;

    iget-object v2, p0, Lcom/corncop/leo/ViewFlow$2;->this$0:Lcom/corncop/leo/ViewFlow;

    invoke-static {v2}, Lcom/corncop/leo/ViewFlow;->access$200(Lcom/corncop/leo/ViewFlow;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/corncop/leo/ViewFlow$2;->this$0:Lcom/corncop/leo/ViewFlow;

    invoke-virtual {v3}, Lcom/corncop/leo/ViewFlow;->getChildCount()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/corncop/leo/ViewFlow;->access$300(Lcom/corncop/leo/ViewFlow;I)V

    .line 160
    iget-object v1, p0, Lcom/corncop/leo/ViewFlow$2;->this$0:Lcom/corncop/leo/ViewFlow;

    invoke-static {v1}, Lcom/corncop/leo/ViewFlow;->access$400(Lcom/corncop/leo/ViewFlow;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 161
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/corncop/leo/ViewFlow$2;->this$0:Lcom/corncop/leo/ViewFlow;

    invoke-static {v1}, Lcom/corncop/leo/ViewFlow;->access$500(Lcom/corncop/leo/ViewFlow;)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/corncop/leo/ViewFlow$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 162
    return-void
.end method
