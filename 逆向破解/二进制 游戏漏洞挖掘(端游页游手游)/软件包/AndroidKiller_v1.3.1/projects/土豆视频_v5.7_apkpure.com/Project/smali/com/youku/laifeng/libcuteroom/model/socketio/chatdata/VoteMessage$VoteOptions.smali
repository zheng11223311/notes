.class public Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage$VoteOptions;
.super Ljava/lang/Object;
.source "VoteMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VoteOptions"
.end annotation


# instance fields
.field private oi:I

.field private pc:I

.field private q:I

.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;


# direct methods
.method public constructor <init>(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;
    .param p2, "oi"    # I
    .param p3, "q"    # I
    .param p4, "pc"    # I

    .prologue
    .line 102
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage$VoteOptions;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput p2, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage$VoteOptions;->oi:I

    .line 104
    iput p3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage$VoteOptions;->q:I

    .line 105
    iput p4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage$VoteOptions;->pc:I

    .line 106
    return-void
.end method


# virtual methods
.method public getOi()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage$VoteOptions;->oi:I

    return v0
.end method

.method public getPc()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage$VoteOptions;->pc:I

    return v0
.end method

.method public getQ()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage$VoteOptions;->q:I

    return v0
.end method
