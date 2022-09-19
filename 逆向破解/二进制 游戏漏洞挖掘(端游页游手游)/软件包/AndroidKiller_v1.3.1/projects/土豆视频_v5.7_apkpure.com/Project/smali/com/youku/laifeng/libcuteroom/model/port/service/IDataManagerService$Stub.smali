.class public abstract Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;
.super Landroid/os/Binder;
.source "IDataManagerService.java"

# interfaces
.implements Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerService"

.field static final TRANSACTION_broadRequestData:I = 0x7

.field static final TRANSACTION_cancelRequestDataGroupById:I = 0x6

.field static final TRANSACTION_clearStarInfo:I = 0x14

.field static final TRANSACTION_directRequestDataByAsyn:I = 0x3

.field static final TRANSACTION_directRequestDataByAsynWithContent:I = 0x4

.field static final TRANSACTION_directRequestDataGroupByAsynWithContent:I = 0x5

.field static final TRANSACTION_directRequestDataWithCookie:I = 0x1

.field static final TRANSACTION_directRequestDataWithCookieContent:I = 0x2

.field static final TRANSACTION_getGiftConfig:I = 0x10

.field static final TRANSACTION_getGiftMap:I = 0xe

.field static final TRANSACTION_getKey:I = 0x12

.field static final TRANSACTION_getResponse:I = 0xc

.field static final TRANSACTION_getResponseWithContent:I = 0xd

.field static final TRANSACTION_getRoomGiftConfig:I = 0xf

.field static final TRANSACTION_getShowResources:I = 0x19

.field static final TRANSACTION_getStarInfo:I = 0x13

.field static final TRANSACTION_getToken:I = 0x11

.field static final TRANSACTION_getUserInfo:I = 0xb

.field static final TRANSACTION_isAlive:I = 0x17

.field static final TRANSACTION_registerCallback:I = 0x8

.field static final TRANSACTION_setBase:I = 0x18

.field static final TRANSACTION_setTokenAndKey:I = 0xa

.field static final TRANSACTION_unregisterCallback:I = 0x9

.field static final TRANSACTION_updateUserCoins:I = 0x16

.field static final TRANSACTION_updateUserFaceUrl:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;
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
    const-string v1, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 348
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    move-result-object v1

    .line 51
    .local v1, "_arg0":Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 58
    invoke-virtual/range {v0 .. v5}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;->directRequestDataWithCookie(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    const/4 v0, 0x1

    goto :goto_0

    .line 64
    .end local v1    # "_arg0":Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    :sswitch_2
    const-string v0, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    move-result-object v1

    .line 68
    .restart local v1    # "_arg0":Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 70
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 72
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 74
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg5":I
    move-object v0, p0

    .line 77
    invoke-virtual/range {v0 .. v6}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;->directRequestDataWithCookieContent(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    const/4 v0, 0x1

    goto :goto_0

    .line 83
    .end local v1    # "_arg0":Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":I
    :sswitch_3
    const-string v0, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    move-result-object v1

    .line 87
    .restart local v1    # "_arg0":Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 89
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 91
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 92
    .local v4, "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;->directRequestDataByAsyn(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    const/4 v0, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "_arg0":Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :sswitch_4
    const-string v0, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    move-result-object v1

    .line 102
    .restart local v1    # "_arg0":Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 104
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 106
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 109
    invoke-virtual/range {v0 .. v5}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;->directRequestDataByAsynWithContent(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 115
    .end local v1    # "_arg0":Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    :sswitch_5
    const-string v0, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    move-result-object v2

    .line 121
    .local v2, "_arg1":Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCancelListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCancelListener;

    move-result-object v3

    .line 123
    .local v3, "_arg2":Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCancelListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 125
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 129
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 131
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg7":I
    move-object v0, p0

    .line 132
    invoke-virtual/range {v0 .. v8}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;->directRequestDataGroupByAsynWithContent(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCancelListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 138
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;
    .end local v3    # "_arg2":Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCancelListener;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_arg7":I
    :sswitch_6
    const-string v0, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 141
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;->cancelRequestDataGroupById(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 147
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string v0, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 151
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 154
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;->broadRequestData(Ljava/lang/String;Ljava/lang/String;I)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 160
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :sswitch_8
    const-string v0, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCallback;

    move-result-object v1

    .line 163
    .local v1, "_arg0":Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCallback;
    invoke-virtual {p0, v1}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;->registerCallback(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCallback;)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 169
    .end local v1    # "_arg0":Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCallback;
    :sswitch_9
    const-string v0, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCallback;

    move-result-object v1

    .line 172
    .restart local v1    # "_arg0":Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCallback;
    invoke-virtual {p0, v1}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;->unregisterCallback(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCallback;)V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 178
    .end local v1    # "_arg0":Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCallback;
    :sswitch_a
    const-string v0, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 183
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;->setTokenAndKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 189
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_b
    const-string v0, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    move-result-object v1

    .line 192
    .local v1, "_arg0":Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;
    invoke-virtual {p0, v1}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;->getUserInfo(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;)Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;

    move-result-object v9

    .line 193
    .local v9, "_result":Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    if-eqz v9, :cond_0

    .line 195
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    const/4 v0, 0x1

    invoke-virtual {v9, p3, v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 201
    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 199
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 205
    .end local v1    # "_arg0":Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;
    .end local v9    # "_result":Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    :sswitch_c
    const-string v0, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 211
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 212
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;->getResponse(Ljava/lang/String;Ljava/lang/String;I)Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    move-result-object v9

    .line 213
    .local v9, "_result":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    if-eqz v9, :cond_1

    .line 215
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    const/4 v0, 0x1

    invoke-virtual {v9, p3, v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 221
    :goto_2
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 219
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 225
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v9    # "_result":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    :sswitch_d
    const-string v0, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 229
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 231
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 234
    .local v4, "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;->getResponseWithContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    move-result-object v9

    .line 235
    .restart local v9    # "_result":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    if-eqz v9, :cond_2

    .line 237
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    const/4 v0, 0x1

    invoke-virtual {v9, p3, v0}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 243
    :goto_3
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 241
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 247
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v9    # "_result":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    :sswitch_e
    const-string v0, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;->getGiftMap()Ljava/lang/String;

    move-result-object v9

    .line 249
    .local v9, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 255
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_f
    const-string v0, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 258
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;->getRoomGiftConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 259
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 265
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_10
    const-string v0, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;->getGiftConfig()Ljava/lang/String;

    move-result-object v9

    .line 267
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 273
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_11
    const-string v0, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;->getToken()Ljava/lang/String;

    move-result-object v9

    .line 275
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 281
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_12
    const-string v0, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 283
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 289
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_13
    const-string v0, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;->getStarInfo()Ljava/lang/String;

    move-result-object v9

    .line 291
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 297
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_14
    const-string v0, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;->clearStarInfo()V

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 304
    :sswitch_15
    const-string v0, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 307
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;->updateUserFaceUrl(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 313
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_16
    const-string v0, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 316
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;->updateUserCoins(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 322
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_17
    const-string v0, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;->isAlive()Z

    move-result v9

    .line 324
    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    if-eqz v9, :cond_3

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 325
    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    .line 330
    .end local v9    # "_result":Z
    :sswitch_18
    const-string v0, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 334
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    .line 335
    .local v2, "_arg1":Z
    :goto_5
    invoke-virtual {p0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;->setBase(Ljava/lang/String;Z)V

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 334
    .end local v2    # "_arg1":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_5

    .line 341
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_19
    const-string v0, "com.youku.laifeng.libcuteroom.model.port.service.IDataManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService$Stub;->getShowResources()Ljava/lang/String;

    move-result-object v9

    .line 343
    .local v9, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
