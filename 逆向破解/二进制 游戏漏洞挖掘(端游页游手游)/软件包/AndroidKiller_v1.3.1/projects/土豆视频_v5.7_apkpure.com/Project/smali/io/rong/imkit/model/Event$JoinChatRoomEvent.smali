.class public Lio/rong/imkit/model/Event$JoinChatRoomEvent;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JoinChatRoomEvent"
.end annotation


# instance fields
.field chatRoomId:Ljava/lang/String;

.field defMessageCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "chatRoomId"    # Ljava/lang/String;
    .param p2, "defMessageCount"    # I

    .prologue
    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    iput-object p1, p0, Lio/rong/imkit/model/Event$JoinChatRoomEvent;->chatRoomId:Ljava/lang/String;

    .line 448
    iput p2, p0, Lio/rong/imkit/model/Event$JoinChatRoomEvent;->defMessageCount:I

    .line 449
    return-void
.end method


# virtual methods
.method public getChatRoomId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lio/rong/imkit/model/Event$JoinChatRoomEvent;->chatRoomId:Ljava/lang/String;

    return-object v0
.end method

.method public getDefMessageCount()I
    .locals 1

    .prologue
    .line 460
    iget v0, p0, Lio/rong/imkit/model/Event$JoinChatRoomEvent;->defMessageCount:I

    return v0
.end method

.method public setChatRoomId(Ljava/lang/String;)V
    .locals 0
    .param p1, "chatRoomId"    # Ljava/lang/String;

    .prologue
    .line 456
    iput-object p1, p0, Lio/rong/imkit/model/Event$JoinChatRoomEvent;->chatRoomId:Ljava/lang/String;

    .line 457
    return-void
.end method

.method public setDefMessageCount(I)V
    .locals 0
    .param p1, "defMessageCount"    # I

    .prologue
    .line 464
    iput p1, p0, Lio/rong/imkit/model/Event$JoinChatRoomEvent;->defMessageCount:I

    .line 465
    return-void
.end method
