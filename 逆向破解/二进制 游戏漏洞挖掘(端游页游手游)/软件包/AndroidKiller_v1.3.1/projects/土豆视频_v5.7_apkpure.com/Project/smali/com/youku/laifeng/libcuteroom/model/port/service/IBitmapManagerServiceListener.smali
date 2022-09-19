.class public interface abstract Lcom/youku/laifeng/libcuteroom/model/port/service/IBitmapManagerServiceListener;
.super Ljava/lang/Object;
.source "IBitmapManagerServiceListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/libcuteroom/model/port/service/IBitmapManagerServiceListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onErrorLoadBitmap(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onReceiveBitmap(Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
