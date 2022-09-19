.class public interface abstract Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener;
.super Ljava/lang/Object;
.source "IDownloadManagerServiceListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDownloadComplition(Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDownloadProgress(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDownloadStatusEvent(ILcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
