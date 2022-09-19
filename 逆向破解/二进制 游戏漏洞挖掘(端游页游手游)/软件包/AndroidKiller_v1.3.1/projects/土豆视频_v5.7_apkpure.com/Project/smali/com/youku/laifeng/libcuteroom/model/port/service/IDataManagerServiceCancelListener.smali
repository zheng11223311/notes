.class public interface abstract Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCancelListener;
.super Ljava/lang/Object;
.source "IDataManagerServiceCancelListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCancelListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDataDirectCancel(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
