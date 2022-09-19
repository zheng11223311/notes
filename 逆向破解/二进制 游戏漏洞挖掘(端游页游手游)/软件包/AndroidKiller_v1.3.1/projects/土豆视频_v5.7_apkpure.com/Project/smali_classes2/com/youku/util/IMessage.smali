.class public interface abstract Lcom/youku/util/IMessage;
.super Ljava/lang/Object;
.source "IMessage.java"


# static fields
.field public static final CHECKED:Ljava/lang/String; = "checked"

.field public static final MESSAGE_CHECKE_FAILED:I = 0xe

.field public static final MESSAGE_CHECKE_SUCCESS:I = 0xd

.field public static final MESSAGE_DELETE_ALL_FAILED:I = 0xa

.field public static final MESSAGE_DELETE_ALL_SUCCESS:I = 0x9

.field public static final MESSAGE_DELETE_ONE_FAILED:I = 0x8

.field public static final MESSAGE_DELETE_ONE_SUCCESS:I = 0x7

.field public static final MESSAGE_LISTOFUSER_FAILED:I = 0x4

.field public static final MESSAGE_LISTOFUSER_SUCCESS:I = 0x3

.field public static final MESSAGE_LIST_FAILED:I = 0x2

.field public static final MESSAGE_LIST_SUCCESS:I = 0x1

.field public static final MESSAGE_SEND_FAILED:I = 0x6

.field public static final MESSAGE_SEND_SUCCESS:I = 0x5

.field public static final MESSAGE_SYSTEM_FAILED:I = 0xc

.field public static final MESSAGE_SYSTEM_SUCCESS:I = 0xb

.field public static final PRIVATE:Ljava/lang/String; = "private"

.field public static final SYSTEM:Ljava/lang/String; = "system"


# virtual methods
.method public abstract deleteMessage(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract deleteMessage(Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/IMessageFinish;)V
.end method

.method public abstract deleteMessages(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract deleteMessages(Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/IMessageFinish;)V
.end method

.method public abstract getCheckedErrorMsg()V
.end method

.method public abstract getCheckedErrorMsg(Lcom/youku/util/IMessageFinish;)V
.end method

.method public abstract getCheckedMessage(I)V
.end method

.method public abstract getCheckedMessage(ILcom/youku/util/IMessageFinish;)V
.end method

.method public abstract getMessageList(I)V
.end method

.method public abstract getMessageList(ILcom/youku/util/IMessageFinish;)V
.end method

.method public abstract getMessagesOfUser(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getMessagesOfUser(Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/IMessageFinish;)V
.end method

.method public abstract getRefreshCount()V
.end method

.method public abstract getRefreshCount(Lcom/youku/util/IMessageFinish;)V
.end method

.method public abstract getSystemMessage()V
.end method

.method public abstract getSystemMessage(Lcom/youku/util/IMessageFinish;)V
.end method

.method public abstract sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/IMessageSendFinish;)V
.end method

.method public abstract updateRefreshCount(Ljava/lang/String;)V
.end method

.method public abstract updateRefreshCount(Ljava/lang/String;Lcom/youku/util/IMessageFinish;)V
.end method
