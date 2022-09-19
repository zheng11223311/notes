.class public abstract Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerService$Stub;
.super Landroid/os/Binder;
.source "IDownloadManagerService.java"

# interfaces
.implements Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.youku.laifeng.libcuteroom.model.port.service.IDownloadManagerService"

.field static final TRANSACTION_pauseDownload:I = 0x2

.field static final TRANSACTION_registerListener:I = 0x4

.field static final TRANSACTION_startDownload:I = 0x1

.field static final TRANSACTION_stopDownload:I = 0x3

.field static final TRANSACTION_unregisterListener:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.youku.laifeng.libcuteroom.model.port.service.IDownloadManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.youku.laifeng.libcuteroom.model.port.service.IDownloadManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v3, "com.youku.laifeng.libcuteroom.model.port.service.IDownloadManagerService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.youku.laifeng.libcuteroom.model.port.service.IDownloadManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerService$Stub;->startDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 58
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_2
    const-string v3, "com.youku.laifeng.libcuteroom.model.port.service.IDownloadManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerService$Stub;->pauseDownload(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 67
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string v3, "com.youku.laifeng.libcuteroom.model.port.service.IDownloadManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerService$Stub;->stopDownload(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 76
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string v3, "com.youku.laifeng.libcuteroom.model.port.service.IDownloadManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener;

    move-result-object v0

    .line 79
    .local v0, "_arg0":Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener;
    invoke-virtual {p0, v0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerService$Stub;->registerListener(Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener;)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 85
    .end local v0    # "_arg0":Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener;
    :sswitch_5
    const-string v3, "com.youku.laifeng.libcuteroom.model.port.service.IDownloadManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener;

    move-result-object v0

    .line 88
    .restart local v0    # "_arg0":Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener;
    invoke-virtual {p0, v0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerService$Stub;->unregisterListener(Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
