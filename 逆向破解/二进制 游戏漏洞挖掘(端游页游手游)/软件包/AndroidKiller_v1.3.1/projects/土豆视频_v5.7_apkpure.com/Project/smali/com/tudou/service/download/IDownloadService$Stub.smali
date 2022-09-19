.class public abstract Lcom/tudou/service/download/IDownloadService$Stub;
.super Landroid/os/Binder;
.source "IDownloadService.java"

# interfaces
.implements Lcom/tudou/service/download/IDownloadService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/service/download/IDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/service/download/IDownloadService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tudou.service.download.IDownloadService"

.field static final TRANSACTION_appExit:I = 0x1a

.field static final TRANSACTION_canUse3GDownload:I = 0x16

.field static final TRANSACTION_canUseAcc:I = 0x1c

.field static final TRANSACTION_createDownload:I = 0x3

.field static final TRANSACTION_createDownloads:I = 0x4

.field static final TRANSACTION_delete:I = 0x7

.field static final TRANSACTION_deleteAll:I = 0x8

.field static final TRANSACTION_deleteArray:I = 0x9

.field static final TRANSACTION_down:I = 0x5

.field static final TRANSACTION_getAccPort:I = 0x1e

.field static final TRANSACTION_getCurrentDownloadSDCardPath:I = 0x10

.field static final TRANSACTION_getDownloadCreating:I = 0x21

.field static final TRANSACTION_getDownloadFormat:I = 0x12

.field static final TRANSACTION_getDownloadLanguage:I = 0x14

.field static final TRANSACTION_getDownloadingData:I = 0xb

.field static final TRANSACTION_getDownloadings:I = 0x22

.field static final TRANSACTION_hasDownloadingTask:I = 0x20

.field static final TRANSACTION_noDisturb:I = 0x19

.field static final TRANSACTION_pause:I = 0x6

.field static final TRANSACTION_pauseAllTask:I = 0xe

.field static final TRANSACTION_refresh:I = 0xa

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_setAppExit:I = 0x1b

.field static final TRANSACTION_setCanUse3GDownload:I = 0x17

.field static final TRANSACTION_setCurrentDownloadSDCardPath:I = 0x11

.field static final TRANSACTION_setDownloadFormat:I = 0x13

.field static final TRANSACTION_setDownloadLanguage:I = 0x15

.field static final TRANSACTION_setNoDisturb:I = 0x18

.field static final TRANSACTION_setP2p_switch:I = 0x1d

.field static final TRANSACTION_setTimeStamp:I = 0x1f

.field static final TRANSACTION_startAllTask:I = 0xf

.field static final TRANSACTION_startNewTask:I = 0xc

.field static final TRANSACTION_stopAllTask:I = 0xd

.field static final TRANSACTION_unregister:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.tudou.service.download.IDownloadService"

    invoke-virtual {p0, p0, v0}, Lcom/tudou/service/download/IDownloadService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tudou/service/download/IDownloadService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v1, "com.tudou.service.download.IDownloadService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/tudou/service/download/IDownloadService;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/tudou/service/download/IDownloadService;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/tudou/service/download/IDownloadService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/tudou/service/download/IDownloadService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
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
    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 362
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 49
    :sswitch_0
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    const/4 v2, 0x1

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tudou/service/download/ICallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tudou/service/download/ICallback;

    move-result-object v3

    .line 57
    .local v3, "_arg0":Lcom/tudou/service/download/ICallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tudou/service/download/IDownloadService$Stub;->registerCallback(Lcom/tudou/service/download/ICallback;)V

    .line 58
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    const/4 v2, 0x1

    goto :goto_0

    .line 63
    .end local v3    # "_arg0":Lcom/tudou/service/download/ICallback;
    :sswitch_2
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/IDownloadService$Stub;->unregister()V

    .line 65
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    const/4 v2, 0x1

    goto :goto_0

    .line 70
    :sswitch_3
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 84
    .local v8, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 86
    .local v9, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 88
    .local v10, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 90
    .local v11, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 92
    .local v12, "_arg9":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v13, 0x1

    .local v13, "_arg10":Z
    :goto_1
    move-object/from16 v2, p0

    .line 93
    invoke-virtual/range {v2 .. v13}, Lcom/tudou/service/download/IDownloadService$Stub;->createDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 94
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    const/4 v2, 0x1

    goto :goto_0

    .line 92
    .end local v13    # "_arg10":Z
    :cond_0
    const/4 v13, 0x0

    goto :goto_1

    .line 99
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v8    # "_arg5":I
    .end local v9    # "_arg6":Ljava/lang/String;
    .end local v10    # "_arg7":Ljava/lang/String;
    .end local v11    # "_arg8":Ljava/lang/String;
    .end local v12    # "_arg9":Ljava/lang/String;
    :sswitch_4
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/tudou/service/download/IDownloadService$Stub;->createDownloads([Ljava/lang/String;[Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 110
    .end local v3    # "_arg0":[Ljava/lang/String;
    .end local v4    # "_arg1":[Ljava/lang/String;
    :sswitch_5
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tudou/service/download/IDownloadService$Stub;->down(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 119
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_6
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 122
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tudou/service/download/IDownloadService$Stub;->pause(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 128
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 131
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tudou/service/download/IDownloadService$Stub;->delete(Ljava/lang/String;)Z

    move-result v17

    .line 132
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v17, :cond_1

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 133
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 138
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v17    # "_result":Z
    :sswitch_8
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/IDownloadService$Stub;->deleteAll()Z

    move-result v17

    .line 140
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v17, :cond_2

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 141
    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 146
    .end local v17    # "_result":Z
    :sswitch_9
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tudou/service/download/IDownloadService$Stub;->deleteArray([Ljava/lang/String;)Z

    move-result v17

    .line 150
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    if-eqz v17, :cond_3

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 151
    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    .line 156
    .end local v3    # "_arg0":[Ljava/lang/String;
    .end local v17    # "_result":Z
    :sswitch_a
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/IDownloadService$Stub;->refresh()V

    .line 158
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 163
    :sswitch_b
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/IDownloadService$Stub;->getDownloadingData()Ljava/util/Map;

    move-result-object v17

    .line 165
    .local v17, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 167
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 171
    .end local v17    # "_result":Ljava/util/Map;
    :sswitch_c
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/IDownloadService$Stub;->startNewTask()V

    .line 173
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 178
    :sswitch_d
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/IDownloadService$Stub;->stopAllTask()V

    .line 180
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 185
    :sswitch_e
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    .line 188
    .local v3, "_arg0":Z
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tudou/service/download/IDownloadService$Stub;->pauseAllTask(Z)V

    .line 189
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 187
    .end local v3    # "_arg0":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_5

    .line 194
    :sswitch_f
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/IDownloadService$Stub;->startAllTask()V

    .line 196
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 201
    :sswitch_10
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/IDownloadService$Stub;->getCurrentDownloadSDCardPath()Ljava/lang/String;

    move-result-object v17

    .line 203
    .local v17, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 209
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_11
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tudou/service/download/IDownloadService$Stub;->setCurrentDownloadSDCardPath(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 218
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_12
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/IDownloadService$Stub;->getDownloadFormat()I

    move-result v17

    .line 220
    .local v17, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 226
    .end local v17    # "_result":I
    :sswitch_13
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 229
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tudou/service/download/IDownloadService$Stub;->setDownloadFormat(I)V

    .line 230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 235
    .end local v3    # "_arg0":I
    :sswitch_14
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/IDownloadService$Stub;->getDownloadLanguage()I

    move-result v17

    .line 237
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 243
    .end local v17    # "_result":I
    :sswitch_15
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 246
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tudou/service/download/IDownloadService$Stub;->setDownloadLanguage(I)V

    .line 247
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 252
    .end local v3    # "_arg0":I
    :sswitch_16
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/IDownloadService$Stub;->canUse3GDownload()Z

    move-result v17

    .line 254
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    if-eqz v17, :cond_5

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 255
    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    .line 260
    .end local v17    # "_result":Z
    :sswitch_17
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    const/4 v3, 0x1

    .line 263
    .local v3, "_arg0":Z
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tudou/service/download/IDownloadService$Stub;->setCanUse3GDownload(Z)V

    .line 264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 262
    .end local v3    # "_arg0":Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_7

    .line 269
    :sswitch_18
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    const/4 v3, 0x1

    .line 272
    .restart local v3    # "_arg0":Z
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tudou/service/download/IDownloadService$Stub;->setNoDisturb(Z)V

    .line 273
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 271
    .end local v3    # "_arg0":Z
    :cond_7
    const/4 v3, 0x0

    goto :goto_8

    .line 278
    :sswitch_19
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/IDownloadService$Stub;->noDisturb()Z

    move-result v17

    .line 280
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    if-eqz v17, :cond_8

    const/4 v2, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 281
    :cond_8
    const/4 v2, 0x0

    goto :goto_9

    .line 286
    .end local v17    # "_result":Z
    :sswitch_1a
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/IDownloadService$Stub;->appExit()Z

    move-result v17

    .line 288
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    if-eqz v17, :cond_9

    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 289
    :cond_9
    const/4 v2, 0x0

    goto :goto_a

    .line 294
    .end local v17    # "_result":Z
    :sswitch_1b
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    const/4 v3, 0x1

    .line 297
    .restart local v3    # "_arg0":Z
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tudou/service/download/IDownloadService$Stub;->setAppExit(Z)V

    .line 298
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 296
    .end local v3    # "_arg0":Z
    :cond_a
    const/4 v3, 0x0

    goto :goto_b

    .line 303
    :sswitch_1c
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/IDownloadService$Stub;->canUseAcc()Z

    move-result v17

    .line 305
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    if-eqz v17, :cond_b

    const/4 v2, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 306
    :cond_b
    const/4 v2, 0x0

    goto :goto_c

    .line 311
    .end local v17    # "_result":Z
    :sswitch_1d
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 314
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tudou/service/download/IDownloadService$Stub;->setP2p_switch(I)V

    .line 315
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 320
    .end local v3    # "_arg0":I
    :sswitch_1e
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/IDownloadService$Stub;->getAccPort()Ljava/lang/String;

    move-result-object v17

    .line 322
    .local v17, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 328
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_1f
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 331
    .local v14, "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/tudou/service/download/IDownloadService$Stub;->setTimeStamp(J)V

    .line 332
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 337
    .end local v14    # "_arg0":J
    :sswitch_20
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/IDownloadService$Stub;->hasDownloadingTask()Z

    move-result v17

    .line 339
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    if-eqz v17, :cond_c

    const/4 v2, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 340
    :cond_c
    const/4 v2, 0x0

    goto :goto_d

    .line 345
    .end local v17    # "_result":Z
    :sswitch_21
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/IDownloadService$Stub;->getDownloadCreating()Ljava/util/Map;

    move-result-object v17

    .line 347
    .local v17, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 349
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 353
    .end local v17    # "_result":Ljava/util/Map;
    :sswitch_22
    const-string v2, "com.tudou.service.download.IDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 356
    .local v16, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/IDownloadService$Stub;->getDownloadings(Ljava/util/List;)I

    move-result v17

    .line 357
    .local v17, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 45
    nop

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
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
