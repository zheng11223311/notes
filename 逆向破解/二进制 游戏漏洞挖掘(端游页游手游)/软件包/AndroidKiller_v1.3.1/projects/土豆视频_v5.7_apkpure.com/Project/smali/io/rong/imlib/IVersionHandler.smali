.class public interface abstract Lio/rong/imlib/IVersionHandler;
.super Ljava/lang/Object;
.source "IVersionHandler.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imlib/IVersionHandler$Stub;
    }
.end annotation


# virtual methods
.method public abstract getVersion()Lio/rong/imlib/model/AppVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
