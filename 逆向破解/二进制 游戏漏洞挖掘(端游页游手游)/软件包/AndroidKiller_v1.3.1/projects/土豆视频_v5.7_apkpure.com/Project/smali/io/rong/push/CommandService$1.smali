.class Lio/rong/push/CommandService$1;
.super Lio/rong/imlib/IVersionHandler$Stub;
.source "CommandService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/CommandService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/push/CommandService;


# direct methods
.method constructor <init>(Lio/rong/push/CommandService;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lio/rong/push/CommandService$1;->this$0:Lio/rong/push/CommandService;

    invoke-direct {p0}, Lio/rong/imlib/IVersionHandler$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getVersion()Lio/rong/imlib/model/AppVersion;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 36
    const-string v0, "Stub"

    const-string v1, "getVersion"

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/push/PushContext;->getCurrentVersion()Lio/rong/imlib/model/AppVersion;

    move-result-object v0

    return-object v0
.end method
