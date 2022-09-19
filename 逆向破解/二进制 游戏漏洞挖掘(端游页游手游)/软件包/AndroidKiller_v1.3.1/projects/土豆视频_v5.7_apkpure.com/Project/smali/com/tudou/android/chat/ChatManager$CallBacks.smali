.class interface abstract Lcom/tudou/android/chat/ChatManager$CallBacks;
.super Ljava/lang/Object;
.source "ChatManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/android/chat/ChatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "CallBacks"
.end annotation


# virtual methods
.method public abstract onConnectFailed(Z)V
.end method

.method public abstract onConnectSuccess(Ljava/lang/String;Z)V
.end method

.method public abstract onCreateChatRoomFailed(I)V
.end method

.method public abstract onCreateChatRoomSuccess(Ljava/lang/String;)V
.end method

.method public abstract onJoinChatRoomFailed(I)V
.end method

.method public abstract onJoinChatRoomSuccess(Ljava/lang/String;)V
.end method

.method public abstract onPeopleCountChanged(I)V
.end method

.method public abstract onQuitChatRoom()V
.end method

.method public abstract onSendBlankMessage()V
.end method

.method public abstract onUnReadMessage()V
.end method

.method public abstract onVideoMessageClick(Lio/rong/imlib/model/MessageContent;)V
.end method
