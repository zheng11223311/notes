.class Lcom/youku/gamecenter/services/GetOfflineDataService$1;
.super Landroid/os/Handler;
.source "GetOfflineDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/services/GetOfflineDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/services/GetOfflineDataService;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/services/GetOfflineDataService;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/youku/gamecenter/services/GetOfflineDataService$1;->this$0:Lcom/youku/gamecenter/services/GetOfflineDataService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 52
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 61
    :goto_0
    :pswitch_0
    return-void

    .line 57
    :pswitch_1
    iget-object v1, p0, Lcom/youku/gamecenter/services/GetOfflineDataService$1;->this$0:Lcom/youku/gamecenter/services/GetOfflineDataService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/youku/gamecenter/services/GetOfflineDataService;->parseOfflineData(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/youku/gamecenter/services/GetOfflineDataService$1;->this$0:Lcom/youku/gamecenter/services/GetOfflineDataService;

    invoke-virtual {v0}, Lcom/youku/gamecenter/services/GetOfflineDataService;->onLoadOfflineDataFinish()V

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
