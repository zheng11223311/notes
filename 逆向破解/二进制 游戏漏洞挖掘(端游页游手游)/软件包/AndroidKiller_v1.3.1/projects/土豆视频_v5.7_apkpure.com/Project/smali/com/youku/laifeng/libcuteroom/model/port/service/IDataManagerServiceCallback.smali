.class public interface abstract Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCallback;
.super Ljava/lang/Object;
.source "IDataManagerServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDataReciveBroadListener(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onErrorDataReciveBroadListener(Ljava/lang/String;ILcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
