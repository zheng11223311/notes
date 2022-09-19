.class public interface abstract Lcom/youku/libmanager/ISoUpgradeCallback;
.super Ljava/lang/Object;
.source "ISoUpgradeCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/libmanager/ISoUpgradeCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDownloadEnd(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDownloadFailed(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
