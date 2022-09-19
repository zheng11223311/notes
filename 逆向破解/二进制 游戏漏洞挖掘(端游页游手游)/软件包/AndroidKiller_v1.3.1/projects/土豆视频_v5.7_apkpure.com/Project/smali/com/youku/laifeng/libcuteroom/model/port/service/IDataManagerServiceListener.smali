.class public interface abstract Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;
.super Ljava/lang/Object;
.source "IDataManagerServiceListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDataReciveDirectListener(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onErrorReciveDirectListener(Ljava/lang/String;ILcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
