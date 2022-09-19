.class public abstract Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService$Stub;
.super Landroid/os/Binder;
.source "IChatManagerService.java"

# interfaces
.implements Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.youku.laifeng.libcuteroom.model.port.service.IChatManagerService"

.field static final TRANSACTION_close:I = 0x3

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_registerChatManagerListener:I = 0x4

.field static final TRANSACTION_sendEvent:I = 0x2

.field static final TRANSACTION_unregisterChatManagerListener:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.youku.laifeng.libcuteroom.model.port.service.IChatManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;
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
    const-string v1, "com.youku.laifeng.libcuteroom.model.port.service.IChatManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 3
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
    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v2, "com.youku.laifeng.libcuteroom.model.port.service.IChatManagerService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.youku.laifeng.libcuteroom.model.port.service.IChatManagerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService$Stub;->connect(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string v2, "com.youku.laifeng.libcuteroom.model.port.service.IChatManagerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    sget-object v2, Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;

    .line 64
    .local v0, "_arg0":Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService$Stub;->sendEvent(Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    invoke-virtual {v0, p3, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 62
    .end local v0    # "_arg0":Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;
    goto :goto_1

    .line 71
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 77
    .end local v0    # "_arg0":Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;
    :sswitch_3
    const-string v2, "com.youku.laifeng.libcuteroom.model.port.service.IChatManagerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService$Stub;->close()V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 84
    :sswitch_4
    const-string v2, "com.youku.laifeng.libcuteroom.model.port.service.IChatManagerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener;

    move-result-object v0

    .line 87
    .local v0, "_arg0":Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener;
    invoke-virtual {p0, v0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService$Stub;->registerChatManagerListener(Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 93
    .end local v0    # "_arg0":Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener;
    :sswitch_5
    const-string v2, "com.youku.laifeng.libcuteroom.model.port.service.IChatManagerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener;

    move-result-object v0

    .line 96
    .restart local v0    # "_arg0":Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener;
    invoke-virtual {p0, v0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService$Stub;->unregisterChatManagerListener(Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener;)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 38
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
