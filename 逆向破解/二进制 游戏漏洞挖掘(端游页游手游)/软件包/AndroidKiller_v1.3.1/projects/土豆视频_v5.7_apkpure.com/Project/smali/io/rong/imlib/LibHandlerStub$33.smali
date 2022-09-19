.class Lio/rong/imlib/LibHandlerStub$33;
.super Ljava/lang/Object;
.source "LibHandlerStub.java"

# interfaces
.implements Lio/rong/imlib/NativeClient$RealTimeLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/LibHandlerStub;->addRealTimeLocationListener(ILjava/lang/String;Lio/rong/imlib/IRealTimeLocationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/LibHandlerStub;

.field final synthetic val$listener:Lio/rong/imlib/IRealTimeLocationListener;


# direct methods
.method constructor <init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IRealTimeLocationListener;)V
    .locals 0

    .prologue
    .line 1544
    iput-object p1, p0, Lio/rong/imlib/LibHandlerStub$33;->this$0:Lio/rong/imlib/LibHandlerStub;

    iput-object p2, p0, Lio/rong/imlib/LibHandlerStub$33;->val$listener:Lio/rong/imlib/IRealTimeLocationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;)V
    .locals 3
    .param p1, "errorCode"    # Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    .prologue
    .line 1584
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub$33;->val$listener:Lio/rong/imlib/IRealTimeLocationListener;

    invoke-virtual {p1}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->getValue()I

    move-result v2

    invoke-interface {v1, v2}, Lio/rong/imlib/IRealTimeLocationListener;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1588
    :goto_0
    return-void

    .line 1585
    :catch_0
    move-exception v0

    .line 1586
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onParticipantsJoin(Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 1566
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub$33;->val$listener:Lio/rong/imlib/IRealTimeLocationListener;

    invoke-interface {v1, p1}, Lio/rong/imlib/IRealTimeLocationListener;->onParticipantsJoin(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1570
    :goto_0
    return-void

    .line 1567
    :catch_0
    move-exception v0

    .line 1568
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onParticipantsQuit(Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 1575
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub$33;->val$listener:Lio/rong/imlib/IRealTimeLocationListener;

    invoke-interface {v1, p1}, Lio/rong/imlib/IRealTimeLocationListener;->onParticipantsQuit(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1579
    :goto_0
    return-void

    .line 1576
    :catch_0
    move-exception v0

    .line 1577
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onReceiveLocation(DDLjava/lang/String;)V
    .locals 7
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "userId"    # Ljava/lang/String;

    .prologue
    .line 1557
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub$33;->val$listener:Lio/rong/imlib/IRealTimeLocationListener;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lio/rong/imlib/IRealTimeLocationListener;->onReceiveLocation(DDLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1561
    :goto_0
    return-void

    .line 1558
    :catch_0
    move-exception v0

    .line 1559
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onStatusChange(Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;)V
    .locals 3
    .param p1, "status"    # Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    .prologue
    .line 1548
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub$33;->val$listener:Lio/rong/imlib/IRealTimeLocationListener;

    invoke-virtual {p1}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->getValue()I

    move-result v2

    invoke-interface {v1, v2}, Lio/rong/imlib/IRealTimeLocationListener;->onStatusChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1552
    :goto_0
    return-void

    .line 1549
    :catch_0
    move-exception v0

    .line 1550
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
