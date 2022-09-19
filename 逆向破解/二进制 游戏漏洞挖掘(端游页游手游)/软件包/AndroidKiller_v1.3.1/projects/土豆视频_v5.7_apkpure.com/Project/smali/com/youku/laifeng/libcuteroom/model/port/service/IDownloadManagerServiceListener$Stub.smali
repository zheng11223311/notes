.class public abstract Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener$Stub;
.super Landroid/os/Binder;
.source "IDownloadManagerServiceListener.java"

# interfaces
.implements Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.youku.laifeng.libcuteroom.model.port.service.IDownloadManagerServiceListener"

.field static final TRANSACTION_onDownloadComplition:I = 0x2

.field static final TRANSACTION_onDownloadProgress:I = 0x1

.field static final TRANSACTION_onDownloadStatusEvent:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.youku.laifeng.libcuteroom.model.port.service.IDownloadManagerServiceListener"

    invoke-virtual {p0, p0, v0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener;
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
    const-string v1, "com.youku.laifeng.libcuteroom.model.port.service.IDownloadManagerServiceListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v3, "com.youku.laifeng.libcuteroom.model.port.service.IDownloadManagerServiceListener"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.youku.laifeng.libcuteroom.model.port.service.IDownloadManagerServiceListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 50
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener$Stub;->onDownloadProgress(I)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0    # "_arg0":I
    :sswitch_2
    const-string v3, "com.youku.laifeng.libcuteroom.model.port.service.IDownloadManagerServiceListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    sget-object v3, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    .line 64
    .local v0, "_arg0":Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener$Stub;->onDownloadComplition(Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    invoke-virtual {v0, p3, v2}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 62
    .end local v0    # "_arg0":Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;
    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 77
    .end local v0    # "_arg0":Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;
    :sswitch_3
    const-string v3, "com.youku.laifeng.libcuteroom.model.port.service.IDownloadManagerServiceListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 81
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 82
    sget-object v3, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;

    .line 87
    .local v1, "_arg1":Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener$Stub;->onDownloadStatusEvent(ILcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v1, :cond_3

    .line 90
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    invoke-virtual {v1, p3, v2}, Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 85
    .end local v1    # "_arg1":Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/youku/laifeng/libcuteroom/model/data/BeanDownloadInfo;
    goto :goto_2

    .line 94
    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
