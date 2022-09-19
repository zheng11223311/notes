.class public abstract Lio/rong/imlib/IHandler$Stub;
.super Landroid/os/Binder;
.source "IHandler.java"

# interfaces
.implements Lio/rong/imlib/IHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/IHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imlib/IHandler$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "io.rong.imlib.IHandler"

.field static final TRANSACTION_addMemberToDiscussion:I = 0x2b

.field static final TRANSACTION_addRealTimeLocationListener:I = 0x4c

.field static final TRANSACTION_addToBlacklist:I = 0x3f

.field static final TRANSACTION_cleanConversationDraft:I = 0x1e

.field static final TRANSACTION_clearConversations:I = 0x23

.field static final TRANSACTION_clearMessages:I = 0x13

.field static final TRANSACTION_clearMessagesUnreadStatus:I = 0x14

.field static final TRANSACTION_clearTextMessageDraft:I = 0x43

.field static final TRANSACTION_connect:I = 0x2

.field static final TRANSACTION_createDiscussion:I = 0x2a

.field static final TRANSACTION_deleteMessage:I = 0x12

.field static final TRANSACTION_disconnect:I = 0x3

.field static final TRANSACTION_downloadMedia:I = 0x3c

.field static final TRANSACTION_getBlacklist:I = 0x44

.field static final TRANSACTION_getBlacklistStatus:I = 0x45

.field static final TRANSACTION_getChatRoomInfo:I = 0x31

.field static final TRANSACTION_getConversation:I = 0x1a

.field static final TRANSACTION_getConversationDraft:I = 0x1d

.field static final TRANSACTION_getConversationList:I = 0x18

.field static final TRANSACTION_getConversationListByType:I = 0x19

.field static final TRANSACTION_getConversationNotificationStatus:I = 0x1f

.field static final TRANSACTION_getConversationUnreadCount:I = 0x22

.field static final TRANSACTION_getDeltaTime:I = 0x3d

.field static final TRANSACTION_getDiscussion:I = 0x28

.field static final TRANSACTION_getMessage:I = 0xa

.field static final TRANSACTION_getNewestMessages:I = 0xe

.field static final TRANSACTION_getNotificationQuietHours:I = 0x26

.field static final TRANSACTION_getOlderMessages:I = 0xf

.field static final TRANSACTION_getOlderMessagesByObjectName:I = 0x11

.field static final TRANSACTION_getPublicServiceList:I = 0x39

.field static final TRANSACTION_getPublicServiceProfile:I = 0x38

.field static final TRANSACTION_getRealTimeLocationCurrentState:I = 0x4d

.field static final TRANSACTION_getRealTimeLocationParticipants:I = 0x4b

.field static final TRANSACTION_getRemoteHistoryMessages:I = 0x10

.field static final TRANSACTION_getSendTimeByMessageId:I = 0x50

.field static final TRANSACTION_getTextMessageDraft:I = 0x41

.field static final TRANSACTION_getTotalUnreadCount:I = 0x5

.field static final TRANSACTION_getUnreadCount:I = 0x6

.field static final TRANSACTION_getUnreadCountById:I = 0x7

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_insertMessage:I = 0xb

.field static final TRANSACTION_joinChatRoom:I = 0x33

.field static final TRANSACTION_joinExistChatRoom:I = 0x34

.field static final TRANSACTION_joinGroup:I = 0x2f

.field static final TRANSACTION_joinRealTimeLocation:I = 0x49

.field static final TRANSACTION_quitChatRoom:I = 0x35

.field static final TRANSACTION_quitDiscussion:I = 0x2d

.field static final TRANSACTION_quitGroup:I = 0x30

.field static final TRANSACTION_quitRealTimeLocation:I = 0x4a

.field static final TRANSACTION_reJoinChatRoom:I = 0x32

.field static final TRANSACTION_registerMessageType:I = 0x4

.field static final TRANSACTION_removeConversation:I = 0x1b

.field static final TRANSACTION_removeDiscussionMember:I = 0x2c

.field static final TRANSACTION_removeFromBlacklist:I = 0x40

.field static final TRANSACTION_removeNotificationQuietHours:I = 0x25

.field static final TRANSACTION_saveConversationDraft:I = 0x1c

.field static final TRANSACTION_saveTextMessageDraft:I = 0x42

.field static final TRANSACTION_searchPublicService:I = 0x36

.field static final TRANSACTION_sendMessage:I = 0xc

.field static final TRANSACTION_sendStatusMessage:I = 0xd

.field static final TRANSACTION_setConnectionStatusListener:I = 0x9

.field static final TRANSACTION_setConversationNotificationStatus:I = 0x20

.field static final TRANSACTION_setConversationTopStatus:I = 0x21

.field static final TRANSACTION_setDiscussionInviteStatus:I = 0x3e

.field static final TRANSACTION_setDiscussionName:I = 0x29

.field static final TRANSACTION_setMessageExtra:I = 0x15

.field static final TRANSACTION_setMessageReceivedStatus:I = 0x16

.field static final TRANSACTION_setMessageSentStatus:I = 0x17

.field static final TRANSACTION_setNotificationQuietHours:I = 0x24

.field static final TRANSACTION_setOnReceiveMessageListener:I = 0x8

.field static final TRANSACTION_setUserData:I = 0x46

.field static final TRANSACTION_setupRealTimeLocation:I = 0x47

.field static final TRANSACTION_startRealTimeLocation:I = 0x48

.field static final TRANSACTION_subscribePublicService:I = 0x37

.field static final TRANSACTION_syncGroup:I = 0x2e

.field static final TRANSACTION_updateConversationInfo:I = 0x27

.field static final TRANSACTION_updateMessageReceiptStatus:I = 0x4f

.field static final TRANSACTION_updateRealTimeLocationStatus:I = 0x4e

.field static final TRANSACTION_uploadMedia:I = 0x3b

.field static final TRANSACTION_validateAuth:I = 0x3a


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "io.rong.imlib.IHandler"

    invoke-virtual {p0, p0, v0}, Lio/rong/imlib/IHandler$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IHandler;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v1, "io.rong.imlib.IHandler"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lio/rong/imlib/IHandler;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lio/rong/imlib/IHandler;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lio/rong/imlib/IHandler$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lio/rong/imlib/IHandler$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 24
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
    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 1108
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 44
    :sswitch_0
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    const/4 v4, 0x1

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->init(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    const/4 v4, 0x1

    goto :goto_0

    .line 58
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 62
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IStringCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IStringCallback;

    move-result-object v6

    .line 63
    .local v6, "_arg1":Lio/rong/imlib/IStringCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->connect(Ljava/lang/String;Lio/rong/imlib/IStringCallback;)V

    .line 64
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    const/4 v4, 0x1

    goto :goto_0

    .line 69
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Lio/rong/imlib/IStringCallback;
    :sswitch_3
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    .line 73
    .local v5, "_arg0":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v6

    .line 74
    .local v6, "_arg1":Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->disconnect(ZLio/rong/imlib/IOperationCallback;)V

    .line 75
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    const/4 v4, 0x1

    goto :goto_0

    .line 71
    .end local v5    # "_arg0":Z
    .end local v6    # "_arg1":Lio/rong/imlib/IOperationCallback;
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 80
    :sswitch_4
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->registerMessageType(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    const/4 v4, 0x1

    goto :goto_0

    .line 89
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p0 .. p0}, Lio/rong/imlib/IHandler$Stub;->getTotalUnreadCount()I

    move-result v20

    .line 91
    .local v20, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 97
    .end local v20    # "_result":I
    :sswitch_6
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 100
    .local v5, "_arg0":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->getUnreadCount([I)I

    move-result v20

    .line 101
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 107
    .end local v5    # "_arg0":[I
    .end local v20    # "_result":I
    :sswitch_7
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 111
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 112
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->getUnreadCountById(ILjava/lang/String;)I

    move-result v20

    .line 113
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 119
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v20    # "_result":I
    :sswitch_8
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/OnReceiveMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/OnReceiveMessageListener;

    move-result-object v5

    .line 122
    .local v5, "_arg0":Lio/rong/imlib/OnReceiveMessageListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->setOnReceiveMessageListener(Lio/rong/imlib/OnReceiveMessageListener;)V

    .line 123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 128
    .end local v5    # "_arg0":Lio/rong/imlib/OnReceiveMessageListener;
    :sswitch_9
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IConnectionStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IConnectionStatusListener;

    move-result-object v5

    .line 131
    .local v5, "_arg0":Lio/rong/imlib/IConnectionStatusListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->setConnectionStatusListener(Lio/rong/imlib/IConnectionStatusListener;)V

    .line 132
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 137
    .end local v5    # "_arg0":Lio/rong/imlib/IConnectionStatusListener;
    :sswitch_a
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 140
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->getMessage(I)Lio/rong/imlib/model/Message;

    move-result-object v20

    .line 141
    .local v20, "_result":Lio/rong/imlib/model/Message;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    if-eqz v20, :cond_1

    .line 143
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    const/4 v4, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lio/rong/imlib/model/Message;->writeToParcel(Landroid/os/Parcel;I)V

    .line 149
    :goto_2
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 147
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 153
    .end local v5    # "_arg0":I
    .end local v20    # "_result":Lio/rong/imlib/model/Message;
    :sswitch_b
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 156
    sget-object v4, Lio/rong/imlib/model/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Message;

    .line 161
    .local v5, "_arg0":Lio/rong/imlib/model/Message;
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->insertMessage(Lio/rong/imlib/model/Message;)Lio/rong/imlib/model/Message;

    move-result-object v20

    .line 162
    .restart local v20    # "_result":Lio/rong/imlib/model/Message;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    if-eqz v20, :cond_3

    .line 164
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    const/4 v4, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lio/rong/imlib/model/Message;->writeToParcel(Landroid/os/Parcel;I)V

    .line 170
    :goto_4
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 159
    .end local v5    # "_arg0":Lio/rong/imlib/model/Message;
    .end local v20    # "_result":Lio/rong/imlib/model/Message;
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lio/rong/imlib/model/Message;
    goto :goto_3

    .line 168
    .restart local v20    # "_result":Lio/rong/imlib/model/Message;
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 174
    .end local v5    # "_arg0":Lio/rong/imlib/model/Message;
    .end local v20    # "_result":Lio/rong/imlib/model/Message;
    :sswitch_c
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 177
    sget-object v4, Lio/rong/imlib/model/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Message;

    .line 183
    .restart local v5    # "_arg0":Lio/rong/imlib/model/Message;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 185
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 187
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/ILongSendMessageCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/ILongSendMessageCallback;

    move-result-object v9

    .line 188
    .local v9, "_arg3":Lio/rong/imlib/ILongSendMessageCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8, v9}, Lio/rong/imlib/IHandler$Stub;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/ILongSendMessageCallback;)Lio/rong/imlib/model/Message;

    move-result-object v20

    .line 189
    .restart local v20    # "_result":Lio/rong/imlib/model/Message;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    if-eqz v20, :cond_5

    .line 191
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    const/4 v4, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lio/rong/imlib/model/Message;->writeToParcel(Landroid/os/Parcel;I)V

    .line 197
    :goto_6
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 180
    .end local v5    # "_arg0":Lio/rong/imlib/model/Message;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":Lio/rong/imlib/ILongSendMessageCallback;
    .end local v20    # "_result":Lio/rong/imlib/model/Message;
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lio/rong/imlib/model/Message;
    goto :goto_5

    .line 195
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v8    # "_arg2":Ljava/lang/String;
    .restart local v9    # "_arg3":Lio/rong/imlib/ILongSendMessageCallback;
    .restart local v20    # "_result":Lio/rong/imlib/model/Message;
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 201
    .end local v5    # "_arg0":Lio/rong/imlib/model/Message;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":Lio/rong/imlib/ILongSendMessageCallback;
    .end local v20    # "_result":Lio/rong/imlib/model/Message;
    :sswitch_d
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 204
    sget-object v4, Lio/rong/imlib/model/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Message;

    .line 210
    .restart local v5    # "_arg0":Lio/rong/imlib/model/Message;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/ILongCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/ILongCallback;

    move-result-object v6

    .line 211
    .local v6, "_arg1":Lio/rong/imlib/ILongCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->sendStatusMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/ILongCallback;)Lio/rong/imlib/model/Message;

    move-result-object v20

    .line 212
    .restart local v20    # "_result":Lio/rong/imlib/model/Message;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    if-eqz v20, :cond_7

    .line 214
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    const/4 v4, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lio/rong/imlib/model/Message;->writeToParcel(Landroid/os/Parcel;I)V

    .line 220
    :goto_8
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 207
    .end local v5    # "_arg0":Lio/rong/imlib/model/Message;
    .end local v6    # "_arg1":Lio/rong/imlib/ILongCallback;
    .end local v20    # "_result":Lio/rong/imlib/model/Message;
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lio/rong/imlib/model/Message;
    goto :goto_7

    .line 218
    .restart local v6    # "_arg1":Lio/rong/imlib/ILongCallback;
    .restart local v20    # "_result":Lio/rong/imlib/model/Message;
    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 224
    .end local v5    # "_arg0":Lio/rong/imlib/model/Message;
    .end local v6    # "_arg1":Lio/rong/imlib/ILongCallback;
    .end local v20    # "_result":Lio/rong/imlib/model/Message;
    :sswitch_e
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 227
    sget-object v4, Lio/rong/imlib/model/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Conversation;

    .line 233
    .local v5, "_arg0":Lio/rong/imlib/model/Conversation;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 234
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->getNewestMessages(Lio/rong/imlib/model/Conversation;I)Ljava/util/List;

    move-result-object v22

    .line 235
    .local v22, "_result":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 237
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 230
    .end local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    .end local v6    # "_arg1":I
    .end local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    :cond_8
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    goto :goto_9

    .line 241
    .end local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    :sswitch_f
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    .line 244
    sget-object v4, Lio/rong/imlib/model/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Conversation;

    .line 250
    .restart local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 252
    .local v6, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 253
    .local v8, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lio/rong/imlib/IHandler$Stub;->getOlderMessages(Lio/rong/imlib/model/Conversation;JI)Ljava/util/List;

    move-result-object v22

    .line 254
    .restart local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 256
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 247
    .end local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    .end local v6    # "_arg1":J
    .end local v8    # "_arg2":I
    .end local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    :cond_9
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    goto :goto_a

    .line 260
    .end local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    :sswitch_10
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 263
    sget-object v4, Lio/rong/imlib/model/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Conversation;

    .line 269
    .restart local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 271
    .restart local v6    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 273
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IResultCallback;

    move-result-object v9

    .local v9, "_arg3":Lio/rong/imlib/IResultCallback;
    move-object/from16 v4, p0

    .line 274
    invoke-virtual/range {v4 .. v9}, Lio/rong/imlib/IHandler$Stub;->getRemoteHistoryMessages(Lio/rong/imlib/model/Conversation;JILio/rong/imlib/IResultCallback;)V

    .line 275
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 266
    .end local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    .end local v6    # "_arg1":J
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Lio/rong/imlib/IResultCallback;
    :cond_a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    goto :goto_b

    .line 280
    .end local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    :sswitch_11
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    .line 283
    sget-object v4, Lio/rong/imlib/model/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Conversation;

    .line 289
    .restart local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 291
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 293
    .local v14, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg3":I
    move-object/from16 v11, p0

    move-object v12, v5

    move-object v13, v6

    move/from16 v16, v9

    .line 294
    invoke-virtual/range {v11 .. v16}, Lio/rong/imlib/IHandler$Stub;->getOlderMessagesByObjectName(Lio/rong/imlib/model/Conversation;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v22

    .line 295
    .restart local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 297
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 286
    .end local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg3":I
    .end local v14    # "_arg2":J
    .end local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    :cond_b
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    goto :goto_c

    .line 301
    .end local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    :sswitch_12
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 304
    .local v5, "_arg0":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->deleteMessage([I)Z

    move-result v20

    .line 305
    .local v20, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    if-eqz v20, :cond_c

    const/4 v4, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 306
    :cond_c
    const/4 v4, 0x0

    goto :goto_d

    .line 311
    .end local v5    # "_arg0":[I
    .end local v20    # "_result":Z
    :sswitch_13
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    .line 314
    sget-object v4, Lio/rong/imlib/model/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Conversation;

    .line 319
    .local v5, "_arg0":Lio/rong/imlib/model/Conversation;
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->clearMessages(Lio/rong/imlib/model/Conversation;)Z

    move-result v20

    .line 320
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    if-eqz v20, :cond_e

    const/4 v4, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 317
    .end local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    .end local v20    # "_result":Z
    :cond_d
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    goto :goto_e

    .line 321
    .restart local v20    # "_result":Z
    :cond_e
    const/4 v4, 0x0

    goto :goto_f

    .line 326
    .end local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    .end local v20    # "_result":Z
    :sswitch_14
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    .line 329
    sget-object v4, Lio/rong/imlib/model/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Conversation;

    .line 334
    .restart local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->clearMessagesUnreadStatus(Lio/rong/imlib/model/Conversation;)Z

    move-result v20

    .line 335
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    if-eqz v20, :cond_10

    const/4 v4, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 332
    .end local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    .end local v20    # "_result":Z
    :cond_f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    goto :goto_10

    .line 336
    .restart local v20    # "_result":Z
    :cond_10
    const/4 v4, 0x0

    goto :goto_11

    .line 341
    .end local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    .end local v20    # "_result":Z
    :sswitch_15
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 345
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 346
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->setMessageExtra(ILjava/lang/String;)Z

    move-result v20

    .line 347
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    if-eqz v20, :cond_11

    const/4 v4, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 348
    :cond_11
    const/4 v4, 0x0

    goto :goto_12

    .line 353
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v20    # "_result":Z
    :sswitch_16
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 357
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 358
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->setMessageReceivedStatus(II)Z

    move-result v20

    .line 359
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    if-eqz v20, :cond_12

    const/4 v4, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 360
    :cond_12
    const/4 v4, 0x0

    goto :goto_13

    .line 365
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v20    # "_result":Z
    :sswitch_17
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 369
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 370
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->setMessageSentStatus(II)Z

    move-result v20

    .line 371
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    if-eqz v20, :cond_13

    const/4 v4, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 372
    :cond_13
    const/4 v4, 0x0

    goto :goto_14

    .line 377
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v20    # "_result":Z
    :sswitch_18
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p0 .. p0}, Lio/rong/imlib/IHandler$Stub;->getConversationList()Ljava/util/List;

    move-result-object v19

    .line 379
    .local v19, "_result":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Conversation;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 381
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 385
    .end local v19    # "_result":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Conversation;>;"
    :sswitch_19
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 388
    .local v5, "_arg0":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->getConversationListByType([I)Ljava/util/List;

    move-result-object v19

    .line 389
    .restart local v19    # "_result":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Conversation;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 391
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 395
    .end local v5    # "_arg0":[I
    .end local v19    # "_result":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Conversation;>;"
    :sswitch_1a
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 399
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 400
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->getConversation(ILjava/lang/String;)Lio/rong/imlib/model/Conversation;

    move-result-object v20

    .line 401
    .local v20, "_result":Lio/rong/imlib/model/Conversation;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    if-eqz v20, :cond_14

    .line 403
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    const/4 v4, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lio/rong/imlib/model/Conversation;->writeToParcel(Landroid/os/Parcel;I)V

    .line 409
    :goto_15
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 407
    :cond_14
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_15

    .line 413
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v20    # "_result":Lio/rong/imlib/model/Conversation;
    :sswitch_1b
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 417
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 418
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->removeConversation(ILjava/lang/String;)Z

    move-result v20

    .line 419
    .local v20, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    if-eqz v20, :cond_15

    const/4 v4, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 420
    :cond_15
    const/4 v4, 0x0

    goto :goto_16

    .line 425
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v20    # "_result":Z
    :sswitch_1c
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16

    .line 428
    sget-object v4, Lio/rong/imlib/model/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Conversation;

    .line 434
    .local v5, "_arg0":Lio/rong/imlib/model/Conversation;
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 435
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->saveConversationDraft(Lio/rong/imlib/model/Conversation;Ljava/lang/String;)Z

    move-result v20

    .line 436
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    if-eqz v20, :cond_17

    const/4 v4, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 431
    .end local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v20    # "_result":Z
    :cond_16
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    goto :goto_17

    .line 437
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v20    # "_result":Z
    :cond_17
    const/4 v4, 0x0

    goto :goto_18

    .line 442
    .end local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v20    # "_result":Z
    :sswitch_1d
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_18

    .line 445
    sget-object v4, Lio/rong/imlib/model/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Conversation;

    .line 450
    .restart local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    :goto_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->getConversationDraft(Lio/rong/imlib/model/Conversation;)Ljava/lang/String;

    move-result-object v20

    .line 451
    .local v20, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 453
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 448
    .end local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    .end local v20    # "_result":Ljava/lang/String;
    :cond_18
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    goto :goto_19

    .line 457
    .end local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    :sswitch_1e
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19

    .line 460
    sget-object v4, Lio/rong/imlib/model/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Conversation;

    .line 465
    .restart local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    :goto_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->cleanConversationDraft(Lio/rong/imlib/model/Conversation;)Z

    move-result v20

    .line 466
    .local v20, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    if-eqz v20, :cond_1a

    const/4 v4, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 463
    .end local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    .end local v20    # "_result":Z
    :cond_19
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    goto :goto_1a

    .line 467
    .restart local v20    # "_result":Z
    :cond_1a
    const/4 v4, 0x0

    goto :goto_1b

    .line 472
    .end local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    .end local v20    # "_result":Z
    :sswitch_1f
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 476
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 478
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/ILongCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/ILongCallback;

    move-result-object v8

    .line 479
    .local v8, "_arg2":Lio/rong/imlib/ILongCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8}, Lio/rong/imlib/IHandler$Stub;->getConversationNotificationStatus(ILjava/lang/String;Lio/rong/imlib/ILongCallback;)V

    .line 480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 485
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Lio/rong/imlib/ILongCallback;
    :sswitch_20
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 489
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 491
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 493
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/ILongCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/ILongCallback;

    move-result-object v9

    .line 494
    .local v9, "_arg3":Lio/rong/imlib/ILongCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8, v9}, Lio/rong/imlib/IHandler$Stub;->setConversationNotificationStatus(ILjava/lang/String;ILio/rong/imlib/ILongCallback;)V

    .line 495
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 500
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Lio/rong/imlib/ILongCallback;
    :sswitch_21
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 504
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 506
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v8, 0x1

    .line 507
    .local v8, "_arg2":Z
    :goto_1c
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8}, Lio/rong/imlib/IHandler$Stub;->setConversationTopStatus(ILjava/lang/String;Z)Z

    move-result v20

    .line 508
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    if-eqz v20, :cond_1c

    const/4 v4, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 506
    .end local v8    # "_arg2":Z
    .end local v20    # "_result":Z
    :cond_1b
    const/4 v8, 0x0

    goto :goto_1c

    .line 509
    .restart local v8    # "_arg2":Z
    .restart local v20    # "_result":Z
    :cond_1c
    const/4 v4, 0x0

    goto :goto_1d

    .line 514
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Z
    .end local v20    # "_result":Z
    :sswitch_22
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d

    .line 517
    sget-object v4, Lio/rong/imlib/model/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Conversation;

    .line 522
    .local v5, "_arg0":Lio/rong/imlib/model/Conversation;
    :goto_1e
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->getConversationUnreadCount(Lio/rong/imlib/model/Conversation;)I

    move-result v20

    .line 523
    .local v20, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 520
    .end local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    .end local v20    # "_result":I
    :cond_1d
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    goto :goto_1e

    .line 529
    .end local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    :sswitch_23
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 532
    .local v5, "_arg0":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->clearConversations([I)Z

    move-result v20

    .line 533
    .local v20, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    if-eqz v20, :cond_1e

    const/4 v4, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 534
    :cond_1e
    const/4 v4, 0x0

    goto :goto_1f

    .line 539
    .end local v5    # "_arg0":[I
    .end local v20    # "_result":Z
    :sswitch_24
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 543
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 545
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v8

    .line 546
    .local v8, "_arg2":Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8}, Lio/rong/imlib/IHandler$Stub;->setNotificationQuietHours(Ljava/lang/String;ILio/rong/imlib/IOperationCallback;)V

    .line 547
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 552
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v8    # "_arg2":Lio/rong/imlib/IOperationCallback;
    :sswitch_25
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v5

    .line 555
    .local v5, "_arg0":Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->removeNotificationQuietHours(Lio/rong/imlib/IOperationCallback;)V

    .line 556
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 561
    .end local v5    # "_arg0":Lio/rong/imlib/IOperationCallback;
    :sswitch_26
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IGetNotificationQuietHoursCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IGetNotificationQuietHoursCallback;

    move-result-object v5

    .line 564
    .local v5, "_arg0":Lio/rong/imlib/IGetNotificationQuietHoursCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->getNotificationQuietHours(Lio/rong/imlib/IGetNotificationQuietHoursCallback;)V

    .line 565
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 570
    .end local v5    # "_arg0":Lio/rong/imlib/IGetNotificationQuietHoursCallback;
    :sswitch_27
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 574
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 576
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 578
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 579
    .local v9, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8, v9}, Lio/rong/imlib/IHandler$Stub;->updateConversationInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    .line 580
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    if-eqz v20, :cond_1f

    const/4 v4, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 582
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 581
    :cond_1f
    const/4 v4, 0x0

    goto :goto_20

    .line 586
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v20    # "_result":Z
    :sswitch_28
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 590
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IResultCallback;

    move-result-object v6

    .line 591
    .local v6, "_arg1":Lio/rong/imlib/IResultCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->getDiscussion(Ljava/lang/String;Lio/rong/imlib/IResultCallback;)V

    .line 592
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 597
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Lio/rong/imlib/IResultCallback;
    :sswitch_29
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 601
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 603
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v8

    .line 604
    .local v8, "_arg2":Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8}, Lio/rong/imlib/IHandler$Stub;->setDiscussionName(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V

    .line 605
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 610
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Lio/rong/imlib/IOperationCallback;
    :sswitch_2a
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 614
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v18

    .line 616
    .local v18, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IResultCallback;

    move-result-object v8

    .line 617
    .local v8, "_arg2":Lio/rong/imlib/IResultCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1, v8}, Lio/rong/imlib/IHandler$Stub;->createDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/IResultCallback;)V

    .line 618
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 623
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg2":Lio/rong/imlib/IResultCallback;
    .end local v18    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2b
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 627
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v18

    .line 629
    .restart local v18    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v8

    .line 630
    .local v8, "_arg2":Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1, v8}, Lio/rong/imlib/IHandler$Stub;->addMemberToDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/IOperationCallback;)V

    .line 631
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 636
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg2":Lio/rong/imlib/IOperationCallback;
    .end local v18    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2c
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 640
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 642
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v8

    .line 643
    .restart local v8    # "_arg2":Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8}, Lio/rong/imlib/IHandler$Stub;->removeDiscussionMember(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V

    .line 644
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 649
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Lio/rong/imlib/IOperationCallback;
    :sswitch_2d
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 653
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v6

    .line 654
    .local v6, "_arg1":Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->quitDiscussion(Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V

    .line 655
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 660
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Lio/rong/imlib/IOperationCallback;
    :sswitch_2e
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    sget-object v4, Lio/rong/imlib/model/Group;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v10

    .line 664
    .local v10, "_arg0":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Group;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v6

    .line 665
    .restart local v6    # "_arg1":Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v6}, Lio/rong/imlib/IHandler$Stub;->syncGroup(Ljava/util/List;Lio/rong/imlib/IOperationCallback;)V

    .line 666
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 667
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 671
    .end local v6    # "_arg1":Lio/rong/imlib/IOperationCallback;
    .end local v10    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Group;>;"
    :sswitch_2f
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 675
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 677
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v8

    .line 678
    .restart local v8    # "_arg2":Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8}, Lio/rong/imlib/IHandler$Stub;->joinGroup(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V

    .line 679
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 684
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Lio/rong/imlib/IOperationCallback;
    :sswitch_30
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 688
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v6

    .line 689
    .local v6, "_arg1":Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->quitGroup(Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V

    .line 690
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 695
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Lio/rong/imlib/IOperationCallback;
    :sswitch_31
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 697
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 699
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 701
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 703
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IResultCallback;

    move-result-object v9

    .line 704
    .local v9, "_arg3":Lio/rong/imlib/IResultCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8, v9}, Lio/rong/imlib/IHandler$Stub;->getChatRoomInfo(Ljava/lang/String;IILio/rong/imlib/IResultCallback;)V

    .line 705
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 710
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Lio/rong/imlib/IResultCallback;
    :sswitch_32
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 714
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 716
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v8

    .line 717
    .local v8, "_arg2":Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8}, Lio/rong/imlib/IHandler$Stub;->reJoinChatRoom(Ljava/lang/String;ILio/rong/imlib/IOperationCallback;)V

    .line 718
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 723
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v8    # "_arg2":Lio/rong/imlib/IOperationCallback;
    :sswitch_33
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 727
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 729
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v8

    .line 730
    .restart local v8    # "_arg2":Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8}, Lio/rong/imlib/IHandler$Stub;->joinChatRoom(Ljava/lang/String;ILio/rong/imlib/IOperationCallback;)V

    .line 731
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 736
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v8    # "_arg2":Lio/rong/imlib/IOperationCallback;
    :sswitch_34
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 740
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 742
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v8

    .line 743
    .restart local v8    # "_arg2":Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8}, Lio/rong/imlib/IHandler$Stub;->joinExistChatRoom(Ljava/lang/String;ILio/rong/imlib/IOperationCallback;)V

    .line 744
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 749
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v8    # "_arg2":Lio/rong/imlib/IOperationCallback;
    :sswitch_35
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 753
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v6

    .line 754
    .local v6, "_arg1":Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->quitChatRoom(Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V

    .line 755
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 760
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Lio/rong/imlib/IOperationCallback;
    :sswitch_36
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 764
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 766
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 768
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IResultCallback;

    move-result-object v9

    .line 769
    .restart local v9    # "_arg3":Lio/rong/imlib/IResultCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8, v9}, Lio/rong/imlib/IHandler$Stub;->searchPublicService(Ljava/lang/String;IILio/rong/imlib/IResultCallback;)V

    .line 770
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 775
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Lio/rong/imlib/IResultCallback;
    :sswitch_37
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 777
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 779
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 781
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_20

    const/4 v8, 0x1

    .line 783
    .local v8, "_arg2":Z
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v9

    .line 784
    .local v9, "_arg3":Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8, v9}, Lio/rong/imlib/IHandler$Stub;->subscribePublicService(Ljava/lang/String;IZLio/rong/imlib/IOperationCallback;)V

    .line 785
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 781
    .end local v8    # "_arg2":Z
    .end local v9    # "_arg3":Lio/rong/imlib/IOperationCallback;
    :cond_20
    const/4 v8, 0x0

    goto :goto_21

    .line 790
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    :sswitch_38
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 794
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 796
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IResultCallback;

    move-result-object v8

    .line 797
    .local v8, "_arg2":Lio/rong/imlib/IResultCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8}, Lio/rong/imlib/IHandler$Stub;->getPublicServiceProfile(Ljava/lang/String;ILio/rong/imlib/IResultCallback;)V

    .line 798
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 803
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v8    # "_arg2":Lio/rong/imlib/IResultCallback;
    :sswitch_39
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 805
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IResultCallback;

    move-result-object v5

    .line 806
    .local v5, "_arg0":Lio/rong/imlib/IResultCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->getPublicServiceList(Lio/rong/imlib/IResultCallback;)V

    .line 807
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 812
    .end local v5    # "_arg0":Lio/rong/imlib/IResultCallback;
    :sswitch_3a
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 814
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 815
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->validateAuth(Ljava/lang/String;)Z

    move-result v20

    .line 816
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    if-eqz v20, :cond_21

    const/4 v4, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 817
    :cond_21
    const/4 v4, 0x0

    goto :goto_22

    .line 822
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v20    # "_result":Z
    :sswitch_3b
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_22

    .line 825
    sget-object v4, Lio/rong/imlib/model/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Conversation;

    .line 831
    .local v5, "_arg0":Lio/rong/imlib/model/Conversation;
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 833
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IUploadCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IUploadCallback;

    move-result-object v8

    .line 834
    .local v8, "_arg2":Lio/rong/imlib/IUploadCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8}, Lio/rong/imlib/IHandler$Stub;->uploadMedia(Lio/rong/imlib/model/Conversation;Ljava/lang/String;Lio/rong/imlib/IUploadCallback;)V

    .line 835
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 828
    .end local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Lio/rong/imlib/IUploadCallback;
    :cond_22
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    goto :goto_23

    .line 840
    .end local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    :sswitch_3c
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_23

    .line 843
    sget-object v4, Lio/rong/imlib/model/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Conversation;

    .line 849
    .restart local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 851
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 853
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IDownloadMediaCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IDownloadMediaCallback;

    move-result-object v9

    .line 854
    .local v9, "_arg3":Lio/rong/imlib/IDownloadMediaCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8, v9}, Lio/rong/imlib/IHandler$Stub;->downloadMedia(Lio/rong/imlib/model/Conversation;ILjava/lang/String;Lio/rong/imlib/IDownloadMediaCallback;)V

    .line 855
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 846
    .end local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    .end local v6    # "_arg1":I
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":Lio/rong/imlib/IDownloadMediaCallback;
    :cond_23
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    goto :goto_24

    .line 860
    .end local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    :sswitch_3d
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 861
    invoke-virtual/range {p0 .. p0}, Lio/rong/imlib/IHandler$Stub;->getDeltaTime()J

    move-result-wide v20

    .line 862
    .local v20, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 863
    move-object/from16 v0, p3

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 864
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 868
    .end local v20    # "_result":J
    :sswitch_3e
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 870
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 872
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 874
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v8

    .line 875
    .local v8, "_arg2":Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8}, Lio/rong/imlib/IHandler$Stub;->setDiscussionInviteStatus(Ljava/lang/String;ILio/rong/imlib/IOperationCallback;)V

    .line 876
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 881
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v8    # "_arg2":Lio/rong/imlib/IOperationCallback;
    :sswitch_3f
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 883
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 885
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v6

    .line 886
    .local v6, "_arg1":Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->addToBlacklist(Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V

    .line 887
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 892
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Lio/rong/imlib/IOperationCallback;
    :sswitch_40
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 896
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v6

    .line 897
    .restart local v6    # "_arg1":Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->removeFromBlacklist(Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V

    .line 898
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 903
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Lio/rong/imlib/IOperationCallback;
    :sswitch_41
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 905
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_24

    .line 906
    sget-object v4, Lio/rong/imlib/model/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Conversation;

    .line 911
    .local v5, "_arg0":Lio/rong/imlib/model/Conversation;
    :goto_25
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->getTextMessageDraft(Lio/rong/imlib/model/Conversation;)Ljava/lang/String;

    move-result-object v20

    .line 912
    .local v20, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 913
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 914
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 909
    .end local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    .end local v20    # "_result":Ljava/lang/String;
    :cond_24
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    goto :goto_25

    .line 918
    .end local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    :sswitch_42
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 920
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_25

    .line 921
    sget-object v4, Lio/rong/imlib/model/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Conversation;

    .line 927
    .restart local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 928
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->saveTextMessageDraft(Lio/rong/imlib/model/Conversation;Ljava/lang/String;)Z

    move-result v20

    .line 929
    .local v20, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    if-eqz v20, :cond_26

    const/4 v4, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 931
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 924
    .end local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v20    # "_result":Z
    :cond_25
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    goto :goto_26

    .line 930
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v20    # "_result":Z
    :cond_26
    const/4 v4, 0x0

    goto :goto_27

    .line 935
    .end local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v20    # "_result":Z
    :sswitch_43
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 937
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_27

    .line 938
    sget-object v4, Lio/rong/imlib/model/Conversation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Conversation;

    .line 943
    .restart local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    :goto_28
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->clearTextMessageDraft(Lio/rong/imlib/model/Conversation;)Z

    move-result v20

    .line 944
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    if-eqz v20, :cond_28

    const/4 v4, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 946
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 941
    .end local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    .end local v20    # "_result":Z
    :cond_27
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    goto :goto_28

    .line 945
    .restart local v20    # "_result":Z
    :cond_28
    const/4 v4, 0x0

    goto :goto_29

    .line 950
    .end local v5    # "_arg0":Lio/rong/imlib/model/Conversation;
    .end local v20    # "_result":Z
    :sswitch_44
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 952
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IStringCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IStringCallback;

    move-result-object v5

    .line 953
    .local v5, "_arg0":Lio/rong/imlib/IStringCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->getBlacklist(Lio/rong/imlib/IStringCallback;)V

    .line 954
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 955
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 959
    .end local v5    # "_arg0":Lio/rong/imlib/IStringCallback;
    :sswitch_45
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 961
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 963
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IIntegerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IIntegerCallback;

    move-result-object v6

    .line 964
    .local v6, "_arg1":Lio/rong/imlib/IIntegerCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->getBlacklistStatus(Ljava/lang/String;Lio/rong/imlib/IIntegerCallback;)V

    .line 965
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 966
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 970
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Lio/rong/imlib/IIntegerCallback;
    :sswitch_46
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 972
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_29

    .line 973
    sget-object v4, Lio/rong/imlib/model/UserData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/UserData;

    .line 979
    .local v5, "_arg0":Lio/rong/imlib/model/UserData;
    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IOperationCallback;

    move-result-object v6

    .line 980
    .local v6, "_arg1":Lio/rong/imlib/IOperationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->setUserData(Lio/rong/imlib/model/UserData;Lio/rong/imlib/IOperationCallback;)V

    .line 981
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 976
    .end local v5    # "_arg0":Lio/rong/imlib/model/UserData;
    .end local v6    # "_arg1":Lio/rong/imlib/IOperationCallback;
    :cond_29
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lio/rong/imlib/model/UserData;
    goto :goto_2a

    .line 986
    .end local v5    # "_arg0":Lio/rong/imlib/model/UserData;
    :sswitch_47
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 988
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 990
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 991
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->setupRealTimeLocation(ILjava/lang/String;)I

    move-result v20

    .line 992
    .local v20, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 993
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 994
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 998
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v20    # "_result":I
    :sswitch_48
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1000
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1002
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1003
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->startRealTimeLocation(ILjava/lang/String;)I

    move-result v20

    .line 1004
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1005
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1006
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1010
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v20    # "_result":I
    :sswitch_49
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1012
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1014
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1015
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->joinRealTimeLocation(ILjava/lang/String;)I

    move-result v20

    .line 1016
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1017
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1018
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1022
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v20    # "_result":I
    :sswitch_4a
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1024
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1026
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1027
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->quitRealTimeLocation(ILjava/lang/String;)V

    .line 1028
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1029
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1033
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_4b
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1035
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1037
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1038
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->getRealTimeLocationParticipants(ILjava/lang/String;)Ljava/util/List;

    move-result-object v23

    .line 1039
    .local v23, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1040
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1041
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1045
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v23    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_4c
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1047
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1049
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1051
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lio/rong/imlib/IRealTimeLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IRealTimeLocationListener;

    move-result-object v8

    .line 1052
    .local v8, "_arg2":Lio/rong/imlib/IRealTimeLocationListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8}, Lio/rong/imlib/IHandler$Stub;->addRealTimeLocationListener(ILjava/lang/String;Lio/rong/imlib/IRealTimeLocationListener;)V

    .line 1053
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1054
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1058
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Lio/rong/imlib/IRealTimeLocationListener;
    :sswitch_4d
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1060
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1062
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1063
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lio/rong/imlib/IHandler$Stub;->getRealTimeLocationCurrentState(ILjava/lang/String;)I

    move-result v20

    .line 1064
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1065
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1066
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1070
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v20    # "_result":I
    :sswitch_4e
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1072
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1074
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1076
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v14

    .line 1078
    .local v14, "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v16

    .local v16, "_arg3":D
    move-object/from16 v11, p0

    move v12, v5

    move-object v13, v6

    .line 1079
    invoke-virtual/range {v11 .. v17}, Lio/rong/imlib/IHandler$Stub;->updateRealTimeLocationStatus(ILjava/lang/String;DD)V

    .line 1080
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1081
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1085
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":D
    .end local v16    # "_arg3":D
    :sswitch_4f
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1087
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1089
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1091
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 1092
    .local v14, "_arg2":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v14, v15}, Lio/rong/imlib/IHandler$Stub;->updateMessageReceiptStatus(Ljava/lang/String;IJ)Z

    move-result v20

    .line 1093
    .local v20, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1094
    if-eqz v20, :cond_2a

    const/4 v4, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1095
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1094
    :cond_2a
    const/4 v4, 0x0

    goto :goto_2b

    .line 1099
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v14    # "_arg2":J
    .end local v20    # "_result":Z
    :sswitch_50
    const-string v4, "io.rong.imlib.IHandler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1102
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lio/rong/imlib/IHandler$Stub;->getSendTimeByMessageId(I)J

    move-result-wide v20

    .line 1103
    .local v20, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1104
    move-object/from16 v0, p3

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1105
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 40
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
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
