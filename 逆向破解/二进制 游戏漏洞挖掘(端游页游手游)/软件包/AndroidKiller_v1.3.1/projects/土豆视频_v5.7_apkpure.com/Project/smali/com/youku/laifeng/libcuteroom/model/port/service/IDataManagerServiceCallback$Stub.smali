.class public abstract Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IDataManagerServiceCallback.java"

# interfaces
.implements Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerServiceCallback"

.field static final TRANSACTION_onDataReciveBroadListener:I = 0x1

.field static final TRANSACTION_onErrorDataReciveBroadListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCallback;
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
    const-string v1, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerServiceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCallback;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v4, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerServiceCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    sget-object v4, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    .line 57
    .local v1, "_arg1":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCallback$Stub;->onDataReciveBroadListener(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)V

    .line 58
    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    invoke-virtual {v1, p3, v3}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 55
    .end local v1    # "_arg1":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 69
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    :sswitch_2
    const-string v4, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerServiceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 75
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 76
    sget-object v4, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    .line 81
    .local v2, "_arg2":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCallback$Stub;->onErrorDataReciveBroadListener(Ljava/lang/String;ILcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)V

    .line 82
    if-eqz v2, :cond_3

    .line 83
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    invoke-virtual {v2, p3, v3}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 79
    .end local v2    # "_arg2":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    goto :goto_2

    .line 87
    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
